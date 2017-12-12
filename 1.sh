#!/bin/sh
SQLPLUS_CMD="/ as sysdba";
sqlplus -s "$SQLPLUS_CMD" << EOF
set lines 300 pages 50000;
set underline =;
set colsep |;

Column "Total/G" for 99,999,999.99
Column "Free/G" for 99,999,999.99
Column "Total/M" for 99,999,999.99
Column "Used/M" for 99,999,999.99
Column "Free/M" for 99,999,999.99
Column "Max/M" for 99,999,999.99
Column "Max_Free/M" for 99,999,999.99
Column Type Format A10;
Column C_Date Format A15;
Column Tablespace Format A20;
Column Files Format 99999999;
Column Used_Pct Heading Used_Pct% Format 999;
Column Max_Free_Pct Heading Max|Free_Pct% Format 999;
Column Force_Logging Heading Force_Log Format A10;
Column Extent_Management Heading Ext_Mgt Format A15;
Column Segment_Space_Management Heading Seg_Mgt Format A15;

Column Retention Format A15;
Break On Type Skip 2;
Compute Count Of Tablespace On Type;
Compute Sum Label "Sum_Size" Of Files "Total/G" "Used/G" "Free/G" "Total/M" "Used/M" "Free/M" "Max/M" "Max_Free/M"  On Type;

Select 'permanent' As Type,To_Char(Sysdate,'YY-MM-DD') As C_Date,T2.Tname As Tablespace,--Files,
Round((1-(Nvl(T1.Free,0)/T2.Total))*100,0) As Used_Pct,
Round(T2.Total,2) "Total/G",Round(T2.Total-Nvl(T1.Free,0),2) "Used/G",Round(Nvl(T1.Free,0),2) "Free/G",
Round(T2.Total*1024,2) "Total/M",Round(T2.Total*1024-Nvl(T1.Free*1024,0),2) "Used/M",Round(Nvl(T1.Free*1024,0),2) "Free/M",Round(T2.Max*1024,2) "Max/M",Round((T2.Max-(T2.Total-Nvl(T1.Free,0)))*1024,2) "Max_Free/M",
Round(100-(((T2.Total-Nvl(T1.Free,0)))/T2.Max)*100,0) As Max_Free_Pct,
Dt.Bigfile,Dt.Status--,Dt.Force_Logging,Dt.Retention,Dt.Extent_Management,Dt.Segment_Space_Management
From
  ( Select A.Tablespace_Name As Tname,Sum(Nvl(A.Bytes,0))/1024/1024/1024 Free
    From Dba_Free_Space A Group By A.Tablespace_Name ) T1,
  ( Select B.Tablespace_Name Tname,Sum(B.Bytes)/1024/1024/1024 Total,Count(File_Id) As Files,sum(decode(b.maxbytes,0,b.bytes,maxbytes))/1024/1024/1024 Max
    From Dba_Data_Files B Group By B.Tablespace_Name ) T2,
  Dba_Tablespaces Dt
  Where T2.Tname=Dt.Tablespace_Name And T2.Tname=T1.Tname(+)
--and dt.tablespace_name in ('USER_DATA','CIRCSYS','BJPT_DATA')
Union All
Select 'temporary' As Type,To_Char(Sysdate,'YY-MM-DD') As C_Date,T4.Tablespace_Name As Tablespace,--Files,
Nvl(Used_Size,0)/Total_Size As Used_Pct,
Round(Total_Size/1024,2) "Total/G",Round(Nvl(Used_Size/1024,0),2) "Used/G", Round( (Total_Size/1024-Nvl(Used_Size/1024,0)),2) "Free/G",
Round(Total_Size,2) "Total/M",Round(Nvl(Used_Size,0),2) "Used/M", Round( (Total_Size-Nvl(Used_Size,0)),2) "Free/M",Round(Max*1024,2) "Max/M",Round((Max-Used_Size)*1024,2) "Max_Free/M",
Round(100-(Used_Size/Max)*100,0) As Max_Free_Pct,
Dt.Bigfile,Dt.Status--,Dt.Force_Logging,Dt.Retention,Dt.Extent_Management,Dt.Segment_Space_Management
From
  ( --You cannot specify nonstandard block sizes for a temporary tablespace or if you intend to assign this tablespace as the temporary tablespace for any users.
    Select Tablespace,Sum(Blocks)*(Select Value/1024 From V\$Parameter Where Name='db_block_size')/1024 As Used_Size
    From V\$Tempseg_Usage Group By Tablespace ) T3,
  ( Select Tablespace_Name,Sum(Bytes)/1024/1024 As Total_Size,Count(File_Id) As Files,sum(maxbytes)/1024/1024/1024 Max
    From Dba_Temp_Files Group By Tablespace_Name ) T4,
  Dba_Tablespaces Dt
  Where T4.Tablespace_Name=Dt.Tablespace_Name And T4.Tablespace_Name=T3.Tablespace(+)
Order By Type,4 Desc;
exit;
EOF

