#!/bin/bsh

#-------------------------------------------------------------------------------
#Modifed By : Ho Sze Leung
#Mod. Log   :	20140611
#Mod. Desc  : Connect to Regional Controller server and upload report
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#Modifed By : Ho Sze Leung
#Mod. Log   :	20140703
#Mod. Desc  : Email out when sftp error ocurr
#-------------------------------------------------------------------------------

#Configuration

PrivateKey="/tech/casreport/.ssh/pp_rsa"
RemoteHost="10.128.30.28"
RemoteID="ifstrftp"
SourceFolder="/tech/casreport/persis_s"
DestinationFolder="Sales_Feed/CN"
BackupFolder="/tech/casreport/persis_b"
MthRpt="CN_CAS_APE_SC*.csv"
QtrRpt="CN_CAS_APE_SC*.txt"
KeepRptAfterFTP="Y"
LogFile="/tech/casreport/sc_sftp.log"
FTPBatchFile="/tech/casreport/sc_sftp_batch.tmp"
mTo="north_ma@manulife-sinochem.com"
mCC="sze_leung_ho@manulife.com"
mSub="Sales Cube feed sFTP failed(Testing)"
mBodyFile="/tech/casreport/PremPersistError.txt"

#Procedure
echo '\n'"`date`: Start." >> $LogFile
# In case job is run under different user like root.  Let everyone else read the log file.
chmod -f 744 $LogFile

echo "`date`: Check feed existance." >> $LogFile
test -f $SourceFolder/$MthRpt
MthRptChk=$?
test -f $SourceFolder/$QtrRpt
QtrRptChk=$?

if [ "$MthRptChk" -eq "0" ]
then
	echo "`date`: Data and Control file found." >> $LogFile

	echo "cd "$DestinationFolder > $FTPBatchFile
	echo "put "$MthRpt >> $FTPBatchFile
	echo "quit" >> $FTPBatchFile

	cd $SourceFolder
	echo "`date`: Start sftp transfer." >> $LogFile
	sftp -i $PrivateKey -oPasswordAuthentication=no -oStrictHostKeyChecking=no -b $FTPBatchFile $RemoteID@$RemoteHost >>$LogFile 2>&1  

	if [ $? != 0 ] 
	then
		mail -s "$mSub" -c "$mCC" "$mTo" < $mBodyFile
	else
		echo "`date`: Data and control file transfer completed." >> $LogFile
		if [ "$KeepRptAfterFTP" -eq "Y" ] || [ "$KeepRptAfterFTP" -eq "y" ] 
		then
			mv $MthRpt $BackupFolder
		else
			rm $MthRpt
		fi
	fi

	rm $FTPBatchFile
else
	echo "`date`: No data and control file for transfer." >> $LogFile
fi
	
if [ "$QtrRptChk" -eq "0" ]
then
	echo "`date`: Success file found." >> $LogFile

	echo "cd "$DestinationFolder > $FTPBatchFile
	echo "put "$QtrRpt >> $FTPBatchFile
	echo "quit" >> $FTPBatchFile

	cd $SourceFolder
	echo "`date`: Start sftp transfer." >> $LogFile
	sftp -i $PrivateKey -oPasswordAuthentication=no -oStrictHostKeyChecking=no -b $FTPBatchFile $RemoteID@$RemoteHost >>$LogFile 2>&1  

	if [ $? != 0 ] 
	then
		mail -s "$mSub" -c "$mCC" "$mTo" < $mBodyFile
	else
		echo "`date`: Success file transfer completed." >> $LogFile
		if [ "$KeepRptAfterFTP" -eq "Y" ] || [ "$KeepRptAfterFTP" -eq "y" ] 
		then
			mv $QtrRpt $BackupFolder
		else
			rm $QtrRpt
		fi
	fi

	rm $FTPBatchFile
else
	echo "`date`: No Success file for transfer." >> $LogFile
fi
