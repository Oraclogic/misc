set linesize 200
set pagesize 1000
col event for a45
col module for a15
col machine for a30

select "SID",
  seq#,
  sql_id,
  "EVENT",
  --"MODULE",
  "MACHINE", username
  from v$session vs
  where status = 'ACTIVE'
  and username<>'SYS'
  order by vs.EVENT;

SELECT 'Y'
  FROM TPLAN_DPND_RULES
 WHERE DPND_RULE = 'CC04'
  AND ((:B4 LIKE SUBJ_PLAN_CODE AND :B3 LIKE SUBJ_VERS_NUM AND
  :B2 LIKE OBJ_PLAN_CODE AND :B1 LIKE OBJ_VERS_NUM) OR
  (:B4 LIKE OBJ_PLAN_CODE AND :B3 LIKE OBJ_VERS_NUM AND
  :B2 LIKE SUBJ_PLAN_CODE AND :B1 LIKE SUBJ_VERS_NUM));
create index PLAN_DPND_RULE_IDX1 on TPLAN_DPND_RULES (SUBJ_PLAN_CODE, SUBJ_VERS_NUM, SUBJ_PLAN_CODE_TYP, DPND_RULE, OBJ_PLAN_CODE, OBJ_VERS_NUM, OBJ_PLAN_CODE_TYP)
  tablespace CAS_I

  d1gu4r7dmxvc3 gvd91gg8x0yaj

2014/6/23 10:15:54
nohup impdp \'/ as sysdba\' DIRECTORY=DATA_PUMP_DIR_UAT DUMPFILE=CAS%U_20140620_093513.expdp.dmp LOGFILE=CAS_20140623_CASCTRL.impdp.log PARALLEL=8 TABLE_EXISTS_ACTION=REPLACE EXCLUDE=STATISTICS,schema:\" in \(\'SYS\',\'SYSTEM\',\'OUTLN\',\'DIP\',\'DMSYS\',\'TSMSYS\',\'DBSNMP\',\'ORACLE_OCM\',\'WMSYS\',\'EXFSYS\',\'CTXSYS\',\'XDB\',\'SYSMAN\',\'OLAPSYS\',\'ORDSYS\',\'ORDPLUGINS\',\'SI_INFORMTN_SCHEMA\',\'MDSYS\',\'MDDATA\',\'MGMT_VIEW\',\'SCOTT\'\)\" &
'
s20140036

./iam_oracle_extract.ksh -customer MSL -privIDs
nohup ./iam_oracle_extract.ksh -customer MSL -alluserIDs &

2014/6/27 10:46:39
create tablespace EAPS_I datafile '/data01/CAS_instance/db/CAS/EAPS_I_01.dbf' size 8G autoextend on next 500M;

2014/6/30 9:31:28
audit:
select user_id,USERNAME, ACCOUNT_STATUS
  from dba_users
 where user_id < 100
  and username not in ('SYS', 'SYSTEM', 'BSNMP', 'OUTLN') order by user_id;

set linesize 200

select GRANTEE,PRIVILEGE
--,'revoke '||privilege||' from '||grantee||';' sql
  from dba_sys_privs
 where privilege IN ('CREATE PUBLIC DATABASE LINK', 'CREATE DATABASE LINK')
 AND GRANTEE<>'DBA';

with rl as
 (select GRANTEE,
  PRIVILEGE,
  'revoke ' || privilege || ' from ' || grantee || ';' sql
  from dba_sys_privs
  where privilege IN
  ('CREATE PUBLIC DATABASE LINK', 'CREATE DATABASE LINK')
  AND GRANTEE <> 'DBA')
select granted_role,count(1)
  from dba_role_privs
 where granted_role in (select grantee from rl)
 group by granted_role;

audit session by system whenever not successful;
audit create public database link;
audit create public synonym;
audit create role;
audit create user;
audit create session by session whenever not successful;

--audit the following activities performed by user with DBA rights:
select * from dba_role_privs where granted_role = 'DBA'
audit update table,insert table,grant table,delete table,alter table,execute procedure by '';
audit all ;
audit all privileges;

select *
  from dba_profiles
 where resource_name in ('PASSWORD_REUSE_MAX', 'PASSWORD_REUSE_TIME');

pnSRh27G
mB2M6g4y
nWKU54BS
7uvT6ShK
HFT29N9r

Y9bTJM6Q

begin
drop type CAS_TYPE_PT_WRK_BENCH_TAB;
end;
/

--View process of memory usage for AIX
ps gv|head -n 1;ps gv| grep oracle |egrep -v "RSS"|sort +6b -7 -n -r

ps gv|head -n 1;ps gv |egrep -v "RSS"|sort +6b -7 -n

find . -name "*trc" -mtime +7 -exec rm -f {} \;

2014/7/29 13:35:32
--exec dbms_stats.set_index_stats(ownname => 'CAS', indname => 'I_POL_TERR_IDX', numrows =>1047300, numdist => 51, clstfct => 315259, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'CAS', indname => 'I_POL_TERR_IDX', numrows =>10473, numdist => 7300, clstfct => 7300, no_invalidate => false);

select name,data_space_id,size/128 [文件大小(M)],
fileproperty(name,'SpaceUsed')/128 [以用空间(M)],
size/128-fileproperty(name,'SpaceUsed')/128 [剩余空间(M)],
fileproperty(name,'SpaceUsed')/size*100 [使用率(%)],
max_size/128 [max_size],growth,is_percent_growth,physical_name from sys.database_files a

go

2014/8/4 14:22:01
run {
allocate channel ch00 type 'sbt_tape';
allocate channel ch01 type 'sbt_tape';
send 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDRNBU01';
restore databasde;
release channel ch00;
release channel ch01;
}

2122395847
2122396003

2014/8/14 20:21:47
Eapprove performance SQL:
4guk1z22d2ps0

2014/8/26 13:23:13
sun performance sql after upgrade

SQL：
SELECT SUM(-J1.AMOUNT)
  FROM SALFLDGML J1, SSRFACC J1CA
 WHERE (J1CA.SUN_DB = 'ML' AND J1CA.ACCNT_CODE = J1.ACCNT_CODE)
  AND 1 = 1
  AND NOT ('A' like '%Z%' AND J1.JRNAL_SRCE IN ('B/F', 'CLRDN') AND
  J1.JRNAL_NO = 0)
  AND J1.JRNAL_NO <= 0110536
  AND DECODE(1, 1, 'A', J1.ACCNT_CODE) = N'A'
  AND J1.ACCNT_CODE = N'872001'
  AND J1.PERIOD BETWEEN 1996001 AND 2014007
  AND J1.ANAL_T0 = N'0043'
  AND J1.ANAL_T2 = N'01'
  AND J1.ANAL_T5 = N'T100018'
  AND J1.ANAL_T6 BETWEEN N'22D' AND N'22Y'

*****************************************************************************
create index SUN.SAL7LDGML on SUN.SALFLDGML (to_nchar(ANAL_T5))
  tablespace USERS parallel 4;
alter index SUN.SAL7LDGML noparallel;

exec dbms_stats.gather_table_stats('sun','SALFLDGML',cascade=>true);
*****************************************************************************

exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL7LDGML', numrows =>22347125, numdist => 44204, clstfct => 7748909, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL7LDGML', numrows =>20907948, numdist => 20907948, clstfct => 20907948, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL1LDGML', numrows =>20545407, numdist => 10545407, clstfct => 20545407, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL2LDGML', numrows =>21498247, numdist => 21068824, clstfct => 9164432, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL3LDGML', numrows =>21078098, numdist => 21078098, clstfct => 7312106, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL4LDGML', numrows =>20757613, numdist => 128464, clstfct => 1387565, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL5LDGML', numrows =>20428826, numdist => 22247523, clstfct => 22247523, no_invalidate => false);
exec dbms_stats.set_index_stats(ownname => 'SUN', indname => 'SAL6LDGML', numrows =>20490467, numdist => 419546, clstfct => 1666263, no_invalidate => false);

2014/8/29 8:34:48
WARNING: Heavy swapping observed on system in last 5 mins.
pct of memory swapped in [24.55%] pct of memory swapped out [0.04%].
Please make sure there is no memory pressure and the SGA and PGA
are configured correctly. Look at DBRM trace file for more details.

2014/9/3 14:57:15
dbsync4.gildata.com 8080 --70316

2014/9/4 13:51:47
UAT:
Sep 6 - UAT04-UAT05 after batch

DEV:
Aug 27 - DEV02
Sep 10 - DEV06 (will first reload with 20140905 after batch dump at Sep 9)
Sep 15 - DEV01
Sep 16 - DEV03
Sep 17 - DEV04

DEV05 will still remain 10g version until Oct 03 release for 10g supporting.

2014/12/18 14:09:12

exp cas/cas201309db02@10.136.1.105:1527/dev06 file=c:\cas_search\dev06.dmp owner=kd_com,kd_sale,kd_his,kd_bank,kfcs
imp cas/deccas032014fatca@uat03 file=c:\cas_search\dev06.dmp log=c:\cas_search\dev06.imp.log full=y

exp kd_sale/kd_sale@uat03 file=c:\cas_search\kd_sale.dmp tables='H_APP_PAYMENT'

exp.par:
file=
tables=('cas.tfatca_scan_address_log',
'cas.tclient_fatca_info',
'cas.tpolicy_fatca_info',
'cas.tclient_fatca_info_trace',
'cas.tpolicy_fatca_info_trace',
'cas.tfatca_scan_log',
'cas.tfatca_scan_client',
'cas.tfatca_scan_policy')
feedback=100000
buffer=10240

set linesize 200
col sql_statement for a80
alter session set nls_date_Format="yyyy-mm-dd hh24:mi:ss";
SELECT USERNAME,
  ACCOUNT_STATUS,
  LOCK_DATE,
  'alter user ' || username || ' account unlock;' sql_statement
  FROM DBA_USERS
 WHERE USERNAME IN ('SIT_EAPPROVAL_RECEIPT',
  'SIT_EAPPROVAL_MAIN',
  'SIT_EAPPROVAL_RPT',
  'SIT_DCI_MAIN',
  'ADMIN',
  'MSLSAT')
 ORDER BY ACCOUNT_STATUS

--CAS batch最后时间
alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
 select max(crr_trxn_dt) from cas.tcrrs;
--CAS 系统时间
 select get_cas_sys_dt from dual

2015/1/30 11:45:37
imp kd_bank/kd_bank001@uat02 file=E:\zf\Project\MF\20150228_sale_bank1.dmp log= E:\zf\Project\MF\20150228_sale_bank1.imp.log
imp kd_com/kd_com001@uat02 file=E:\zf\Project\MF\20150228_sale_com1.dmp log= E:\zf\Project\MF\20150228_sale_com1.imp.log
imp kd_his/kd_his001@uat02 file=E:\zf\Project\MF\20150228_sale_his1.dmp log= E:\zf\Project\MF\20150228_sale_his1.imp.log
imp kd_sale/kd_sale001@uat02 file=E:\zf\Project\MF\20150228_sale1.dmp log= E:\zf\Project\MF\20150228_sale1.imp.log

2015/2/3 10:40:46

RECOVER DATABASE USING BACKUP CONTROLFILE until cancel;

-- Database can now be opened zeroing the online logs.
ALTER DATABASE OPEN RESETLOGS;

-- Commands to add tempfiles to temporary tablespaces.
-- Online tempfiles have complete space information.
-- Other tempfiles may require adjustment.
ALTER TABLESPACE TEMP ADD TEMPFILE '/data01/CAS_instance/db/CAS/temp_01.dbf' REUSE;
ALTER TABLESPACE IBMTEMP_TBS ADD TEMPFILE '/data01/CAS_instance/db/CAS/ibmtemp.data1' REUSE;
ALTER TABLESPACE TEMPORARY_DATA ADD TEMPFILE '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' REUSE;
-- End of tempfile additions.
--

 alter system set "_allow_resetlogs_corruption"=true scope=spfile;

2015/3/17 10:29:47
 --CAS权限
  select a.user_id
  ,b.*
  from vuser_menus a
  ,tapp_menus b
  where a.user_id = 'WSAL'
  and a.app_cd = b.app_cd
  and a.menu_cd = b.menu_cd

2015/3/26 16:41:34
CREATE USER "ACCU1411" IDENTIFIED BY VALUES ACCU1411
  DEFAULT TABLESPACE "ACCU"
  TEMPORARY TABLESPACE "TEMP";
grant connect,resource to accu1411;

2015/4/2 10:46:00

grant execute on ams.ams_get_iss_agt_cnt to universal
2015/4/15 11:11:55
iEDMS查询用户登录次数
select * from dms.ai015usm

2015/4/17 15:07:41
export NLS_LANG=AMERICAN_AMERICA.ZHS16GBK
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=ACCU1401_1405_1310_1311.expdp.dmp logfile=ACCU1401_1405_1311.exp.log schemas='ACCU1310','ACCU1311','ACCU1401','ACCU1402','ACCU1403','ACCU1404','ACCU1405'
'
expdp \'/ as sysdba\' directory=DMP dumpfile=ACCU1406_1502_1312.expdp.dmp logfile=ACCU1406_1502_1312.exp.log schemas='ACCU1312','ACCU1406','ACCU1407','ACCU1408','ACCU1409','ACCU1410','ACCU1411','ACCU1412','ACCU1501','ACCU1502'
'
2015/4/17 20:58:02
select 'alter database datafile ' || file_id || ' offline;',
  'cp ' || file_name || ' ' ||
  REPLACE(replace(file_name, 'DEV04', 'DEV02'), 'DEV02/', ''),
  'alter database rename file ''' || file_name || ''' to ''' ||
  REPLACE(replace(file_name, 'DEV04', 'DEV02'), 'DEV02/', '') || ''';',
  'alter database datafile ' || file_id || ' oNline;'
  from dba_data_files
 where file_name like '%DEV04%'

alter database datafile 83 offline;
alter database datafile 84 offline;
alter database datafile 85 offline;
alter database datafile 86 offline;

cp /data01/DEV04_instance/db/DEV02/GFS_V3_02.dbf /data01/DEV02_instance/db/GFS_V3_02.dbf
cp /data01/DEV04_instance/db/DEV02/APSCFG_02.dbf /data01/DEV02_instance/db/APSCFG_02.dbf
cp /data01/DEV04_instance/db/DEV02/KTS_KD_SALE01.DBF /data01/DEV02_instance/db/KTS_KD_SALE01.DBF
cp /data01/DEV04_instance/db/DEV02/AMS_03.dbf /data01/DEV02_instance/db/AMS_03.dbf

alter database rename file '/data01/DEV04_instance/db/DEV02/GFS_V3_02.dbf' to '/data01/DEV02_instance/db/GFS_V3_02.dbf';
alter database rename file '/data01/DEV04_instance/db/DEV02/APSCFG_02.dbf' to '/data01/DEV02_instance/db/APSCFG_02.dbf';
alter database rename file '/data01/DEV04_instance/db/DEV02/KTS_KD_SALE01.DBF' to '/data01/DEV02_instance/db/KTS_KD_SALE02.DBF';
alter database rename file '/data01/DEV04_instance/db/DEV02/AMS_03.dbf' to '/data01/DEV02_instance/db/AMS_03.dbf';

alter database datafile 83 oNline;
alter database datafile 84 oNline;
alter database datafile 85 oNline;
alter database datafile 86 oNline;

select 'alter database datafile ' || file_id || ' offline for drop ;'
  from dba_data_files
 where file_name like '%DEV04%'

 2015/4/19 13:53:54
 impdp \'/ as sysdba\' directory=dmp dumpfile=CAS%U_20150416_111321.expdp.dmp schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs table_exists_action=replace
'
 2015/4/22 15:56:10
 -- T-1自动启动脚本
export ORACLE_HOME=/tech/oracle/product/11.2.0.4/dbhome_1
export LIBPATH=$ORACLE_HOME/lib
export PATH=/usr/bin:/etc:/usr/sbin:/usr/ucb:/usr/bin/X11:/sbin:/usr/java5/jre/bin:/usr/java5/bin:/opt/soe/local/bin:/opt/soe/local/sbin
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=sun
PW=`sqlplus -s / as sysdba << EOF
SET TERMOUT OFF
SET ECHO OFF
SET PAGESIZE 0
SELECT * FROM TCAS;
EXIT;
EOF`
export ORACLE_SID=TCAS
sqlplus -s / as sysdba << EOF
startup mount;
alter database noarchivelog;
shutdown IMMEDIATE;
startup
alter user cas identified by $PW;
exit;
EOF

2015/5/26 16:30:13
--查询TX锁各会话等待时间
select trunc(sample_time) LOG_TIME,b.username, round(sum(time_waited) / 1000000, 2) time_waited
  from v$active_session_history a ,dba_users b
 where sample_time > trunc(sysdate) - 1 / 24
  and event = 'enq: TX - row lock contention'
  and a.USER_ID=b.user_id
 group by trunc(sample_time),b.username

2015/5/27 14:36:04
--查询表外键字段
select a.owner,a.table_name,a.constraint_name,a.constraint_type,b.table_name referenced_table_name,b.column_name referenced_column_name
 from dba_constraints a,dba_cons_columns b where a.table_name = '&TABLE_NAME'
and constraint_type='R'
and a.r_constraint_name=b.constraint_name；

2015/6/3 14:24:03

when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat"} {
  pool Pool_WX
}
}

2015/6/11 17:01:49
 expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_20150611.expdp.dmp LOGFILE=MF_DATA_20150611.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl
 '
 impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_20150611.expdp.dmp schemas=kd_sale REMAP_SCHEMA=kd_sale:kd_sale_test
 '
 impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_20150611.expdp.dmp schemas=kfcs REMAP_SCHEMA=kfcs:kfcs_test table_exists_action=truncate EXCLUDE=view
'
2015/6/17 16:06:15
 imp zhoufeng/aq1zhqdc@uat05 file=\\10.136.3.73\data\databackup\dx\20150609_sale_bank1.dmp log=c:\cas_search\20150609_sale_bank1.log fromuser=kd_bank touser=kd_bank_test
 imp zhoufeng/aq1zhqdc@uat05 file=\\10.136.3.73\data\databackup\dx\20150609_sale_com1.dmp log=c:\cas_search\20150609_sale_com1.log fromuser=kd_com touser=kd_com_test
 imp zhoufeng/aq1zhqdc@uat05 file=\\10.136.3.73\data\databackup\dx\20150609_sale_his1.dmp log=c:\cas_search\20150609_sale_his1.log fromuser=kd_his touser=kd_his_test
 imp zhoufeng/aq1zhqdc@uat05 file=\\10.136.3.73\data\databackup\dx\20150609_sale1.dmp log=c:\cas_search\20150609_sale1.log fromuser=kd_sale touser=kd_sale_test

2015/6/18 9:27:51
 impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=CAS%U_20150617_173804.expdp.dmp tables=kd_sale.sys_flowchart table_exists_action=replace
 '
 imp kd_sale/kd_sale_001@cas_test file=\\10.136.3.73\data\databackup\dx\20150617_sale1.dmp log=c:\cas_search\20150617_sale1.log fromuser=kd_sale touser=kd_sale tables=sys_flowchart

2015/6/19 16:31:00
UAT04 BACKUP
export ORACLE_HOME=UAT04
nohup expdp \'/ as sysdba\' directory=TMP_DATA_PUMP_DIR dumpfile=UAT04_%U_20150619.expdp.dmp logfile=UAT04_20150619.expdp.log COMPRESSION=data_only parallel=8 full=y &

2015/6/24 15:20:19
impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=sun%U_20150624_120001.expdp.dmp logfile=sun20150624_120001.impdp.log parallel=2 SCHEMAS=JYDB
'
2015/6/26 18:47:37
 expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MFBAK_UAT05_0626.expdp.dmp LOGFILE=MFBAK_UAT05_0626.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl,kd_sale_test,kd_his_test,kd_com_test,kd_bank_test,kfcs_test,mf_msl_test
'
2015/6/29 10:52:22
 impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MFBAK_UAT05_0626.expdp.dmp LOGFILE=MFBAK_UAT05_0626.impdp.log table_exists_action=replace
'
2015/6/29 13:42:56

create tablespace DAP datafile '/data01/UAT03_instance/db/DAP_01.dbf' size 1G autoextend on;
create tablespace DAP_I datafile '/data01/UAT03_instance/db/DAP_I_01.dbf' size 1G autoextend on;

create user DAP
 identified by casdap2015
 default tablespace DAP
 temporary tablespace TEMPORARY_DATA
 profile GENERAL_PROFILE;
grant CONNECT to DAP;
grant CREATE PUBLIC SYNONYM to DAP;
grant DROP PUBLIC SYNONYM to DAP;
grant RESOURCE to DAP;
grant UNLIMITED TABLESPACE to DAP;

2015/6/30 15:57:06
create or replace directory DATA_PUMP_DIR as '/data01/CAS_instance/db/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);'`

export datef=20150803_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
'
2015/7/1 8:24:05
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"

2015/7/1 20:19:43
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
}

-------------------------------

when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
}

2015/7/7 11:44:50
mkdir /opt/IBM/ITM_ORA/
./install.sh
cd /opt/IBM/ITM_ORA/aix526/rz/bin/

export ORACLE_HOME=/tech/oracle/product/11.2.0/11204/dbhome_1
export LIBPATH=$ORACLE_HOME/lib
export ORACLE_SID=CAS
$ORACLE_HOME/bin/sqlplus / as sysdba @krzgrant.sql IBMITM /opt/IBM/ITM_ORA/tmp
cd /opt/IBM/ITM_ORA/bin
./itmcmd config -A rz

//10.136.1.109:1525/cas

./itmcmd agent -o CAS start rz
./itmcmd agent -o sun start rz
./itmcmd agent -o Eapprove start rz

./itmcmd agent -o UAT02 stop rz

2015/7/7 16:36:18
alter database datafile '/data01/CAS_instance/db/CAS/CCNT_01.dbf' resize 20G;

2015/7/9 13:16:04
GRANT ALL ON eaps.tap_img_category TO cas;
GRANT ALL ON eaps.tap_img_headers TO cas;
GRANT ALL ON eaps.tap_img_details TO cas;

2015/7/9 14:05:18
cd /backup/util/oracle/URT
impdp \'/ as sysdba\' directory=dmp dumpfile=ACCU1406_1502_1312.expdp.dmp schemas=accu1312 exclude=index
s @dev01_acru_reload 1312 accu1312
'
./dev01_acru_reload.sh ACCU1401_1405_1310_1311.expdp.dmp accu1311 1311

2015/7/13 9:25:24
chuser groups=oinstall,dba zhoufeng

2015/7/16 21:05:22
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
}

2015/7/28 15:50:21
create tablespace DAP datafile '/data01/CAS_instance/db/CAS/DAP_01.dbf' size 1G autoextend on;
create tablespace DAP_I datafile '/data01/CAS_instance/db/CAS/DAP_I_01.dbf' size 1G autoextend on;

create user DAP
 identified by casdap2015
 default tablespace DAP
 temporary tablespace TEMPORARY_DATA
 profile GENERAL_PROFILE;
grant CONNECT to DAP;
grant CREATE PUBLIC SYNONYM to DAP;
grant DROP PUBLIC SYNONYM to DAP;
grant RESOURCE to DAP;
grant UNLIMITED TABLESPACE to DAP;

2015/8/1 19:56:54
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
}


---------------------

2015/8/1 23:37:38

export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);`
export datef=20150801_afterrelease
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
'
2015/8/2 9:34:38
--cas ctrl
create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';

expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=tglh_feed_log_dtl.expdp.dmp logfile=tglh_feed_log_dtl.expdp.log tables=glh.tglh_feed_log_dtl
--cas
impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=tglh_feed_log_dtl.expdp.dmp logfile=tglh_feed_log_dtl.impdp.log tables=glh.tglh_feed_log_dtl table_exists_action=truncate

2015/8/5 17:43:48
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_UAT03_20150805bk.expdp.dmp LOGFILE=MF_DATA_UAT03_20150805bk.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl

impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=CAS%U_20150803_afterbatch.expdp.dmp logfile=20150803_afterbatch_uat03.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs table_exists_action=replace

2015/8/6 14:17:32
impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_UAT03_20150805bk.expdp.dmp LOGFILE=MF_DATA_UAT03_20150805bk.impdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl table_exists_action=replace

2015/8/6 17:42:28
alter database datafile '/data01/CAS_instance/db/CAS/GLH_03.dbf' resize 20G;
alter database datafile '/data01/CAS_instance/db/CAS/system_01.dbf' resize 20G;
alter database datafile '/data01/CAS_instance/db/CAS/CAS_03.dbf' resize 30G;
alter database datafile '/data01/CAS_instance/db/CAS/CAS_04.dbf' resize 30G;
ALTER DATABASE DATAFILE '/data01/CAS_instance/db/CAS/CAS_I_03.dbf' RESIZE 18g;
ALTER DATABASE DATAFILE '/data01/CAS_instance/db/CAS/CAS_I_04.dbf' RESIZE 18g;
ALTER DATABASE DATAFILE '/data01/CAS_instance/db/CAS/CAS_I_05.dbf' RESIZE 18g;
ALTER DATABASE DATAFILE '/data01/CAS_instance/db/CAS/CAS_I_06.dbf' RESIZE 18g;
ALTER DATABASE DATAFILE '/data01/CAS_instance/db/CAS/MIS_01.dbf' RESIZE 15g;
alter database datafile '/data01/CAS_instance/db/CAS/APS_01.dbf' resize 5G;

impdp \'/ as sysdba\' DIRECTORY=dmp DUMPFILE=CAS%U_20150804_152737.expdp.dmp LOGFILE=CAS_20150804_152737_$ORACLE_SID.impdp.log PARALLEL=8 schemas=dap
--'
2015/8/19 16:01:52

[oracle@CNXDV01:/tech/oracle/product/11.2.0/11204/dbhome_1/dbs] $ for i in `ls spfileDEV*ora`
do
echo === $i ===
strings $i |egrep 'sga_|db_cache_size'
done
=== spfileDEV01.ora ===
DEV01.__sga_target=2684354560
*.sga_max_size=2560M
*.sga_target=2560M
=== spfileDEV02.ora ===
DEV02.__sga_target=2684354560
*.sga_max_size=2560M
=== spfileDEV03.ora ===
DEV03.__sga_target=2684354560
*.sga_max_size=2560M
=== spfileDEV04.ora ===
DEV04.__sga_target=2684354560
*.sga_max_size=2560M
=== spfileDEV05.ora ===
DEV05.__sga_target=2684354560
*.sga_max_size=2
*.sga_target=2560M
=== spfileDEV06.ora ===
DEV06.__sga_target=3221225472
*.sga_target=3G

DV01:
 alter system set db_cache_size=3G SCOPE=SPFILE;
 alter system set sga_max_size=5632M scope=spfile;
 alter system set sga_target=5632M scope=spfile;
UT02:
 alter system set sga_max_size=14G scope=spfile;
 alter system set sga_target=14G scope=spfile;
 alter system set db_cache_size=12G SCOPE=SPFILE;
UAT01:
 alter system set sga_max_size=6G scope=spfile;
 alter system set sga_target=6G scope=spfile;
 alter system set db_cache_size=4G SCOPE=SPFILE;

2015/8/20 9:52:07

 create database link wechatdblink connect to "ibmitm" identified by "sysadmin_msl2015" using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.1.107)(PORT=1522))(CONNECT_DATA=(SID=wechatdb))(HS=OK))';

 alter system set sga_max_size=10G scope=spfile;
 alter system set sga_target=10G scope=spfile;
 alter system set db_cache_size=8G SCOPE=SPFILE;

2015/8/21 11:28:26

 create database link TO_EBUS_SIT1
  connect to search
  identified by "search_msl2015"
  using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.1.105)(PORT=1522))(CONNECT_DATA=(SID=EBUS_SIT1))(HS=OK))';
 create database link TO_EBUS_UAT1
  connect to search
  identified by "search_msl2015"
  using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.1.105)(PORT=1522))(CONNECT_DATA=(SID=EBUS_UAT1))(HS=OK))';

 create public database link TO_EBUS_WECHAT
  connect to search
  identified by "search_msl2015"
  using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.1.107)(PORT=1522))(CONNECT_DATA=(SID=EBUS_UAT1))(HS=OK))';

2015/8/21 18:24:38
impdp \'/ as sysdba\' directory=dmp dumpfile=ACCU1406_1502_1312.expdp.dmp schemas=ACCU1501 exclude=index,TABLE_STATISTICS,CONSTRAINT
/backup/util/oracle/URT/dev01_acru_reload.sql 1501 ACCU1501
--'
2015/8/24 11:16:35
create tablespace YBT_DBS datafile '/data01/UAT04_instance/db/YBT_DBS_01.dbf' size 512M autoextend on;
create user YBT_DBS identified by ckde91kj default tablespace YBT_DBS profile GENERAL_PROFILE_SP;
grant UNLIMITED TABLESPACE to YBT_DBS;
grant CREATE PUBLIC SYNONYM to YBT_DBS;
grant DEBUG CONNECT SESSION to YBT_DBS;
grant DROP PUBLIC SYNONYM to YBT_DBS;
grant CONNECT to YBT_DBS;
grant RESOURCE to YBT_DBS;

2015/8/28 14:07:36

 create public database link TO_EBUS_WECHAT
  connect to wecsearch
  identified by "search_msl2015"
  using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.4.103)(PORT=1522))(CONNECT_DATA=(SID=EBUS_WECHAT))(HS=OK))';

2015/8/28 17:16:16
3mmby3v1mmrbp
f8grruaht53ws
9faypactukwyu
5jyzpb8q2pga4

2015/9/1 15:01:44

create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20150831_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
Msl@network1508

when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
}

2015/9/2 16:59:24
DATETIME=`date +%Y%m%d_%H%M%S`
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=GFS_${ORACLE_SID}_$DATETIME.exp.dmp logfile=GFS_${ORACLE_SID}_$DATETIME.exp.log SCHEMAS='GFS_RPT','GFS_V3'
--'
2015/9/7 11:01:22
 expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_${ORACLE_SID}_20150907.expdp.dmp LOGFILE==MF_${ORACLE_SID}_20150907.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl
--'
2015/9/10 9:34:30
基金：
1. UAT数据库重导后一些系统配置参数（比如文件生成路径等）需要修改，最好提供后台SQL脚本方便批量更新。
2.

2015/9/22 8:35:39
--查询数据库状态
select name,user_access,user_access_desc,
  snapshot_isolation_state,snapshot_isolation_state_desc,
  is_read_committed_snapshot_on
from sys.databases

--设置数据库为SINGLE_USER模式,减少锁定时间
ALTER DATABASE dbname SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE dbname SET ALLOW_SNAPSHOT_ISOLATION ON
ALTER DATABASE dbname SET READ_COMMITTED_SNAPSHOT ON
ALTER DATABASE dbname SET MULTI_USER

--查看锁活动情况
select * from sys.dm_tran_locks
--查看事务活动情况
dbcc opentran

2015/9/22 17:20:00
ajkhr7xyghp6w
SELECT /*+ leading( vw_nso_1) use_nl(CVG pcc) push_pred(cvg) index ( CVG.TCOVERAGES I_COV_CLI_FK) */ SUM(PCC.BNFT_VALU)
  FROM VCOVERAGES_ALL CVG, TPLAN_CVG_CLAS_BENEFITS PCC
 WHERE CVG.INS_TYP = '7'
  AND CVG.PLAN_CODE = PCC.PLAN_CD
  AND CVG.VERS_NUM = PCC.VERS_NUM
  AND CVG.CVG_STAT_CD IN ('1', '2', '3', '4', '5', '6', '7', '8')
  AND CVG.CVG_CLAS = PCC.CVG_CLAS
  AND PCC.BNFT_CD = 'COPAYMENT'
  AND CVG.CLI_NUM IN (SELECT /*+ unnest */ CD.CLI_NUM
  FROM VCLIENT_DETAILS_ALL CD
  WHERE (CD.AS_ID_NUM = :B4 OR CD.ID_NUM = :B4)
  AND CD.CLI_NM = :B3
  AND CD.BIRTH_DT = :B2
  AND CD.SEX_CODE = :B1)

2015/9/30 15:44:19
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}
Msl@network1602

2015/10/1 19:54:02

--create or replace directory DATA_PUMP_DIR as '/data01/CAS_instance/db/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20151001_afterrelease
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
--impdp \'/ as sysdba\' directory=data_dump_dir dumpfile=tybt_admin_division.dmp tables='ybt_sino.tybt_admin_division' table_exists_action=truncate

-rw-r----- 1 oracle oinstall 21523582976 Oct 09 02:48 Eapprove02_20151009_010000.expdp.dmp
-rw-r----- 1 oracle oinstall 20882128896 Oct 09 02:48 Eapprove01_20151009_010000.expdp.dmp
[oracle@CNX02:/data01/sun_instance/export] $ du -sg Eapprove*dmp
19.45 Eapprove01_20151009_010000.expdp.dmp
20.05 Eapprove02_20151009_010000.expdp.dmp

2015/10/10 16:40:01
alter system set "_fix_control"='11657903:on','5302124:off' scope=both;

alter system set "_fix_control"='11657903:on' scope=both;

2015/10/12 11:17:32

alter user YBT_SINO identified by kwzc4m1z;
alter user YBT_BOC identified by u0tvenv1;
alter user YBT_CCB_SH identified by cmvczgr1;
alter user YBT_MSL identified by rwk66g2g;
alter user TM identified by xogv6c3k;

alter user ybt_dbs profile reset_password;
alter user ybt_dbs identified by ckde91kj;
alter user ybt_dbs profile GENERAL_PROFILE_SP;

alter user YBT_UOB profile reset_password;
alter user YBT_UOB identified by df44jsfk;
alter user YBT_UOB profile GENERAL_PROFILE_SP;

2015/10/13 17:03:07
ALTER USER EBMAIL ACCOUNT LOCK;
ALTER USER EBEXAM ACCOUNT LOCK;
ALTER USER EBUSER ACCOUNT LOCK;
ALTER USER EBGLH ACCOUNT LOCK;

ALTER USER elutong ACCOUNT LOCK;

alter user IAOPER profile reset_password;
alter user IAOPER identified by nga07lmx;
alter user IAOPER profile GENERAL_PROFILE_SP;

alter user BJIASYS profile reset_password;
alter user BJIASYS identified by j9jtxvgx;
alter user BJIASYS profile GENERAL_PROFILE_SP;

alter user iasys profile reset_password;
alter user IASYS identified by m8et2r0x;
alter user iasys profile DEFAULT;

alter user SHIASYS profile reset_password;
alter user SHIASYS identified by ciz015ur;
alter user SHIASYS profile DEFAULT;

alter user EBAWS profile reset_password;
alter user EBAWS identified by o317p7t4;
alter user EBAWS profile EB_GENERAL_PROFILE;

alter user PAD_ADMIN profile reset_password;
alter user PAD_ADMIN identified by e5rhjjl5;
alter user PAD_ADMIN profile EB_GENERAL_PROFILE;

alter user ACS profile reset_password;
alter user ACS identified by c23vgtbp;
alter user ACS profile GENERAL_PROFILE_SP;

alter user CCNT profile reset_password;
alter user CCNT identified by itcsdept;
alter user CCNT profile general_profile_sp;

alter user ATO_ADMIN profile reset_password;
alter user ATO_ADMIN identified by q784Fa9e0_D6D9#6E27fA5A$5261k;
alter user ATO_ADMIN profile eb_general_profile;

2015/10/15 16:57:55

select profile from dba_users where username ='AUDIT_READER';

alter profile E_APPROVAL_SYS limit password_reuse_time unlimited;
alter user audit_reader identified by aq2zhq#dc;
alter profile E_APPROVAL_SYS limit password_reuse_time 360;
audit_reader/aq2zhq#dc

2015/10/16 11:22:12
UAT04:
ALTER SYSTEM SET db_cache_size = 2G SCOPE=SPFILE;
alter system set sga_max_size=4G SCOPE=SPFILE;
ALTER SYSTEM SET SGA_TARGET = 0 SCOPE=SPFILE;
UAT05:
ALTER SYSTEM SET db_cache_size = 22G SCOPE=SPFILE;
alter system set sga_max_size=24G SCOPE=SPFILE;
ALTER SYSTEM SET SGA_TARGET = 0 SCOPE=SPFILE;

2015/10/16 13:26:08
alter user MSL_DIL profile reset_password;
alter user SINO_MSP profile reset_password;
alter user dap profile reset_password;
alter user MSL_DIL identified by aq2zhq#dc;
alter user SINO_MSP identified by aq3zhq#dc;
alter user dap identified by fe10dksa;
alter user MSL_DIL profile GENERAL_PROFILE;
alter user SINO_MSP profile GENERAL_PROFILE;
alter user dap profile GENERAL_PROFILE;

alter user dmsuser profile reset_password;
alter user dms profile reset_password;
alter user dmsuser identified by Msldmsuser2014;
alter user dms identified by Msldmsuser2014;
alter user dmsuser profile GENERAL_PROFILE_SP;
alter user dms profile DEFAULT;

alter user gfs_v3 profile reset_password;
alter user gfs_rpt profile reset_password;
alter user gfs_v3 identified by ci8qs3mz;
alter user gfs_rpt identified by qer82xup;
alter user gfs_v3 profile DEFAULT;
alter user gfs_rpt profile DEFAULT;

2015/10/21 8:03:23
10.136.8.23 shrink log file
1. dump transaction smsdb with no_log go
2. shrink log file in SSMS

2015/10/28 10:17:26
 create public database link DBL_WECHATMKT
  connect to search
  identified by "search_msl2015"
  using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.1.107)(PORT=1522))(CONNECT_DATA=(SID=DBL_WECHATMKT))(HS=OK))';

2015/10/29 9:37:33
alter profile GENERAL_PROFILE_360 limit password_reuse_time unlimited;
alter user dms identified by Msldmsuser2014;
alter profile GENERAL_PROFILE_360 limit password_reuse_time 360;

How to Upgrade the JDK Used by Oracle WebLogic Server 11g to a Different Version (Doc ID 1309855.1)

2015/10/30 17:36:37

alter user APS profile reset_password;
alter user APS identified by aps_lit_rit_2014;
alter user APS profile DEFAULT;

alter user eaps profile reset_password;
alter user eaps identified by aps_lit_rit_2014;
alter user eaps profile DEFAULT;

alter user APSCFG profile reset_password;
alter user APSCFG identified by aps_lit_rit_2014;
alter user APSCFG profile DEFAULT;

2015/11/1 19:42:23
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}

---------disable---------
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}

2015/11/1 22:35:24
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20151101_afterrelease
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2015/11/2 9:30:40
insert into tybt_bank_prod_mappings (CAS_BANK_CD, BANK_PROD_CODE, CAS_PROD_CODE, FA_OR_PREM, MOD_UNIT_AMT, TEMPLATE_TYP, PREM_BY_PREM, PLAN_MAP_CTL)
values ('021', 'CDC', 'CDC', null, 1000.00, '5', 'N', '1');

insert into tybt_bank_prod_mappings (CAS_BANK_CD, BANK_PROD_CODE, CAS_PROD_CODE, FA_OR_PREM, MOD_UNIT_AMT, TEMPLATE_TYP, PREM_BY_PREM, PLAN_MAP_CTL)
values ('021', 'BUI', 'BUI', null, null, '6', 'N', '1');

select * from tybt_bank_prod_mappings

varyonvg data01_cas
mount -o noguard /data01/CAS_instance/db

umount /data01/CAS_instance/db
varyoffvg data01_cas
2015/11/3 8:46:31
DECLARE
  l_acl_name VARCHAR2(30) := 'open_acl_file.xml';
  l_ftp_server_ip1 VARCHAR2(20) := '*'; --Report Server IP address
  l_username1 VARCHAR2(30) := 'CAS';
  l_username2 VARCHAR2(30) := 'CONNECT';
BEGIN
  DBMS_NETWORK_ACL_ADMIN.create_acl(acl => l_acl_name,
  description => '',
  principal => l_username1,
  is_grant => TRUE,
  privilege => 'connect',
  start_date => SYSTIMESTAMP,
  end_date => NULL);
  DBMS_NETWORK_ACL_ADMIN.add_privilege(acl => l_acl_name,
  principal => l_username2,
  is_grant => TRUE,
  privilege => 'connect',
  start_date => SYSTIMESTAMP,
  end_date => NULL);
  COMMIT;

  DBMS_NETWORK_ACL_ADMIN.assign_acl(acl => l_acl_name,
  host => l_ftp_server_ip1,
  lower_port => 1,
  upper_port => 9999);

  COMMIT;
END;
/

find . -name '*CN_CAS_APE_SC_MTD_D*' |awk -F'/' '{print $2}'|xargs -i -t ls -l {}
find . -name 'CN_CAS_APE_SC_MTD_D*' |awk -F'/' '{print $2}'|xargs -i{} mv {} UAT_{}

expdp \'/ as sysdba\' directory=dmp dumpfile=${ORACLE_SID}_20151103bak.expdp.dmp logfile=${ORACLE_SID}_20151103bak.log parfile=imp.par
impdp \'/ as sysdba\' directory=dmp dumpfile=CAS%U_20151101_afterrelease.expdp.dmp logfile=CAS_20151101_afterrelease_${ORACLE_SID}.log parfile=imp.par table_exists_action=replace
--'
2015/11/4 9:03:52
declare
  p_user varchar2(30);
begin
  select user into p_user from dual;
  for i in (select *
  from cas.zf_dba_jobs_dev01
  where broken = 'N'
  and log_user = p_user) loop
  dbms_job.change(job => i.job,
  what => i.what,
  next_date => i.next_date + 2,
  interval => i.interval);
  commit;
  end loop;
end;

export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
nohup impdp \'/ as sysdba\' DIRECTORY=dmp DUMPFILE=CAS%U_20151101_afterrelease.expdp.dmp LOGFILE=CAS_20151101_afterrelease_${ORACLE_SID}.impdp.log PARALLEL=8 EXCLUDE=DB_LINK,SYSTEM_PROCOBJACT,STATISTICS,schema:\" in \(\'SYS\',\'SYSTEM\',\'OUTLN\',\'DIP\',\'DMSYS\',\'TSMSYS\',\'DBSNMP\',\'ORACLE_OCM\',\'WMSYS\',\'EXFSYS\',\'CTXSYS\',\'XDB\',\'SYSMAN\',\'OLAPSYS\',\'ORDSYS\',\'ORDPLUGINS\',\'SI_INFORMTN_SCHEMA\',\'MDSYS\',\'MDDATA\',\'MGMT_VIEW\',\'SCOTT\',\'XS$NULL\',\'APPQOSSYS\',\'IBMITM\'\)\" &

cd /backup/util/oracle/URT
!loadjava -u cas/uatcas2015 -f -r -v commons-net-3.3.jar
alter JAVA CLASS CAS."FTPSHandle" compile;

loadjava -u cas -f -r -v commons-net-3.3.jar

2015/11/4 14:28:22
exp kd_sale/kd_sale002@uat05 file=c:\cas_search\kd_sale_uat05_20151104.dmp log=c:\cas_search\kd_sale_uat05_20151104.log buffer=2048000

How to Upgrade the JDK Used by Oracle WebLogic Server 11g to a Different Version (Doc ID 1309855.1)

exp cas/hfok58hd@uat05 file=kd_uat05_20151109.dmp log=kd_uat05_20151109.log owner=kd_com,kd_sale,kd_his,kd_bank
imp zhoufeng/hfok58hd@10.136.1.109:1525/Eapprove file=E:\zf\Project\release\mf\kd_uat05_20151109.dmp fromuser=kd_com,kd_sale,kd_his,kd_bank touser=kd_com,kd_sale,kd_his,kd_bank GRANTS=N

imp kd_bank/kd_bank002@10.136.1.109:1525/Eapprove file=E:\zf\Project\release\mf\kd_uat05_20151109.dmp fromuser=kd_bank touser=kd_bank GRANTS=N

create user kd_sale identified by kd_sale002;
create user kd_com identified by kd_com002;
create user kd_his identified by kd_his002;
create user kd_bank identified by kd_bank002;

grant connect,resource to kd_sale;
grant connect,resource to kd_com;
grant connect,resource to kd_bank;
grant connect,resource to kd_his;

create role ROLE_PROD_WRITE_01;
create role ROLE_PROD_READ_01;

drop user kd_com cascade;
drop user kd_sale cascade;
drop user kd_his cascade;
drop user kd_bank cascade;

2015/11/11 9:51:55
set pagesize 0
set linesize 200
set serverout on
set feedback off
begin
  dbms_output.put_line('run {');
  dbms_output.put_line('startup nomount;');
  dbms_output.put_line('allocate channel ch00 type ''sbt_tape'';');
  dbms_output.put_line('SEND ''NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01'';');
  dbms_output.put_line('restore controlfile from ''&restore_controlfile'';');
  dbms_output.put_line('alter database mount;');
end;
/
select 'SET NEWNAME FOR DATAFILE ' || file_id || ' to ''' ||
  replace(replace(file_name, '&source', '&target'),'/data01/CAS_instance/db/KTS_KFCS_TABLE_01.dbf','&&target'||'KTS_KFCS_TABLE_01.dbf') || ''';'
  from dba_data_files;
begin
  dbms_output.put_line('RESTORE DATABASE;');
  dbms_output.put_line('SWITCH DATAFILE ALL;');
  dbms_output.put_line('release channel ch00;');
  dbms_output.put_line('}');
end;
/

2015/11/12 22:26:18
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20151102_${ORACLE_SID}
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2015/11/16 17:26:02
declare
  v_profile varchar2(30);
  v_username varchar2(20):='&username';
  v_password varchar2(20):='&password';
BEGIN
  SELECT PROFILE INTO V_PROFILE FROM DBA_USERS WHERE USERNAME = upper(v_username);
  execute immediate 'alter profile '||v_profile||' limit PASSWORD_REUSE_TIME UNLIMITED';
  execute immediate 'alter user '||v_username||' identified by "'||v_password||'"';
  execute immediate 'alter profile '||v_profile||' limit PASSWORD_REUSE_TIME 360';
end;

2015/11/17 19:03:09

imp cas/ehK4So3R@uat02 file=\\10.136.3.82\uat\CNDC-UAT02\030_SQL_Load\tfatca_pre_existing.dmp buffer=102400 feedback=100000 fromuser=cas touser=cas ignore=y

2015/11/18 14:56:09
cd /tech/oracle/product/11.2.0/11203/dbhome_1/assistants/dbca/templates
dbca -silent -createDatabase -templateName General_Purpose.dbc -datafileDestination /data01/TESTING_instance/db \
-gdbName SAMP -sid SAMP \
-sysPassword oracle -systemPassword oracle -characterset ZHS16GBK

2015/11/19 17:38:03

 create public database link DBL_WECHATMKT
  connect to wecsearch
  identified by "search_msl2015"
  using '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=10.136.4.103)(PORT=1522))(CONNECT_DATA=(SID=DBL_WECHATMKT))(HS=OK))';

2015/11/20 13:49:18
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20151120_${ORACLE_SID}
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2015/11/23 16:24:27
var n number
begin
:n:=dbms_spm.load_plans_from_cursor_cache(sql_id=>'&sql_id', plan_hash_value=>&plan_hash_value, fixed =>'NO', enabled=>'YES');
end;
/

2015/11/23 16:36:07
exec DBMS_SQLTUNE.CREATE_SQLSET('ssb36cdgrrv9zhu');

declare
baseline_ref_cursor DBMS_SQLTUNE.SQLSET_CURSOR;
begin
open baseline_ref_cursor for
select VALUE(p) from table(DBMS_SQLTUNE.SELECT_WORKLOAD_REPOSITORY(19302, 19334,'sql_id='||CHR(39)||'b36cdgrrv9zhu'||CHR(39)||' and plan_hash_value=3626900011',NULL,NULL,NULL,NULL,NULL,NULL,'ALL')) p;
DBMS_SQLTUNE.LOAD_SQLSET('ssb36cdgrrv9zhu', baseline_ref_cursor);
end;
/
--Verify how many sqls got loaded in the STS.
SELECT NAME,OWNER,CREATED,STATEMENT_COUNT FROM DBA_SQLSET where name='ssb36cdgrrv9zhu';

--Verify the sql statements and its sql_id in the STS
select sql_id, substr(sql_text,1, 15) text
from dba_sqlset_statements
where sqlset_name = 'ssb36cdgrrv9zhu'
order by sql_id;

--Verify the sql statements and its sql_id in the STS
SELECT * FROM table (DBMS_XPLAN.DISPLAY_SQLSET('ssb36cdgrrv9zhu','b36cdgrrv9zhu'));

--Verify the Plan baseline to check how many plans before
select count(*) from dba_sql_plan_baselines;

--Load the Sql Plan Baseline from STS
set serveroutput on
declare
my_integer pls_integer;
begin
my_integer := dbms_spm.load_plans_from_sqlset(sqlset_name => 'ssb36cdgrrv9zhu',
  sqlset_owner => 'SYS',
  basic_filter => 'SQL_ID = ''b36cdgrrv9zhu1''',
  fixed => 'NO',
  enabled => 'YES');
  DBMS_OUTPUT.PUT_line(my_integer);
end;

--Verify the Plan baseline to check how many plans in plan baseline
select count(*) from dba_sql_plan_baselines;

set serveroutput on
declare
my_integer pls_integer;
begin
my_integer := dbms_spm.drop_sql_plan_baseline('SQL_3fe2058a0913401e',plan_name => 'SQL_PLAN_3zsh5j84j6h0y4d4e40cc');
  DBMS_OUTPUT.PUT_line(my_integer);

end;

SET SERVEROUTPUT ON
SET LONG 10000
DECLARE
  report clob;
BEGIN
  report := DBMS_SPM.EVOLVE_SQL_PLAN_BASELINE(
  sql_handle => 'SQL_3fe2058a0913401e',PLAN_NAME => 'SQL_PLAN_3zsh5j84j6h0y4d4e40cc');
  DBMS_OUTPUT.PUT_LINE(report);
END;
/

select * from table(
  dbms_xplan.display_sql_plan_baseline(
  sql_handle=>'SQL_3fe2058a0913401e',
  format=>'basic'));

select * from scott.emp where empno=7566;

select /*+ full(a) */ * from scott.emp a where empno=7566;

select sql_text,sql_id,PLAN_HASH_VALUE from v$sql where sql_text like '%scott.emp%7566%';

select /*+ full(a) */ * from scott.emp a where empno=7566
dbht14ut09wc9 2872589290

select * from scott.emp where empno=7566
b3rnskcaj99uw 4066871323

select * from table(
  dbms_xplan.display_sql_plan_baseline(
  PLAN_NAME=>'SQL_PLAN_ac5fqvb21wt2z695cc014',
  format=>'basic'));

2015/11/24 10:05:24
exp kd_bank/kd_bank002@uat05 file=20151124_sale_bank1.dmp log=20151124_sale_bank1.dmp.log
exp kd_com/kd_com002@uat05 file=20151124_sale_com1.dmp log=20151124_sale_com1.dmp.log
exp kd_his/kd_his002@uat05 file=20151124_sale_his1.dmp log=20151124_sale_his1.dmp.log
exp kd_sale/kd_sale002@uat05 file=20151124_sale1.dmp log=20151124_sale1.dmp.log
exp kfcs/kfcs002@uat05 file=20151124_kfcs1.dmp log=20151124_kfcs1.dmp.log

exec DBMS_SQLTUNE.CREATE_SQLSET('test1111');

declare
baseline_ref_cursor DBMS_SQLTUNE.SQLSET_CURSOR;
begin
open baseline_ref_cursor for
--select VALUE(p) from table(DBMS_SQLTUNE.SELECT_WORKLOAD_REPOSITORY(8561, 8562,'sql_id='||CHR(39)||'8y7gb4zm3x169'||CHR(39)||' and plan_hash_value=4066871323',NULL,NULL,NULL,NULL,NULL,NULL,'ALL')) p;
--select VALUE(p) from table(DBMS_SQLTUNE.SELECT_WORKLOAD_REPOSITORY(8561, 8562, null, null, null, null, null, 1, null, 'ALL')) P;
select VALUE(p) from table( DBMS_SQLTUNE.select_cursor_cache) P;
DBMS_SQLTUNE.LOAD_SQLSET('test1111', baseline_ref_cursor);
end;
/
--Verify how many sqls got loaded in the STS.
SELECT NAME,OWNER,CREATED,STATEMENT_COUNT FROM DBA_SQLSET where name='test1111';

--Verify the sql statements and its sql_id in the STS
select sql_id, substr(sql_text,1, 140) text
from dba_sqlset_statements
where sqlset_name = 'test1111' and sql_text like '%scott.emp%7566%'
order by sql_id;

--Verify the sql statements and its sql_id in the STS
SELECT * FROM table (DBMS_XPLAN.DISPLAY_SQLSET('test1111','b3rnskcaj99uw'));

--Verify the Plan baseline to check how many plans before
select count(*) from dba_sql_plan_baselines;

select VALUE(p) from table( DBMS_SQLTUNE.select_cursor_cache) P;

set serveroutput on
declare
my_integer pls_integer;
begin
my_integer := dbms_spm.load_plans_from_sqlset (
sqlset_name => 'test1111',
sqlset_owner => 'SYS',
fixed => 'NO',
enabled => 'YES',
basic_filter => 'SQL_ID = ''b3rnskcaj99uw''');
DBMS_OUTPUT.PUT_line(my_integer);
end;
/

select * from table(
  dbms_xplan.display_sql_plan_baseline(
  sql_handle=>'SQL_cc7fdf748de938f6',
  format=>'basic'));

2015/11/25 10:06:14

alter system set db_name=CAS scope=spfile;
alter system set db_unique_name=CAS scope=spfile;

run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
restore controlfile from 'cntrl_16303_1_897286889';
release channel ch00;
}
alter database mount;
run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
SET NEWNAME FOR DATAFILE 1 to '/data01/UAT05_instance/db/system_01.dbf';
SET NEWNAME FOR DATAFILE 2 to '/data01/UAT05_instance/db/undotbs_01.dbf';
SET NEWNAME FOR DATAFILE 3 to '/data01/UAT05_instance/db/sysaux_01.dbf';
SET NEWNAME FOR DATAFILE 4 to '/data01/UAT05_instance/db/users_01.dbf';
SET NEWNAME FOR DATAFILE 5 to '/data01/UAT05_instance/db/ibmitm.data1';
SET NEWNAME FOR DATAFILE 6 to '/data01/UAT05_instance/db/ACS_01.dbf';
SET NEWNAME FOR DATAFILE 7 to '/data01/UAT05_instance/db/ACS_I_01.dbf';
SET NEWNAME FOR DATAFILE 8 to '/data01/UAT05_instance/db/AMS_01.dbf';
SET NEWNAME FOR DATAFILE 9 to '/data01/UAT05_instance/db/AMS_02.dbf';
SET NEWNAME FOR DATAFILE 10 to '/data01/UAT05_instance/db/AMS_I_01.dbf';
SET NEWNAME FOR DATAFILE 11 to '/data01/UAT05_instance/db/APS_01.dbf';
SET NEWNAME FOR DATAFILE 12 to '/data01/UAT05_instance/db/APSCFG_01.dbf';
SET NEWNAME FOR DATAFILE 13 to '/data01/UAT05_instance/db/APS_I_01.dbf';
SET NEWNAME FOR DATAFILE 14 to '/data01/UAT05_instance/db/CAS_01.dbf';
SET NEWNAME FOR DATAFILE 15 to '/data01/UAT05_instance/db/CAS_02.dbf';
SET NEWNAME FOR DATAFILE 16 to '/data01/UAT05_instance/db/CAS_03.dbf';
SET NEWNAME FOR DATAFILE 17 to '/data01/UAT05_instance/db/CAS_04.dbf';
SET NEWNAME FOR DATAFILE 18 to '/data01/UAT05_instance/db/CAS_05.dbf';
SET NEWNAME FOR DATAFILE 19 to '/data01/UAT05_instance/db/CAS_06.dbf';
SET NEWNAME FOR DATAFILE 20 to '/data01/UAT05_instance/db/CAS_07.dbf';
SET NEWNAME FOR DATAFILE 21 to '/data01/UAT05_instance/db/CAS_08.dbf';
SET NEWNAME FOR DATAFILE 22 to '/data01/UAT05_instance/db/CAS_09.dbf';
SET NEWNAME FOR DATAFILE 23 to '/data01/UAT05_instance/db/CAS_10.dbf';
SET NEWNAME FOR DATAFILE 24 to '/data01/UAT05_instance/db/CASBAK_01.dbf';
SET NEWNAME FOR DATAFILE 25 to '/data01/UAT05_instance/db/CASBAK_02.dbf';
SET NEWNAME FOR DATAFILE 26 to '/data01/UAT05_instance/db/CAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 27 to '/data01/UAT05_instance/db/CAS_I_02.dbf';
SET NEWNAME FOR DATAFILE 28 to '/data01/UAT05_instance/db/CAS_I_03.dbf';
SET NEWNAME FOR DATAFILE 29 to '/data01/UAT05_instance/db/CAS_I_04.dbf';
SET NEWNAME FOR DATAFILE 30 to '/data01/UAT05_instance/db/CCNT_01.dbf';
SET NEWNAME FOR DATAFILE 31 to '/data01/UAT05_instance/db/CCNT_I_01.dbf';
SET NEWNAME FOR DATAFILE 32 to '/data01/UAT05_instance/db/CICS_01.dbf';
SET NEWNAME FOR DATAFILE 33 to '/data01/UAT05_instance/db/CICS_I_01.dbf';
SET NEWNAME FOR DATAFILE 34 to '/data01/UAT05_instance/db/EAPS_01.dbf';
SET NEWNAME FOR DATAFILE 35 to '/data01/UAT05_instance/db/EBUSINESS_01.dbf';
SET NEWNAME FOR DATAFILE 36 to '/data01/UAT05_instance/db/EBUSINESS_I_01.dbf';
SET NEWNAME FOR DATAFILE 37 to '/data01/UAT05_instance/db/FAS_01.dbf';
SET NEWNAME FOR DATAFILE 38 to '/data01/UAT05_instance/db/FAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 39 to '/data01/UAT05_instance/db/FUNDXZT_01.dbf';
SET NEWNAME FOR DATAFILE 40 to '/data01/UAT05_instance/db/GFS_01.dbf';
SET NEWNAME FOR DATAFILE 41 to '/data01/UAT05_instance/db/GFS_I_01.dbf';
SET NEWNAME FOR DATAFILE 42 to '/data01/UAT05_instance/db/GFS_NEW_01.dbf';
SET NEWNAME FOR DATAFILE 43 to '/data01/UAT05_instance/db/GFS_NEW_I_01.dbf';
SET NEWNAME FOR DATAFILE 44 to '/data01/UAT05_instance/db/GFS_V3_01.dbf';
SET NEWNAME FOR DATAFILE 45 to '/data01/UAT05_instance/db/GFS_V3_I_01.dbf';
SET NEWNAME FOR DATAFILE 46 to '/data01/UAT05_instance/db/GLH_01.dbf';
SET NEWNAME FOR DATAFILE 47 to '/data01/UAT05_instance/db/GLH_02.dbf';
SET NEWNAME FOR DATAFILE 48 to '/data01/UAT05_instance/db/GLH_I_01.dbf';
SET NEWNAME FOR DATAFILE 49 to '/data01/UAT05_instance/db/GP_01.dbf';
SET NEWNAME FOR DATAFILE 50 to '/data01/UAT05_instance/db/GP_I_01.dbf';
SET NEWNAME FOR DATAFILE 51 to '/data01/UAT05_instance/db/IAS_01.dbf';
SET NEWNAME FOR DATAFILE 52 to '/data01/UAT05_instance/db/IAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 53 to '/data01/UAT05_instance/db/LEON_01.dbf';
SET NEWNAME FOR DATAFILE 54 to '/data01/UAT05_instance/db/MIS_01.dbf';
SET NEWNAME FOR DATAFILE 55 to '/data01/UAT05_instance/db/MIS_I_01.dbf';
SET NEWNAME FOR DATAFILE 56 to '/data01/UAT05_instance/db/PERFSTAT_01.dbf';
SET NEWNAME FOR DATAFILE 57 to '/data01/UAT05_instance/db/PMDX_01.dbf';
SET NEWNAME FOR DATAFILE 58 to '/data01/UAT05_instance/db/TM_01.dbf';
SET NEWNAME FOR DATAFILE 59 to '/data01/UAT05_instance/db/TM_I_01.dbf';
SET NEWNAME FOR DATAFILE 60 to '/data01/UAT05_instance/db/TOOLS_01.dbf';
SET NEWNAME FOR DATAFILE 61 to '/data01/UAT05_instance/db/USER_DATA_01.dbf';
SET NEWNAME FOR DATAFILE 62 to '/data01/UAT05_instance/db/USER_DATA_02.dbf';
SET NEWNAME FOR DATAFILE 63 to '/data01/UAT05_instance/db/WRK_DATA_01.dbf';
SET NEWNAME FOR DATAFILE 64 to '/data01/UAT05_instance/db/YBT_01.dbf';
SET NEWNAME FOR DATAFILE 65 to '/data01/UAT05_instance/db/YBT_BOC_01.dbf';
SET NEWNAME FOR DATAFILE 66 to '/data01/UAT05_instance/db/YBT_CCB_SH_01.dbf';
SET NEWNAME FOR DATAFILE 67 to '/data01/UAT05_instance/db/YBT_I_01.dbf';
SET NEWNAME FOR DATAFILE 68 to '/data01/UAT05_instance/db/YBT_MSL_01.dbf';
SET NEWNAME FOR DATAFILE 69 to '/data01/UAT05_instance/db/YBT_SINO_01.dbf';
SET NEWNAME FOR DATAFILE 70 to '/data01/UAT05_instance/db/dms.dbf';
SET NEWNAME FOR DATAFILE 71 to '/data01/UAT05_instance/db/dms_i.dbf';
SET NEWNAME FOR DATAFILE 72 to '/data01/UAT05_instance/db/undotbs_02.dbf';
SET NEWNAME FOR DATAFILE 73 to '/data01/UAT05_instance/db/KTS_KD_SALE01.DBF';
SET NEWNAME FOR DATAFILE 74 to '/data01/UAT05_instance/db/KTS_KD_COM01.DBF';
SET NEWNAME FOR DATAFILE 75 to '/data01/UAT05_instance/db/KTS_KD_HIS01.DBF';
SET NEWNAME FOR DATAFILE 76 to '/data01/UAT05_instance/db/KTS_KD_BANK01.DBF';
SET NEWNAME FOR DATAFILE 77 to '/data01/UAT05_instance/db/KTS_FSMS01.DBF';
SET NEWNAME FOR DATAFILE 78 to '/data01/UAT05_instance/db/KTS_FSMS_HIS01.DBF';
SET NEWNAME FOR DATAFILE 79 to '/data01/UAT05_instance/db/KTS_MF_MSL01.DBF';
SET NEWNAME FOR DATAFILE 80 to '/data01/UAT05_instance/db/undotbs_03.dbf';
SET NEWNAME FOR DATAFILE 81 to '/data01/UAT05_instance/db/undotbs_04.dbf';
SET NEWNAME FOR DATAFILE 82 to '/data01/UAT05_instance/db/EAPS_I_01.dbf';
SET NEWNAME FOR DATAFILE 83 to '/data01/UAT05_instance/db/CAS_I_05.dbf';
SET NEWNAME FOR DATAFILE 84 to '/data01/UAT05_instance/db/GLH_03.dbf';
SET NEWNAME FOR DATAFILE 85 to '/data01/UAT05_instance/db/GLH_I_02.dbf';
SET NEWNAME FOR DATAFILE 86 to '/data01/UAT05_instance/db/USER_DATA_03.dbf';
SET NEWNAME FOR DATAFILE 87 to '/data01/UAT05_instance/db/dms_02.dbf';
SET NEWNAME FOR DATAFILE 88 to '/data01/UAT05_instance/db/EBUSINESS_02.dbf';
SET NEWNAME FOR DATAFILE 89 to '/data01/UAT05_instance/db/CAS_11.dbf';
SET NEWNAME FOR DATAFILE 90 to '/data01/UAT05_instance/db/CASBAK_03.dbf';
SET NEWNAME FOR DATAFILE 91 to '/data01/UAT05_instance/db/CAS_12.dbf';
SET NEWNAME FOR DATAFILE 92 to '/data01/UAT05_instance/db/CAS_I_06.dbf';
SET NEWNAME FOR DATAFILE 93 to '/data01/UAT05_instance/db/KTS_KFCS_TABLE_01.dbf';
SET NEWNAME FOR DATAFILE 94 to '/data01/UAT05_instance/db/MSL_DIL01.dbf';
SET NEWNAME FOR DATAFILE 95 to '/data01/UAT05_instance/db/PPAS_01.dbf';
SET NEWNAME FOR DATAFILE 96 to '/data01/UAT05_instance/db/PPAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 97 to '/data01/UAT05_instance/db/DAP_01.dbf';
SET NEWNAME FOR DATAFILE 98 to '/data01/UAT05_instance/db/DAP_I_01.dbf';
SET NEWNAME FOR DATAFILE 99 to '/data01/UAT05_instance/db/YBT_DBS_01.dbf';
RESTORE DATABASE;
SWITCH DATAFILE ALL;
release channel ch00;
}

rman target / cmdfile rman_restore_uat05.cmd | tee rman_restore_uat05.log

run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
recover database ;
release channel ch00;
}

alter database rename file
'/data01/CAS_instance/db/CAS/redo01.log' to
'/data01/UAT05_instance/db/redo01.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo02.log' to
'/data01/UAT05_instance/db/redo02.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo03.log' to
'/data01/UAT05_instance/db/redo03.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo04.log' to
'/data01/UAT05_instance/db/redo04.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo05.log' to
'/data01/UAT05_instance/db/redo05.log';

alter database open resetlogs;

alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' drop;

alter tablespace temp add tempfile '/data01/UAT05_instance/db/temp_01.dbf' size 8G reuse;
alter tablespace IBMTEMP_TBS add tempfile '/data01/UAT05_instance/db/ibmtemp.data1' size 8G reuse;
alter tablespace TEMPORARY_DATA add tempfile '/data01/UAT05_instance/db/temporary_data_01.dbf' size 16G reuse;
--NID:
shutdown immediate;

startup mount;
nid target=/ dbname=UAT05
startup nomount
alter system set db_name=UAT05 scope=spfile;
alter system set db_unique_name=UAT05 scope=spfile;

shutdown immediate;
startup mount;
alter database noarchivelog;
alter database open resetlogs;

2015/11/27 15:42:22
--DEV04
create tablespace CDP datafile '/data01/DEV04_instance/db/CDP_01.dbf' size 1G autoextend on;
create user CDP identified by pku3gv7d default tablespace CDP;
grant connect,resource to CDP;
grant create job to cdp;
grant create procedure to CDP;
begin
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_RULE_OBJ, 'CDP');
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_RULE_SET_OBJ, 'CDP');
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_EVALUATION_CONTEXT_OBJ, 'CDP');
end;
/

--DEV05
create user CDP identified by pku3gv7d default tablespace CDP;
grant connect,create database link to CDP;
grant create procedure to CDP;
grant execute on dbms_lock to cdp;
create tablespace CDP datafile '/data01/DEV05_instance/db/CDP_01.dbf' size 1G autoextend on;
alter user cdp default tablespace cdp;
grant resource to cdp;
alter user cdp quota unlimited on cdp;
--Grant Create Chain to CDP
begin
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_RULE_OBJ, 'CDP');
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_RULE_SET_OBJ, 'CDP');
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_EVALUATION_CONTEXT_OBJ, 'CDP');
end;
/
drop database link to_cdp;
create database link to_cdp connect to cdp
  identified by "pku3gv7d"
  using '(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP) (HOST = 10.136.1.105 )(PORT = 1527 )))(CONNECT_DATA =(SERVICE_NAME =DEV04 )))';

2015/12/1 18:18:43

when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}
----- backup below ------

2015/12/1 20:22:39
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}

2015/12/2 11:29:07
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
DUMPFILE_HOME=/data01/DEV_instance/export/DEV04
DATETIME=`date +%Y%m%d%H%M%S`
export ORACLE_HOME=/tech/oracle/product/11.2.0/11204/dbhome_1
export ORACLE_SID=DEV04
export SCHEMA_NAME=CDP
export LIBPATH=$ORACLE_HOME/lib
$ORACLE_HOME/bin/expdp \'/ as sysdba\' directory=DMP_DEV04 dumpfile=${ORACLE_SID}_${SCHEMA_NAME}_$DATETIME.exp.dmp logfile=${ORACLE_SID}_${SCHEMA_NAME}_$DATETIME.exp.log SCHEMAS='CDP'
cd $DUMPFILE_HOME
gzip $DUMPFILE_HOME/*dmp
--'
/backup/util/oracle/URT/dev01_acru_reload.sh ACCU1401_1405_1310_1311.expdp.dmp accu1402 1402
impdp \'/ as sysdba\' directory=dmp dumpfile=ACCU1401_1405_1310_1311.expdp.dmp schemas=accu1402 exclude=index
--'

s @dev01_acru_reload 1403 accu1403

/backup/util/oracle/URT/dev01_acru_reload.sh ACCU1406_1502_1312.expdp.dmp accu1406 1406

2015/12/3 8:42:17
create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20151130_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
--reset password
declare
  v_profile varchar2(30);
  v_username varchar2(20):='&username';
  v_password varchar2(20):='&password';
BEGIN
  SELECT PROFILE INTO V_PROFILE FROM DBA_USERS WHERE USERNAME = upper(v_username);
  execute immediate 'alter profile '||v_profile||' limit PASSWORD_REUSE_TIME UNLIMITED';
  execute immediate 'alter user '||v_username||' identified by "'||v_password||'"';
  execute immediate 'alter profile '||v_profile||' limit PASSWORD_REUSE_TIME 360';
end;
/

2015/12/10 14:52:01
var tname varchar2(30);
exec :tname := dbms_sqltune.create_tuning_task(sql_id => '&sql_id');
print :tname
exec dbms_sqltune.execute_tuning_task(task_name => :tname);
select dbms_sqltune.report_tuning_task(:tname, 'TEXT', 'BASIC') FROM dual;
SET LONG 10000
SET LONGCHUNKSIZE 1000
SET LINESIZE 100
SELECT DBMS_SQLTUNE.REPORT_TUNING_TASK(':tname')
FROM DUAL;

/opt/IBM/ITM/bin/itmcmd agent -o sun stop or
/opt/IBM/ITM/bin/itmcmd agent -o CAS stop or

/opt/IBM/ITM/bin/itmcmd agent -o Eapprove stop or
/opt/IBM/ITM/bin/itmcmd agent -o Eapprove start or

2015/12/15 8:52:33
set linesize 200
set pagesize 100
col segment_name for a30
col segment_type for a15
col column_name for a15
select owner,
  segment_name,
  segment_type,
  to_char(sum(bytes) / 1024 / 1024, '999,999') size_mb,
  (select owner from dba_lobs where segment_name = ds1.segment_name) "OWNER",
  (select table_name
  from dba_lobs
  where segment_name = ds1.segment_name) "TABLE_NAME",
  (select column_name
  from dba_lobs
  where segment_name = ds1.segment_name) "COLUMN_NAME"
  from dba_segments ds1
 where tablespace_name = 'TS_EAPPROVAL'
  and segment_type = 'LOBSEGMENT'
 group by owner, segment_name, segment_type
having sum(bytes) / 1024 / 1024 > 1
 order by 4 desc;

alter table SIT_EAPPROVAL_RECEIPT.ALCO_RECEIPTS enable row movement;
alter table SIT_EAPPROVAL_RECEIPT.ALCO_RECEIPTS shrink space cascade; --561s
alter table SIT_EAPPROVAL_RECEIPT.ALCO_RECEIPTS disable row movement;

alter table SIT_EAPPROVAL_MAIN.ALCO_EXTERNAL_ATTACHMENT enable row movement;
alter table SIT_EAPPROVAL_MAIN.ALCO_EXTERNAL_ATTACHMENT shrink space cascade; --561s
alter table SIT_EAPPROVAL_MAIN.ALCO_EXTERNAL_ATTACHMENT disable row movement;

col Pct_Free for a10
col Pct_used for a10
col TABLESPACE_NAME for a18
select tablespace_name,
  megs_alloc,
  megs_free,
  megs_used,
  Pct_Free || '%' Pct_Free,
  Pct_used || '%' Pct_used
  from (select a.tablespace_name,
  round(a.bytes_alloc / 1024 / 1024) megs_alloc,
  round(nvl(b.bytes_free, 0) / 1024 / 1024) megs_free,
  round((a.bytes_alloc - nvl(b.bytes_free, 0)) / 1024 / 1024) megs_used,
  round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 100) Pct_Free,
  100 - round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 100) Pct_used,
  round(maxbytes / 1048576) Max
  from (select f.tablespace_name,
  sum(f.bytes) bytes_alloc,
  sum(decode(f.autoextensible,
  'YES',
  f.maxbytes,
  'NO',
  f.bytes)) maxbytes
  from dba_data_files f
  group by tablespace_name) a,
  (select f.tablespace_name, sum(f.bytes) bytes_free
  from dba_free_space f
  group by tablespace_name) b
  where a.tablespace_name = b.tablespace_name(+)
  and a.tablespace_name in ('TS_EAPPROVAL'));

2015/12/16 8:20:10
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_${ORACLE_SID}_201512116.expdp.dmp logfile=MF_${ORACLE_SID}_201512116.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,MF_MSL
--'
impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_UAT02_201512116.expdp.dmp logfile=MF_UAT02_201512116.impdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,MF_MSL
--'
2015/12/16 9:50:55
exec DBMS_SCHEDULER.PURGE_LOG(0);

2015/12/16 17:04:40
/tech/admin/dbssftp.sh
* * * * * /tech/admin/dbssftp.sh >/dev/null 2>&1

2015/12/17 8:51:03
rman target / cmdfile=rman_uat02.cmd |tee rman_uat02.log

run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
recover database ;
release channel ch00;
}

alter database rename file
'/data01/CAS_instance/db/CAS/redo01.log' to
'/data01/UAT02_instance/db/redo01.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo02.log' to
'/data01/UAT02_instance/db/redo02.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo03.log' to
'/data01/UAT02_instance/db/redo03.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo04.log' to
'/data01/UAT02_instance/db/redo04.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo05.log' to
'/data01/UAT02_instance/db/redo05.log';

alter database open resetlogs;

alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' drop;

alter tablespace temp add tempfile '/data01/UAT02_instance/db/temp_01.dbf' size 8G reuse;
alter tablespace IBMTEMP_TBS add tempfile '/data01/UAT02_instance/db/ibmtemp.data1' size 8G reuse;
alter tablespace TEMPORARY_DATA add tempfile '/data01/UAT02_instance/db/temporary_data_01.dbf' size 16G reuse;

--NID:
shutdown immediate;

startup mount;
nid target=/ dbname=UAT02
startup nomount
alter system set db_name=UAT02 scope=spfile;
alter system set db_unique_name=UAT02 scope=spfile;

shutdown immediate;
startup mount;
alter database noarchivelog;
alter database open resetlogs;

alter system set log_archive_dest_1='location=/data01/UAT_instance/export/arch';

select SERVERPROPERTY('productversion'),SERVERPROPERTY('productlevel')

2015/12/28 13:39:38
imp cas/casuat05201512a@uat05 file=U:\\CNDC-UAT05\030_SQL_Load\tfatca_pre_existing.dmp buffer=102400 feedback=100000 fromuser=cas touser=cas ignore=y

cat zf.txt|awk '{print $1,$2,$4,$7}'|sed s/'('//g |sed s/')'//g > zf1.txt

2015/12/31 8:05:48
create user "CIRCSYS"
IDENTIFIED BY PRODCIRCSYS_2015
DEFAULT TABLESPACE "CIRCSYS"
TEMPORARY TABLESPACE "TEMPORARY_DATA"
PROFILE "GENERAL_PROFILE_SP";

create tablespace CIRCSYS datafile '/data01/UAT02_instance/db/CIRCSYS_01.dbf' size 1G autoextend on;
grant resource,connect to CIRCSYS;
UNLIMITED TABLESPACE

2016/1/1 12:28:47
DATETIME=`date +%Y%m%d_%H%M%S`
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=GFS_${ORACLE_SID}_$DATETIME.exp.dmp logfile=GFS_${ORACLE_SID}_$DATETIME.exp.log SCHEMAS='GFS_RPT','GFS_V3'
--'
2016/1/1 22:29:57
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}

2015-PRD-005_CAS_DML_1040_tclaim_cal_rules

alter table glh.TGLH_POS_CERTIFICATES add (REL_TO_GRP VARCHAR2(2), ID_COPY_IND VARCHAR2(1))

ORA-01430: column being added already exists in table
alter table glh.TGLH_POS_CERTIFICATES add (ID_COPY_IND VARCHAR2(1));

alter table glh.tglh_client_certificate_links modify DDA_REL_TO_OWNER varchar2(10);

cas/tuc82zka@cas_Prod

imp cas/tuc82zka@cas_Prod file=E:\20160102_030_SQL_Load\tfatca_pre_existing.dmp buffer=102400 feedback=100000 fromuser=cas touser=cas ignore=y

2016/1/2 5:14:24
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);`
export datef=20160101_afterrelease
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
SQL> show parameter undo
NAME TYPE VALUE
------------------------------------ ----------- ------------------------------
undo_management string AUTO
undo_retention integer 10800
undo_tablespace string UNDOTBS1

2016/1/4 10:38:36
begin
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_RULE_OBJ, 'CAS');
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_RULE_SET_OBJ, 'CAS');
  DBMS_RULE_ADM.GRANT_SYSTEM_PRIVILEGE(DBMS_RULE_ADM.CREATE_EVALUATION_CONTEXT_OBJ, 'CAS');
end;
/

select * from dba_profiles where resource_name = 'IDLE_TIME';
PROFILE RESOURCE_NAME RESOURCE LIMIT
------------------------------ -------------------------------- -------- ----------------------------------------
DEFAULT IDLE_TIME KERNEL UNLIMITED
LIMITED_PROFILE IDLE_TIME KERNEL DEFAULT
SUSER IDLE_TIME KERNEL DEFAULT
GENERAL_PROFILE IDLE_TIME KERNEL 60
LIMITED_PROFILE_30 IDLE_TIME KERNEL 30
LIMITED_PROFILE_60 IDLE_TIME KERNEL 60
GENERAL_PROFILE_SP IDLE_TIME KERNEL DEFAULT
RESET_PASSWORD IDLE_TIME KERNEL UNLIMITED
LIMITED_PROFILE_15 IDLE_TIME KERNEL 15
EB_GENERAL_PROFILE IDLE_TIME KERNEL UNLIMITED

alter profile set RESET_PASSWORD limit IDLE_TIME 60;
alter profile set RESET_PASSWORD limit IDLE_TIME 60;

select * from tfunction_access_logs where app_cd = 'CICS'

2016/1/5 17:21:56
insert into tcic_sms_info (ROW_ID, AGENT_ID, SUBMIT_TIME, SENDER_ID, SCHEDULE_TIME, SEND_TIME, RECV_TIME, TYPE_FLAG, SEND_FLAG, MSG_TYPE, MSG, PRI, USER_ID, CAS_DT, RETRIES_CNT, RETURN_IND, CLI_NUM, SENDER_TYP, POL_NUM, TMPLT_ID, MAP_SEQ, SP_ID, MT_STATE, MT_STAT, MT_ERROR)
values (sms_row_id.nextval, 'SH00000', sysdate, '15900546838', sysdate, null, null, '0', '3', '003', 'test for FengZhou', 3, 'SYSTEM', null, 0, '0', null, null, null, null, null, null, null, null, null);

若有问题，可以尝试重启短信服务器3.118 CRMSMS服务

rman target / cmdfile rman_dev02.cmd | tee rman_dev02.log

2016/1/5 18:46:22

alter system set log_archive_dest_1='location=/data01/DEV_instance/export/arch';

run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
recover database ;
release channel ch00;
}

alter database rename file
'/data01/CAS_instance/db/CAS/redo01.log' to
'/data01/DEV02_instance/redo01.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo02.log' to
'/data01/DEV02_instance/redo02.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo03.log' to
'/data01/DEV02_instance/redo03.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo04.log' to
'/data01/DEV02_instance/redo04.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo05.log' to
'/data01/DEV02_instance/redo05.log';

alter database open resetlogs;

alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' drop;

alter tablespace temp add tempfile '/data01/DEV02_instance/temp_01.dbf' size 8G reuse;
alter tablespace IBMTEMP_TBS add tempfile '/data01/DEV02_instance/ibmtemp.data1' size 8G reuse;
alter tablespace TEMPORARY_DATA add tempfile '/data01/DEV02_instance/temporary_data_01.dbf' size 16G reuse;

--NID:
shutdown immediate;

startup mount;
nid target=/ dbname=DEV02
startup nomount
alter system set db_name=UAT02 scope=spfile;
alter system set db_unique_name=UAT02 scope=spfile;

shutdown immediate;
startup mount;
alter database noarchivelog;
alter database open resetlogs;

2016/1/6 14:08:43
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=iaoper_0710111415.dmp logfile=iaoper_0710111415.log tables='IAOPER.TEMP_LAAGENT','IAOPER.TEMP_LASALES','IAOPER.TEMP_LCBNF','IAOPER.TEMP_LCCONT','IAOPER.TEMP_LCINSUREACC','IAOPER.TEMP_LCINSURED','IAOPER.TEMP_LCPRODINSURELA','IAOPER.TEMP_LCPRODUCT','IAOPER.TEMP_LJAGETLIVBENE','IAOPER.TEMP_LJAPAY','IAOPER.TEMP_LJDIVDISTRIB','IAOPER.TEMP_LLBNF','IAOPER.TEMP_LLCLAIMPOLICY','IAOPER.TEMP_LCPOLTRANSACTION'
--'
impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=iaoper_0710111415.dmp logfile=iaoper_0710111415.impdp.log REMAP_SCHEMA=iaoper:zhoufeng REMAP_TABLESPACE=USER_DATA:CIRCSYS EXCLUDE=index,CONSTRAINT,OBJECT_GRANT,TABLE_STATISTICS
--'
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
nohup impdp \'/ as sysdba\' DIRECTORY=DATA_PUMP_DIR DUMPFILE=CAS%U_20160101_023421.expdp.dmp LOGFILE=CAS_20160101_023421_$ORACLE_SID.impdp.log PARALLEL=8 include=TABLE_STATISTICS &
--'
2016/1/7 18:01:49

alter system set log_archive_dest_1='location=/data01/DEV_instance/export/arch';
shutdown immediate;
startup nomount
alter system set db_name=CAS scope=spfile;
shutdown abort;
rman target / cmdfile=rman_dev03.cmd |tee rman_dev03.log
catalog start with '/data01/DEV_instance/export/arch';
run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
recover database ;
release channel ch00;
}

alter database rename file
'/data01/CAS_instance/db/CAS/redo01.log' to
'/data01/DEV03_instance/db/redo01.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo02.log' to
'/data01/DEV03_instance/db/redo02.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo03.log' to
'/data01/DEV03_instance/db/redo03.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo04.log' to
'/data01/DEV03_instance/db/redo04.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo05.log' to
'/data01/DEV03_instance/db/redo05.log';

alter database open resetlogs;

alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' drop;

alter tablespace temp add tempfile '/data01/DEV03_instance/db/temp_01.dbf' size 8G reuse;
alter tablespace IBMTEMP_TBS add tempfile '/data01/DEV03_instance/db/ibmtemp.data1' size 8G reuse;
alter tablespace TEMPORARY_DATA add tempfile '/data01/DEV03_instance/db/temporary_data_01.dbf' size 16G reuse;

--NID:
shutdown immediate;

startup mount;
nid target=/ dbname=DEV03
startup nomount
alter system set db_name=DEV03 scope=spfile;
alter system set db_unique_name=DEV03 scope=spfile;

shutdown immediate;
startup mount;
alter database noarchivelog;
alter database open resetlogs;

2016/1/8 10:51:09
drop user GFS_RPT cascade;
drop user GFS_V3 cascade;

impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=GFS_CAS_20160101_122924.exp.dmp schemas=GFS_V3 table_exists_action=truncate
--'
alter user gfs_rpt profile reset_password;
alter user GFS_RPT identified by gfs_rpt;

2016/1/12 15:57:10
USE [EBUS_SIT2]
GO
CREATE USER [zxhadmin] FOR LOGIN [zxhadmin]
GO
ALTER USER [zxhadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT EXECUTE ON [dbo].[AddCampaignSalesMan] TO [zxhadmin]
GO
GRANT EXECUTE ON [dbo].[InitCampaignSalesMan] TO [zxhadmin]
GO
USE [zxhdb]
GO
CREATE SYNONYM [dbo].[AddCampaignSalesMan] FOR [EBUS_SIT2].[dbo].[AddCampaignSalesMan]
GO
CREATE SYNONYM [dbo].[InitCampaignSalesMan] FOR [EBUS_SIT2].[dbo].[InitCampaignSalesMan]
GO

2016/1/12 16:00:10
0 5 * * 6,7 /usr/bin/su - oracle -c "/tech/admin/expdp_cas.sh" >> /dev/null 2>&1

2016/1/13 14:23:53
select rp.grantee,
  rp.GRANTED_ROLE,
  tp.owner,
  tp.table_name,
  tp.grantor,
  tp.privilege,
  tp.grantable
  --,'revoke '||privilege||' on '||owner||'.'||table_name||' from '||granted_role||';'
  from dba_tab_privs tp, dba_role_privs rp
 where rp.grantee = 'UAT_READ'
  and tp.grantee = rp.GRANTED_ROLE
  and privilege in ('INSERT','UPDATE','DELETE','ALTER');

2016/1/14 16:20:55
[oracle@CNXDV01:/backup/util/oracle/URT] $ sqlplus -s / as sysdba @/backup/util/oracle/URT/get_space_segment.sql TTRXN_LOGS CAS TABLE
Owner .................................. CAS
Name.................................... TTRXN_LOGS
Unformatted Blocks ..................... 0
FS1 Blocks (0-25) ...................... 2,364
FS2 Blocks (25-50) ..................... 598
FS3 Blocks (50-75) ..................... 522
FS4 Blocks (75-100)..................... 4,437,346
Full Blocks ............................ 1,598,321
Total Blocks............................ 6,045,440
Total Bytes............................. 49,524,244,480
Total MBytes............................ 47,230
Unused Blocks........................... 0
Unused Bytes............................ 0
Last Used Ext FileId.................... 21
Last Used Ext BlockId................... 2,926,473
Last Used Block......................... 8,192

alter table CAS.TTRXN_LOGS enable row movement;
alter table CAS.TTRXN_LOGS shrink space cascade;
alter table CAS.TTRXN_LOGS disable row movement;

select 'alter index ' || owner || '.' || index_name || ' rebuild TABLESPACE '||TABLESPACE_NAME||' PARALLEL 4;'
  from dba_indexes
 where status not in ('VALID', 'N/A')
 AND INDEX_NAME NOT LIKE 'SYS_%'
union all
Select 'alter index ' || index_owner || '.' || index_name ||
  ' rebuild PARTITION ' || PARTITION_name ||
  ' TABLESPACE '||TABLESPACE_NAME||' PARALLEL 4;'
  from dba_ind_partitions
  where status not in ('USABLE', 'N/A')
  AND INDEX_NAME NOT LIKE 'SYS_%'

2016/1/15 8:40:25
[oracle@CNXDV01:/home/oracle] $ sqlplus -s / as sysdba @/backup/util/oracle/URT/get_space_segment.sql TTRXN_LOGS CAS TABLE
Owner .................................. CAS
Name.................................... TTRXN_LOGS
Unformatted Blocks ..................... 0
FS1 Blocks (0-25) ...................... 5
FS2 Blocks (25-50) ..................... 607
FS3 Blocks (50-75) ..................... 577
FS4 Blocks (75-100)..................... 4,811,010
Full Blocks ............................ 1,226,952
Total Blocks............................ 6,045,440
Total Bytes............................. 49,524,244,480
Total MBytes............................ 47,230
Unused Blocks........................... 0
Unused Bytes............................ 0
Last Used Ext FileId.................... 21
Last Used Ext BlockId................... 2,926,473
Last Used Block......................... 8,192

-- DETERMINE IF THE TABLE CAN BE REDEFINED ONLINE
set serverout on
BEGIN
  DBMS_REDEFINITION.CAN_REDEF_TABLE('CAS','TTRXN_LOGS', DBMS_REDEFINITION.CONS_USE_ROWID);
END;
/
-- CREATE THE INTERIM TABLE
create table cas.TTRXN_LOGS_INTERIM
as
select * from CAS.TTRXN_LOGS where 1=0;
-- START THE REDEFINITION
BEGIN
  DBMS_REDEFINITION.START_REDEF_TABLE(
  uname => 'CAS',
  orig_table => 'TTRXN_LOGS',
  int_table => 'TTRXN_LOGS_INTERIM',
  options_flag => DBMS_REDEFINITION.CONS_USE_ROWID);
END;
/

-- COPY THE TABLE DEPENDENTS FROM THE ORIGINAL TABLE TO THE INTERIM TABLE
DECLARE
  error_count pls_integer := 0;
BEGIN
  DBMS_REDEFINITION.COPY_TABLE_DEPENDENTS('CAS', 'TTRXN_LOGS', 'TTRXN_LOGS_INTERIM', dbms_redefinition.cons_orig_params, TRUE,TRUE,TRUE,FALSE, error_count);
  DBMS_OUTPUT.PUT_LINE('errors := ' || TO_CHAR(error_count));
END;
/
-- DO ONE FINAL SYNCHRONIZE BEFORE FINISHING THE REDEFINITION
BEGIN
  DBMS_REDEFINITION.SYNC_INTERIM_TABLE('CAS', 'TTRXN_LOGS', 'TTRXN_LOGS_INTERIM');
END;
/
-- FINISH THE REDEFINITION
exec DBMS_REDEFINITION.FINISH_REDEF_TABLE('CAS','TTRXN_LOGS','TTRXN_LOGS_INTERIM');

Owner .................................. CAS
Name.................................... TTRXN_LOGS
Unformatted Blocks ..................... 0
FS1 Blocks (0-25) ...................... 0
FS2 Blocks (25-50) ..................... 0
FS3 Blocks (50-75) ..................... 0
FS4 Blocks (75-100)..................... 0
Full Blocks ............................ 1,435,180
Total Blocks............................ 1,440,768
Total Bytes............................. 11,802,771,456
Total MBytes............................ 11,256
Unused Blocks........................... 3,619
Unused Bytes............................ 29,646,848
Last Used Ext FileId.................... 21
Last Used Ext BlockId................... 3,042,441
Last Used Block......................... 1,373

[oracle@CNXDV01:/home/oracle] $ . oraenv
ORACLE_SID = [DEV05] ? DEV03
The Oracle base has been set to /tech/oracle/product/11.2.0
[oracle@CNXDV01:/home/oracle] $ sqlplus -s / as sysdba @/backup/util/oracle/URT/get_space_segment.sql TTRXN_LOGS CAS TABLE
Owner .................................. CAS
Name.................................... TTRXN_LOGS
Unformatted Blocks ..................... 0
FS1 Blocks (0-25) ...................... 5
FS2 Blocks (25-50) ..................... 607
FS3 Blocks (50-75) ..................... 577
FS4 Blocks (75-100)..................... 4,811,010
Full Blocks ............................ 1,226,952
Total Blocks............................ 6,045,440
Total Bytes............................. 49,524,244,480
Total MBytes............................ 47,230
Unused Blocks........................... 0
Unused Bytes............................ 0
Last Used Ext FileId.................... 21
Last Used Ext BlockId................... 2,926,473
Last Used Block......................... 8,192
[oracle@CNXDV01:/home/oracle] $ s

SQL*Plus: Release 11.2.0.4.0 Production on 星期五 1月 15 08:59:48 2016

Copyright (c) 1982, 2013, Oracle. All rights reserved.

Connected to:
Oracle Database 11g Enterprise Edition Release 11.2.0.4.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> set serverout on
SQL> BEGIN
  DBMS_REDEFINITION.CAN_REDEF_TABLE('CAS','TTRXN_LOGS', DBMS_REDEFINITION.CONS_USE_ROWID);
END;
/ 2 3 4

PL/SQL procedure successfully completed.

SQL> create table cas.TTRXN_LOGS_INTERIM
as
select * from CAS.TTRXN_LOGS where 1=0; 2 3

Table created.

SQL> BEGIN
  DBMS_REDEFINITION.START_REDEF_TABLE(
  uname => 'CAS',
  orig_table => 'TTRXN_LOGS',
  int_table => 'TTRXN_LOGS_INTERIM',
  options_flag => DBMS_REDEFINITION.CONS_USE_ROWID);
END;
/ 2 3 4 5 6 7 8

PL/SQL procedure successfully completed.

SQL> DECLARE
  2 error_count pls_integer := 0;
BEGIN
  DBMS_REDEFINITION.COPY_TABLE_DEPENDENTS('CAS', 'TTRXN_LOGS', 'TTRXN_LOGS_INTERIM', dbms_redefinition.cons_orig_params, TRUE,TRUE,TRUE,FALSE, error_count);
  DBMS_OUTPUT.PUT_LINE('errors := ' || TO_CHAR(error_count));
END;
/ 3 4 5 6 7
errors := 0

PL/SQL procedure successfully completed.

SQL> BEGIN
  DBMS_REDEFINITION.SYNC_INTERIM_TABLE('CAS', 'TTRXN_LOGS', 'TTRXN_LOGS_INTERIM');
END;
/ 2 3 4

PL/SQL procedure successfully completed.

SQL> exec DBMS_REDEFINITION.FINISH_REDEF_TABLE('CAS','TTRXN_LOGS','TTRXN_LOGS_INTERIM');

PL/SQL procedure successfully completed.

SQL> @/backup/util/oracle/URT/get_space_segment.sql TTRXN_LOGS CAS TABLE
Owner .................................. CAS
Name.................................... TTRXN_LOGS
Unformatted Blocks ..................... 0
FS1 Blocks (0-25) ...................... 0
FS2 Blocks (25-50) ..................... 0
FS3 Blocks (50-75) ..................... 0
FS4 Blocks (75-100)..................... 0
Full Blocks ............................ 1,435,180
Total Blocks............................ 1,440,768
Total Bytes............................. 11,802,771,456
Total MBytes............................ 11,256
Unused Blocks........................... 3,619
Unused Bytes............................ 29,646,848
Last Used Ext FileId.................... 21
Last Used Ext BlockId................... 3,042,441
Last Used Block......................... 1,373
Disconnected from Oracle Database 11g Enterprise Edition Release 11.2.0.4.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
[oracle@CNXDV01:/home/oracle] $ s

SQL*Plus: Release 11.2.0.4.0 Production on 星期五 1月 15 09:53:16 2016

Copyright (c) 1982, 2013, Oracle. All rights reserved.

Connected to:
Oracle Database 11g Enterprise Edition Release 11.2.0.4.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> . oraenv
SP2-0042: unknown command ". oraenv" - rest of line ignored.
SQL> drop table cas.TTRXN_LOGS_INTERIM
  2 /

Table dropped.

SQL>

2016/1/20 14:23:38
/oracle/jdk1.7.0_80/bin/keytool -list -keystore /oracle/Middleware/user_projects/domains/ipad_domain/weblogic_identity.jks
/oracle/jdk1.7.0_80/bin/keytool -list -keystore /oracle/jdk1.7.0_80/jre/lib/security/cacerts

alter database add logfile member '/data01/DEV02_instance/db/redo01.log' reuse to group 1 ;
alter database add logfile member '/data01/DEV02_instance/db/redo02.log' reuse to group 2 ;
alter database add logfile member '/data01/DEV02_instance/db/redo03.log' reuse to group 3 ;
alter database add logfile member '/data01/DEV02_instance/db/redo04.log' reuse to group 4 ;
alter database add logfile member '/data01/DEV02_instance/db/redo05.log' reuse to group 5 ;

alter database drop logfile member '/data01/DEV02_instance/redo01.log';
alter database drop logfile member '/data01/DEV02_instance/redo02.log';
alter database drop logfile member '/data01/DEV02_instance/redo03.log';
alter database drop logfile member '/data01/DEV02_instance/redo04.log';
alter database drop logfile member '/data01/DEV02_instance/redo05.log';

2016/2/1 8:31:31
impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=CAS%U_20150104_174653.expdp.dmp REMAP_SCHEMA=cas:zhoufeng parfile=fatca.par
--'
create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);'`
--'
export datef=20160131_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=${ORACLE_SID}_$datef.expdp.log parallel=8 full=y &
--'
2016/2/1 19:04:49
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_3.100_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_3.100_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
}

2016/2/1 21:58:02
[oracle@CNX02:/home/oracle] $ ps -ef|grep tns
  oracle 15270180 1 0 Nov 22 - 44:16 /tech/oracle/product/11.2.0.4/dbhome_1/bin/tnslsnr LISTENER -inherit
  oracle 11272862 32571658 0 21:57:57 pts/0 0:00 grep tns
  oracle 24576652 1 0 Nov 22 - 31:19 /tech/oracle/product/11.2.0.4/dbhome_1/bin/tnslsnr LISTENER_Eapprove -inherit

export ORACLE_HOME=/tech/oracle/product/11.2.0/11204/tghome_1
/tech/oracle/product/11.2.0/11204/tghome_1/bin/lsnrctl start LISTENER_DG4MSQL

  /tech/oracle/product/11.2.0/11204/tghome_1/bin/lsnrctl stop LISTENER_DG4MSQL

 /usr/bin/su - oracle -c "/tech/hascripts/lsnr_dg4msql_stop.sh"

 2016/2/2 15:15:06
expdp \'/ as sysdba\' directory=data_pump_dir dumpfile=zf_baojiancunliang.expdp.dmp logifle=zf_baojiancunliang.expdp.log schemas=ZHOUFENG
--'
--添加省市县 未知 代码990000
insert into ldcode values('pr_sitecode','990000','未知','','86','');

--县的映射配置 未知
  update ldcodemapping set targetcode='990000',targetcodename='未知' where targetcode='000000' and codetype='pr_sitecode';

expdp \'/ as sysdba\' directory=dmp dumpfile=`hostname`_${ORACLE_SID}_init.expdp.dmp logfile=`hostname`_${ORACLE_SID}_init.expdp.log full=y
--'
drop user sit_dci_main cascade;
impdp \'/ as sysdba\' directory=dmp dumpfile=cnxut03_eapprove_full_20151222.dmp logfile=cnxut03_eapprove_full_20151222_sit_dci_main2013.impdp.log schemas=sit_dci_main
--'
conn sit_dci_main/sit_dci_main2013

grant select on v_$mystat to glh with grant option;
grant select on v_$session to glh with grant option;
grant select on v_$process to glh with grant option;
grant select on v_$thread to glh with grant option;
grant select on v_$parameter to glh with grant option;

2016/2/4 15:15:43
[oracle@CNX01A:/data01/CAS_instance/db/CAS] $ df -g|head -1;df -g|grep db
Filesystem GB blocks Free %Used Iused %Iused Mounted on
/dev/CASlv 1200.00 86.01 93% 117 1% /data01/CAS_instance/db

alter database datafile '/data01/CAS_instance/db/CAS/EAPS_I_01.dbf' resize 3072m;
alter database datafile '/data01/CAS_instance/db/CAS/GFS_I_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/GFS_NEW_I_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/GFS_V3_I_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/KTS_FSMS01.DBF' resize 128m;
alter database datafile '/data01/CAS_instance/db/CAS/KTS_FSMS_HIS01.DBF' resize 128m;
alter database datafile '/data01/CAS_instance/db/CAS/KTS_MF_MSL01.DBF' resize 128m;
alter database datafile '/data01/CAS_instance/db/CAS/PERFSTAT_01.dbf' resize 128m;
alter database datafile '/data01/CAS_instance/db/CAS/PPAS_01.dbf' resize 512m;
alter database datafile '/data01/CAS_instance/db/CAS/PPAS_I_01.dbf' resize 512m;
alter database datafile '/data01/CAS_instance/db/CAS/TM_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/TM_I_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/TOOLS_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/YBT_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/YBT_BOC_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/YBT_CCB_SH_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/YBT_DBS_01.dbf' resize 256m;
alter database datafile '/data01/CAS_instance/db/CAS/YBT_I_01.dbf' resize 256m;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' resize 1174m;
alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' resize 3072m;
alter database datafile '/data01/CAS_instance/db/CAS/CAS_I_01.dbf' resize 25G;
alter database datafile '/data01/CAS_instance/db/CAS/CAS_I_06.dbf' resize 15G;

alter database datafile '/data01/CAS_instance/db/CAS/GLH_01.dbf' resize 20G;
alter database datafile '/data01/CAS_instance/db/CAS/AMS_01.dbf' resize 22G;
alter database datafile '/data01/CAS_instance/db/CAS/GLH_03.dbf' resize 16G;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' resize 24G;

create index CASBAK.I_TNT_PROG_HIS_BK_01 on CASBAK.TNT_PROGRESS_HISTORIES_BK (pol_num) tablespace casbak;

oracle 5374654 0.0 0.0 193124 97192 - A 07:20:20 0:00 oracleEapprove

expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_20160215_${ORACLE_SID}.expdp.dmp LOGFILE=MF_DATA_20160215_${ORACLE_SID}.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl
--'
drop user kd_bank cascade;
drop user kd_com cascade;
drop user kd_his cascade;
drop user kd_sale cascade;
impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=MF_DATA_20160215_CAS.expdp.dmp schemas=kd_sale
--,kd_his,kd_com,kd_bank
--'
impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=MF_DATA_20160215_CAS.expdp.dmp \
tables=kd_sale.cfg_ta,kd_sale.cfg_sysconfig,kd_sale.sys_flowchart,kd_sale.sys_flowrecord,kd_sale.send_msg \
table_exists_action=truncate
--'
alter user KD_BANK identified by KD_BANK002 account unlock;
alter user KD_HIS identified by KD_HIS002 account unlock;
alter user KD_COM identified by KD_COM002 account unlock;
alter user KD_SALE identified by KD_SALE002 account unlock;

alter table kd_sale.SEND_MSG ADD APPSERIALNO VARCHAR2(32) default '';

kd_sale/lkg3jdx3
kd_com/dk031kzm
kd_his/oeitiq11
kd_bank/lso01zep

conn kd_sale/lkg3jdx3
@mf_mask/kd_clear_sale_scripts.lst

conn kd_com/dk031kzm
@mf_mask/kd_clear_com_scripts.lst

conn kd_his/oeitiq11
@mf_mask/kd_clear_his_scripts.lst

conn kd_bank/lso01zep
@mf_mask/kd_clear_bank_scripts.lst

exp kd_bank/lso01zep@dev05 file=dev05_sale_bank1.dmp log=dev05_sale_bank1.dmp.log
exp kd_com/dk031kzm@dev05 file=dev05_sale_com1.dmp log=dev05_sale_com1.dmp.log
exp kd_his/oeitiq11@dev05 file=dev05_sale_his1.dmp log=dev05_sale_his1.dmp.log
exp kd_sale/lkg3jdx3@dev05 file=dev05_sale1.dmp log=dev05_sale1.dmp.log

2016/2/18 13:41:39
Invoice Approval Fails with Error ORA-29471:Dbms_sql Access Denied after upgrading to 11g (Doc ID 1259725.1)

col parameter for a50
set linesize 200
select x.ksppinm parameter, y.ksppstvl value from x$ksppi x , x$ksppcv y
where x.indx = y.indx and x.ksppinm like '%security_level%'
order by x.ksppinm;

select segment_name,sum(bytes)/1024/1024 from dba_segments where segment_name = 'AUD$'
group by segment_name

2016/3/1 8:41:53
create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20160229_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2016/3/1 18:57:54

when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_11.182_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
}

 expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_UAT05_20160302.expdp.dmp LOGFILE=MF_DATA_UAT05_20160302.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl
 expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_UAT03_20160302.expdp.dmp LOGFILE=MF_DATA_UAT03_20160302.expdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl
--'
select * from kd_sale.KD_USERID where userid=8888 for update;
USERCODE USERPWD
system DJSc5aAkDEpqF12mhGgCxQ== Passowrd123

drop user kfcs cascade;
drop user mf_msl cascade;

 impdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=MF_DATA_UAT05_20160302.expdp.dmp LOGFILE=MF_DATA_UAT05_20160302.impdp.log schemas=kd_sale,kd_his,kd_com,kd_bank,kfcs,mf_msl
--'
2016/3/3 16:31:23
20150522

impdp \'/ as sysdba\' DIRECTORY=DATA_PUMP_DIR DUMPFILE=CAS%U_20160229_afterbatch.expdp.dmp PARALLEL=8 INCLUDE=STATISTICS
--'
2016/3/16 13:37:40

imp \'/ as sysdba\' file=sfm_ds.dmp log=sfm_ds.imp.log fromuser=sfm_ds touser=sfm_ds
imp \'/ as sysdba\' file=sfm_trade.dmp log=sfm_trade.imp.log fromuser=sfm_trade touser=sfm_trade
imp \'/ as sysdba\' file=sfm_qsxt.dmp log=sfm_qsxt.imp.log fromuser=sfm_qsxt touser=sfm_qsxt
imp \'/ as sysdba\' file=sfm_paygate.dmp log=sfm_paygate.imp.log fromuser=sfm_paygate touser=sfm_paygate
imp \'/ as sysdba\' file=sfm_spirit.dmp log=sfm_spirit.imp.log fromuser=sfm_spirit touser=sfm_spirit
imp \'/ as sysdba\' file=sfm_salemeet.dmp log=sfm_salemeet.imp.log fromuser=sfm_salemeet touser=sfm_salemeet
imp \'/ as sysdba\' file=sfm_aml.dmp log=sfm_aml.imp.log fromuser=sfm_aml touser=sfm_aml
imp \'/ as sysdba\' file=sfm_web.dmp log=sfm_web.imp.log fromuser=sfm_web touser=sfm_web
--'
create tablespace sfm_ds datafile '/data01/DEV06_instance/db/sfm_ds01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;
create tablespace sfm_trade datafile '/data01/DEV06_instance/db/sfm_trade01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;
create tablespace sfm_qsxt datafile '/data01/DEV06_instance/db/sfm_qsxt01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;
create tablespace sfm_paygate datafile '/data01/DEV06_instance/db/sfm_paygate01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;
create tablespace sfm_spirit datafile '/data01/DEV06_instance/db/sfm_spirit01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;
create tablespace sfm_aml datafile '/data01/DEV06_instance/db/sfm_aml01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;
create tablespace sfm_web datafile '/data01/DEV06_instance/db/sfm_web01.dbf' size 200M autoextend on maxsize UNLIMITED extent management local segment space management auto;

create tablespace sfm datafile '/data01/DEV06_instance/db/sfm_01.dbf' size 1G autoextend on maxsize UNLIMITED extent management local segment space management auto;

alter profile GENERAL_PROFILE limit PASSWORD_VERIFY_FUNCTION null;
create user sfm_ds_sit01 identified by sfm_ds_sit01 default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_ds_sit01;
grant create view to SFM_DS_SIT01;
grant create procedure to SFM_DS_SIT01;
grant create synonym to SFM_DS_SIT01;

create user sfm_simta_sit01 identified by sfm_simta_sit01 default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_simta_sit01;
grant create view to sfm_simta_sit01;;
grant create procedure to sfm_simta_sit01;;
grant create synonym to sfm_simta_sit01;;

create user sfm_ds identified by sfm_ds default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_ds;

create user sfm_qsxt identified by sfm_qsxt default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_qsxt;

create user sfm_trade identified by sfm_trade default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_trade;

create user sfm_paygate identified by sfm_paygate default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_paygate;

create user sfm_salemeet identified by sfm_salemeet default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_salemeet;

create user sfm_spirit identified by sfm_spirit default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_spirit;

create user sfm_aml identified by sfm_aml default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_aml;

create user sfm_web identified by sfm_web default tablespace sfm profile GENERAL_PROFILE;
grant connect,resource to sfm_web;
alter profile GENERAL_PROFILE limit PASSWORD_VERIFY_FUNCTION SF_PWD_VER;

：sfm_simta_sit01和sfm_ds_sit01

expdp \'/ as sysdba\' directory=dmp dumpfile=sfm_init.dmp logfile=sfm_init.exp.log schemas='SFM_AML','SFM_DS','SFM_PAYGATE','SFM_TRADE','SFM_SALEMEET','SFM_WEB','SFM_QSXT','SFM_SPIRIT'
--'
create tablespace sfm datafile '/data01/DEV05_instance/db/sfm_01.dbf' size 1G autoextend on ;
alter tablespace sfm add datafile '/data01/DEV05_instance/db/sfm_02.dbf' size 1G autoextend on;
alter tablespace sfm add datafile '/data01/DEV05_instance/db/sfm_03.dbf' size 1G autoextend on;

impdp \'/ as sysdba\' directory=dmp dumpfile=sfm_init.dmp logfile=sfm_init_${ORACLE_SID}_`date +%Y%m%d`.imp.log \
remap_tablespace=SFM_DS:SFM,SFM_TRADE:SFM,SFM_QSXT:SFM,SFM_PAYGATE:SFM,SFM_SPIRIT:SFM,SFM_AML:SFM,SFM_WEB:SFM,USERS:SFM
--'
impdp \'/ as sysdba\' directory=dmp dumpfile=sfm_init.dmp logfile=sfm_init_${ORACLE_SID}_`date +%Y%m%d`.imp.log \
remap_schema=SFM_DS:SFM_DS_SIT01 \
schemas=SFM_DS \
remap_tablespace=SFM_DS:SFM,SFM_TRADE:SFM,SFM_QSXT:SFM,SFM_PAYGATE:SFM,SFM_SPIRIT:SFM,SFM_AML:SFM,SFM_WEB:SFM,USERS:SFM
--'
2016/3/17 9:01:54
impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_20160226_153349.expdp.dmp tables=CAS.TDBS_IDPS_DTLS remap_schema=cas:zhoufeng

create table "CAS"."TDBS_IDPS_DTLS_0228"
tablespace cas
as
select * from "ZHOUFENG"."TDBS_IDPS_DTLS";

2016/3/17 17:00:23
imp zhoufeng/Pa44w02d@tcas file=D:\MON20061231_aft\aft\sh20061229.dmp log=D:\MON20061231_aft\aft\sh20061229.dmp.imp.log fromuser=gfs touser=GFS_20061229
imp zhoufeng/Pa44w02d@tcas file=D:\MONTHEND20070630_AFT\sh20070630.dmp log=D:\MONTHEND20070630_AFT\sh20070630.dmp.imp.log fromuser=gfs touser=GFS_20061229
--'
export NLS_LANG=AMERICAN_AMERICA.ZHS16GBK
expdp \'/ as sysdba\' directory=dmp dumpfile=gfs_history.dmp logfile=gfs_history.exp.log schemas=GFS_20061229,GFS_20070630
impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=gfs_history.dmp logfile=gfs_history.imp.log
--'
2016/3/22 16:23:13
/usr/bin/su - oracle -c "/tech/hascripts/dbctrl.sh stop sun1"

mailx -r CNX01_CAS@manulife-sinochem.com -s MSL_Prod_DB_check_report feng_zhou@manulife-sinochem.com zfzhou@cn.ibm.com < /backup/util/oracle/URT/demo.txt

(echo "Content-Type: text/html";cat /backup/util/oracle/URT/demo.txt)|/usr/sbin/sendmail feng_zhou@manulife-sinochem.com zfzhou@cn.ibm.com

 declare
  conn utl_smtp.connection;
  g_email_service_enabled varchar2(1) ;
  g_sys_email_address varchar2(100) ;

  pi_recipients varchar2(200) := 'andy_zhang@manulife-sinochem.com;feng_zhou@manulife-sinochem.com';
  pi_subject varchar2(100) := 'UAT-TEST';

  pi_message varchar2(2000) := '<html>
<body>
<table border = 0 width = 600 >
<tr>Month-To-Date APE Report</tr>
<tr><td>Reporting Date : </td><td>2016/01/30 10:37:01 </td></tr>
<tr><td>CAS Date : </td><td>2016/01/31 </td></tr>
<tr><td>Date Range : </td><td>2016/01/01 - 2016/01/31 </td></tr>

<tr><td></td><td width = 200>Net</td><td width = 200>Target</td><td width = 200>Achieve</td></tr>
<tr><td>Channel</td><td>APE(000)</td> <td>APE(000)</td><td>Rate(%)</td> </tr>
<tr><td>------------------</td><td> ---------</td><td> --------- </td><td>-------</td> </tr>

</table>

</body>
</html>';

  PROCEDURE get_parm(pi_parm_typ IN VARCHAR2,
  pi_terr_cd IN VARCHAR2 DEFAULT '1',
  po_parm_desc OUT VARCHAR2) IS
  CURSOR c_parm_valu IS
  SELECT parm_desc
  FROM tcontrol_parameters
  WHERE (terr_cd = '1' OR terr_cd = nvl(terr_fcn.get_terr_cd,SF_GET_TERR_CD(user)))
  AND parm_typ = pi_parm_typ;
  BEGIN
  OPEN c_parm_valu;
  FETCH c_parm_valu INTO po_parm_desc;
  CLOSE c_parm_valu;
  END get_parm;
  BEGIN

  cas_email.init_pkg;
  ctl_parm.get('EMAIL_SERVICE_ENABLED',g_email_service_enabled);
  get_parm('SYS_EMAIL_ADDRESS','1',g_sys_email_address);

  dbms_output.put_line(g_email_service_enabled);
  dbms_output.put_line(g_sys_email_address);

  conn := cas_email.begin_mail(g_sys_email_address, pi_recipients, pi_subject,'text/html');
  cas_email.write_mb_text(conn, pi_message);
  cas_email.end_mail(conn);

  EXCEPTION
  WHEN OTHERS THEN
  dbms_output.put_line(sqlerrm);
  END ;

 2016/3/24 11:51:13
 DECLARE
  l_acl_name VARCHAR2(30) := 'mail_acl.xml';
  l_ftp_server_ip1 VARCHAR2(20) := '10.136.3.4'; --Report Server IP address
  l_username1 VARCHAR2(30) := 'CAS';
  l_username2 VARCHAR2(30) := 'CONNECT';
BEGIN
  DBMS_NETWORK_ACL_ADMIN.create_acl(acl => l_acl_name,
  description => '',
  principal => l_username1,
  is_grant => TRUE,
  privilege => 'connect',
  start_date => SYSTIMESTAMP,
  end_date => NULL);
  DBMS_NETWORK_ACL_ADMIN.add_privilege(acl => l_acl_name,
  principal => l_username2,
  is_grant => TRUE,
  privilege => 'connect',
  start_date => SYSTIMESTAMP,
  end_date => NULL);
  COMMIT;

  DBMS_NETWORK_ACL_ADMIN.assign_acl(acl => l_acl_name,
  host => l_ftp_server_ip1,
  lower_port => 25,
  upper_port => 25);

  COMMIT;
END;
/

2016/3/29 16:22:40
create user GFS_20081231 identified by GFS_20081231 default tablespace gfs profile reset_password;
grant connect,resource to GFS_20081231;
imp zhoufeng/Pa44w02d@uat01 file=D:\MONTHEND20090101_BEF\sh20081231.dmp log=D:\MONTHEND20090101_BEF\sh20081231.dmp.imp.log fromuser=gfs touser=GFS_20081231

2016/3/31 17:00:41
begin
  dbms_scheduler.create_job(job_name => 'CAS.LOG20160266',
  job_type => 'PLSQL_BLOCK',
  job_action => 'begin
  UPDATE tplans x
  SET x.eapp_excl_ind = ''Y''
  WHERE x.plan_code in
  (''AAA08'',
  ''AAB08'',
  ''AAC08'',
  ''AAD08'',
  ''AAE08'',
  ''AAF08'');
  commit;
  end;',
  start_date => to_date('01-04-2016 00:00:00', 'dd-mm-yyyy hh24:mi:ss'),
  end_date => to_date(null),
  enabled => true,
  auto_drop => true,
  comments => '');
end;

2016/4/1 12:50:16
create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);'`
export datef=20160331_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2016/4/1 21:23:44
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_11.182_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
}

expdp \'/ as sysdba\' parfile=prip.par
--'
2016/4/8 18:01:40

create undo tablespace UNDOTBS2 datafile '/data01/CAS_instance/db/CAS/undotbs2_01.dbf' size 1G autoextend ON;

alter system set undo_tablespace=UNDOTBS2;

drop tablespace UNDOTBS1 including contents;

/*select 'alter tablespace ' || tablespace_name || ' add datafile ''' ||
  file_name || ''' size ' || trunc(bytes / 1024 / 1024 / 1024) ||
  'G autoextend ' || autoextensible || ';'
  from dba_data_files
 where tablespace_name = 'UNDOTBS1'*/

create UNDO tablespace UNDOTBS1 datafile '/data01/CAS_instance/db/CAS/undotbs_01.dbf' size 20G reuse autoextend ON;
alter tablespace UNDOTBS1 add datafile '/data01/CAS_instance/db/CAS/undotbs_02.dbf' size 17G reuse autoextend ON;
alter tablespace UNDOTBS1 add datafile '/data01/CAS_instance/db/CAS/undotbs_03.dbf' size 18G reuse autoextend ON;
alter tablespace UNDOTBS1 add datafile '/data01/CAS_instance/db/CAS/undotbs_04.dbf' size 18G reuse autoextend ON;

alter system set undo_tablespace=UNDOTBS1;

drop tablespace UNDOTBS2 including contents and datafiles;

df -g

2016/4/8 19:36:01 -- 海闻
create tablespace vatmgr datafile '/data01/UAT02_instance/db/vatmgr_01.dbf' size 1G;

create user vatmgr identified by Password123 default tablespace vatmgr
temporary tablespace TEMPORARY_DATA profile EB_GENERAL_PROFILE;.

grant connect,resource to vatmgr;

impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=BXDBKF_20160406.DMP logfile=BXDBKF_20160406.DMP.impdp.log \
remap_schema=BXUSER:VATMGR \
REMAP_TABLESPACE=TS_DATA_PTX:VATMGR,TS_IDX_PTX:VATMGR,TS_DATA_BUSI:VATMGR,TS_IDX_BUSI:VATMGR,TS_DATA_ODS:VATMGR,TS_IDX_ODS:VATMGR,TS_DATA_LOB:VATMGR,TS_PTX_TEMP:TEMPORARY_DATA
--'
2016/4/14 8:22:42 -- 百望
create tablespace skdata datafile '/data01/sunuat_instance/db/sun/skdata_01.dbf' size 1G;

create user skdata identified by Password123 default tablespace skdata profile general_profile_360;

grant connect,resource to skdata ;
grant create view to skdata;

2016/4/14 18:24:55
impdp \'/ as sysdba\' parfile=prip_imp.par
--'
Hi Support,

Acutally the production application access using ODBC and invoke the program. It can insert a row in the table, but the new row's column were not updated by trigger as expecting.So the ODBC driver can connect database normal.

impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=BXDBKF_20160406.DMP logfile=BXDBKF_20160406.DMP.impdp.log \
remap_schema=BXUSER:VATMGR \
REMAP_TABLESPACE=TS_DATA_PTX:VATMGR,TS_IDX_PTX:VATMGR,TS_DATA_BUSI:VATMGR,TS_IDX_BUSI:VATMGR,TS_DATA_ODS:VATMGR,TS_IDX_ODS:VATMGR,TS_DATA_LOB:VATMGR,TS_PTX_TEMP:TEMPORARY_DATA
--'
create tablespace vatmgr datafile '/data01/UAT02_instance/db/vatmgr_01.dbf' size 1G;

create user vatmgr identified by Password123 default tablespace vatmgr
temporary tablespace TEMPORARY_DATA profile GENERAL_PROFILE;.

grant connect,resource to vatmgr;

skdata

create tablespace skdata datafile '/data01/sun_instance/db/sun/skdata_01.dbf' size 1G autoextend on;

create user skdata identified by kdia39az default tablespace skdata ;

grant connect,resource to skdata ;
grant create view to skdata;

--gm8xvxpppgmd0
SQL_ID PLAN_HASH_VALUE 平均逻辑读 平均执行时间(s) 执行次数 DISK_READS/EXECUTIONS ROWS_PROCESSED/EXECUTIONS
------------- --------------- ---------- --------------- ---------- --------------------- -------------------------
gm8xvxpppgmd0 1589901298 234158.162 32.8335745 388 0 1

SELECT Z.POL_NUM,
  Z.PLAN_CODE,
  '02' MAIN_CAT,
  '01' SUB_CAT,
  Z.AMOUNT,
  Z.APE_AMT
  FROM (SELECT /*+ LEADING(C) use_hash(b) USE_NL(A) push_pred(a) */
  B.POL_NUM,
  A.PLAN_CODE,
  SUM(NVL(A.LOCAL_APE_PREM, A.DSCNT_PREM)) AMOUNT,
  SUM(NVL(A.APE_PREM, A.DSCNT_PREM)) APE_AMT
  FROM VPLAN_COVERAGES A, TPOLICYS B, TPLANS C
  WHERE A.CVG_EFF_DT = B.POL_EFF_DT
  AND IS_STAT_APE_INCLUDE(A.CVG_STAT_CD) = 'Y'
  AND B.POL_ISS_DT BETWEEN :B1 AND :B2
  AND A.POL_NUM = B.POL_NUM
  AND C.PLAN_CODE = A.PLAN_CODE
  AND C.VERS_NUM = A.VERS_NUM
  AND C.CRCY_CODE = B.CRCY_CODE
  AND NVL(C.APE_SNGL_PREM_IND, C.SNGL_PREM_IND) = 'Y'
  AND PKG_MIS_ANP.IS_MLI_LN_BUS_23(C.PROD_CAT,
  NVL(C.APE_SNGL_PREM_IND,
  C.SNGL_PREM_IND),
  C.INS_TYP,
  C.PLAN_CODE) = '23'
  GROUP BY B.POL_NUM, A.PLAN_CODE
  ORDER BY B.POL_NUM) Z

fnqxysdc2jf7b
bfcxfbjsm788j
SQL_ID PLAN_HASH_VALUE 平均逻辑读 平均执行时间(s) 执行次数 DISK_READS/EXECUTIONS ROWS_PROCESSED/EXECUTIONS
------------- --------------- ---------- --------------- ---------- --------------------- -------------------------
bfcxfbjsm788j 1589901298 234128.258 45.7455318 388 .007731959 80117.2191

SELECT Z.POL_NUM,
  Z.PLAN_CODE,
  '01' MAIN_CAT,
  '02' SUB_CAT,
  Z.AMOUNT,
  Z.APE_AMT
  FROM (SELECT /*+ LEADING(B) push_pred(a) USE_NL(A) */
  B.POL_NUM,
  A.PLAN_CODE,
  SUM(ROUND(DECODE(NVL(DECODE(C.PROD_CAT, 'U', 'Y', 'N'), 'N') ||
  NVL(DECODE(B.TERR_CD, 'TW', 'Y', 'N'), 'N') ||
  NVL(DECODE(A.CVG_TYP, 'B', 'Y', 'N'), 'N'),
  'YYY',
  (A.DSCNT_PCT / 100) * B.PLAN_PREM * 12 / PMT_MODE,
  NVL(A.LOCAL_APE_PREM, A.DSCNT_PREM) * 12 / PMT_MODE),
  2)) AMOUNT,
  SUM(ROUND(DECODE(NVL(DECODE(C.PROD_CAT, 'U', 'Y', 'N'), 'N') ||
  NVL(DECODE(B.TERR_CD, 'TW', 'Y', 'N'), 'N') ||
  NVL(DECODE(A.CVG_TYP, 'B', 'Y', 'N'), 'N'),
  'YYY',
  (A.DSCNT_PCT / 100) * B.PLAN_PREM * 12 / PMT_MODE,
  NVL(A.APE_PREM, A.DSCNT_PREM) * 12 / PMT_MODE),
  2)) APE_AMT
  FROM VPLAN_COVERAGES A, TPOLICYS B, TPLANS C
  WHERE A.CVG_EFF_DT = B.POL_EFF_DT
  AND IS_STAT_APE_INCLUDE(A.CVG_STAT_CD) = 'Y'
  AND B.POL_ISS_DT BETWEEN :B2 AND :B1
  AND A.POL_NUM = B.POL_NUM
  AND C.PLAN_CODE = A.PLAN_CODE
  AND C.VERS_NUM = A.VERS_NUM
  AND C.CRCY_CODE = B.CRCY_CODE
  AND NVL(C.APE_SNGL_PREM_IND, C.SNGL_PREM_IND) = 'N'
  AND PKG_MIS_ANP.IS_MLI_LN_BUS_23(C.PROD_CAT,
  NVL(C.APE_SNGL_PREM_IND,
  C.SNGL_PREM_IND),
  C.INS_TYP,
  C.PLAN_CODE) <> '23'
  GROUP BY B.POL_NUM, A.PLAN_CODE
  ORDER BY B.POL_NUM) Z

17kkg3vsjmdsu
SQL_ID PLAN_HASH_VALUE 平均逻辑读 平均执行时间(s) 执行次数 DISK_READS/EXECUTIONS ROWS_PROCESSED/EXECUTIONS
------------- --------------- ---------- --------------- ---------- --------------------- -------------------------
17kkg3vsjmdsu 1589901298 233762.17 30.9829727 506 61.7035573 3646.77273

SELECT Z.POL_NUM,
  Z.PLAN_CODE,
  '01' MAIN_CAT,
  '01' SUB_CAT,
  Z.AMOUNT,
  Z.APE_AMT
  FROM (SELECT /*+ LEADING(C) use_hash(b) USE_NL(A) push_pred(a) */
  B.POL_NUM,
  A.PLAN_CODE,
  SUM(NVL(A.LOCAL_APE_PREM, A.DSCNT_PREM)) AMOUNT,
  SUM(NVL(A.APE_PREM, A.DSCNT_PREM)) APE_AMT
  FROM VPLAN_COVERAGES A, TPOLICYS B, TPLANS C
  WHERE A.CVG_EFF_DT = B.POL_EFF_DT
  AND IS_STAT_APE_INCLUDE(A.CVG_STAT_CD) = 'Y'
  AND B.POL_ISS_DT BETWEEN :B2 AND :B1
  AND A.POL_NUM = B.POL_NUM
  AND C.PLAN_CODE = A.PLAN_CODE
  AND C.VERS_NUM = A.VERS_NUM
  AND C.CRCY_CODE = B.CRCY_CODE
  AND NVL(C.APE_SNGL_PREM_IND, C.SNGL_PREM_IND) = 'Y'
  AND PKG_MIS_ANP.IS_MLI_LN_BUS_23(C.PROD_CAT,
  NVL(C.APE_SNGL_PREM_IND,
  C.SNGL_PREM_IND),
  C.INS_TYP,
  C.PLAN_CODE) <> '23'
  GROUP BY B.POL_NUM, A.PLAN_CODE
  ORDER BY B.POL_NUM) Z

SQL_ID PLAN_HASH_VALUE 平均逻辑读 平均执行时间(s) 执行次数 DISK_READS/EXECUTIONS ROWS_PROCESSED/EXECUTIONS FIRST_LOAD_TIME
------------- --------------- ---------- --------------- ---------- --------------------- ------------------------- --------------------------------------
duua8db6ftcbp 1981051755 249589.842 .967235658 38 .052631579 0 2016-04-02/09:57:14
bfcxfbjsm788j 1589901298 233939.116 45.570337 404 .007425743 79737.3342 2016-03-02/07:15:08
17kkg3vsjmdsu 1589901298 233912.345 30.9777325 510 61.2196078 3654.67451 2016-03-02/07:14:40
gm8xvxpppgmd0 1589901298 234168.779 32.9092077 403 0 1 2016-03-02/07:16:11

expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=skdata_0414.dmp logfile=skdata_0414.log schemas=skdata
--'
CREATE DATABASE [eed]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'eed', FILENAME = N'D:\DBData\eed.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'eed_log', FILENAME = N'D:\DBData\eed_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE ElixirDataService_Log
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'ElixirDataService_Log', FILENAME = N'D:\DBData\ElixirDataService_Log.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'ElixirDataService_Log_log', FILENAME = N'D:\DBData\ElixirDataService_Log_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE lportal
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'lportal', FILENAME = N'D:\DBData\lportal.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'lportal_log', FILENAME = N'D:\DBData\lportal_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE lportal35
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'lportal35', FILENAME = N'D:\DBData\lportal35.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'lportal35_log', FILENAME = N'D:\DBData\lportal35_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangoidm]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangoidm', FILENAME = N'D:\DBData\tangoidm.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangoidm_log', FILENAME = N'D:\DBData\tangoidm_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangoidm35]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangoidm35', FILENAME = N'D:\DBData\tangoidm35.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangoidm35_log', FILENAME = N'D:\DBData\tangoidm35_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangomessaging]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangomessaging', FILENAME = N'D:\DBData\tangomessaging.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangomessaging_log', FILENAME = N'D:\DBData\tangomessaging_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangomessaging35]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangomessaging35', FILENAME = N'D:\DBData\tangomessaging35.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangomessaging35_log', FILENAME = N'D:\DBData\tangomessaging35_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangoproduction]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangoproduction', FILENAME = N'D:\DBData\tangoproduction.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangoproduction_log', FILENAME = N'D:\DBData\tangoproduction_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangoproduction35]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangoproduction35', FILENAME = N'D:\DBData\tangoproduction35.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangoproduction35_log', FILENAME = N'D:\DBData\tangoproduction35_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangoreports]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangoreports', FILENAME = N'D:\DBData\tangoreports.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangoreports_log', FILENAME = N'D:\DBData\tangoreports_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

CREATE DATABASE [tangoreports35]
 CONTAINMENT = NONE
 ON PRIMARY
( NAME = N'tangoreports35', FILENAME = N'D:\DBData\tangoreports35.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'tangoreports35_log', FILENAME = N'D:\DBData\tangoreports35_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

USE [master]
GO
CREATE LOGIN [ecpuser] WITH PASSWORD=N'ecpuser4uat', DEFAULT_DATABASE=ElixirDataService_Log, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
--ALTER SERVER ROLE [sysadmin] ADD MEMBER [ecpuser]
--GO
ALTER LOGIN [ecpuser] DEFAULT_DATABASE=ElixirDataService_Log, CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
USE [eed]
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE [eed]
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [eed]
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE ElixirDataService_Log
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE ElixirDataService_Log
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE ElixirDataService_Log
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE lportal
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE lportal
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE lportal
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE lportal35
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE lportal35
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE lportal35
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangoidm
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangoidm
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangoidm
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangoidm35
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangoidm35
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangoidm35
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangomessaging
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangomessaging
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangomessaging
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangomessaging35
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangomessaging35
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangomessaging35
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangoproduction
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangoproduction
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangoproduction
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangoproduction35
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangoproduction35
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangoproduction35
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangoreports
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangoreports
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangoreports
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE tangoreports35
GO
CREATE USER [ecpuser] FOR LOGIN [ecpuser]
GO
USE tangoreports35
GO
ALTER USER [ecpuser] WITH DEFAULT_SCHEMA=[dbo]
GO
USE tangoreports35
GO
ALTER ROLE [db_owner] ADD MEMBER [ecpuser]
GO

USE [master]
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'lportal'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'eed'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'lportal35'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangoidm'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangoidm35'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangomessaging'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangomessaging35'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangoproduction'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangoproduction35'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangoreports'
GO

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'tangoreports35'
GO

DROP DATABASE lportal
GO

DROP DATABASE eed
GO

DROP DATABASE lportal35
GO

DROP DATABASE tangoidm
GO

DROP DATABASE tangoidm35
GO

DROP DATABASE tangomessaging
GO

DROP DATABASE tangomessaging35
GO

DROP DATABASE tangoproduction
GO

DROP DATABASE tangoproduction35
GO

DROP DATABASE tangoreports
GO

DROP DATABASE tangoreports35
GO

2016/4/25 8:33:20
set linesize 200
col segment_name for a30
with t as (select to_char(sysdate,'yy-mm-dd') C_DATE,segment_name,
  segment_type,
  tablespace_name,
  round(sum(bytes) / 1024 / 1024 / 1024,2) size_gb
  from dba_segments
 where tablespace_name = 'SYSTEM'
 group by segment_name, segment_type, tablespace_name
 --having sum(bytes) / 1024 / 1024 / 1024>1
 order by size_gb desc)
 select * from t where rownum<11

 2016-05-02 20:45:13
 ------ init -----
 when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_11.182_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
}

--------------During release----------------------
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_11.182_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
}

2016-05-02 23:56:11
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20160502_afterrelease
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2016-05-09 15:13:55
shutdown immediate
startup nomount
alter system set db_name=CAS scope=spfile;
shutdown abort
startup nomount;
run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
restore controlfile from 'cntrl_21584_1_911459416';
release channel ch00;
}
alter database mount;
run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
SET NEWNAME FOR DATAFILE 1 to '/data01/UAT05_instance/db/system_01.dbf';
SET NEWNAME FOR DATAFILE 2 to '/data01/UAT05_instance/db/undotbs_01.dbf';
SET NEWNAME FOR DATAFILE 3 to '/data01/UAT05_instance/db/sysaux_01.dbf';
SET NEWNAME FOR DATAFILE 4 to '/data01/UAT05_instance/db/users_01.dbf';
SET NEWNAME FOR DATAFILE 5 to '/data01/UAT05_instance/db/ibmitm.data1';
SET NEWNAME FOR DATAFILE 6 to '/data01/UAT05_instance/db/ACS_01.dbf';
SET NEWNAME FOR DATAFILE 7 to '/data01/UAT05_instance/db/ACS_I_01.dbf';
SET NEWNAME FOR DATAFILE 8 to '/data01/UAT05_instance/db/AMS_01.dbf';
SET NEWNAME FOR DATAFILE 9 to '/data01/UAT05_instance/db/AMS_02.dbf';
SET NEWNAME FOR DATAFILE 10 to '/data01/UAT05_instance/db/AMS_I_01.dbf';
SET NEWNAME FOR DATAFILE 11 to '/data01/UAT05_instance/db/APS_01.dbf';
SET NEWNAME FOR DATAFILE 12 to '/data01/UAT05_instance/db/APSCFG_01.dbf';
SET NEWNAME FOR DATAFILE 13 to '/data01/UAT05_instance/db/APS_I_01.dbf';
SET NEWNAME FOR DATAFILE 14 to '/data01/UAT05_instance/db/CAS_01.dbf';
SET NEWNAME FOR DATAFILE 15 to '/data01/UAT05_instance/db/CAS_02.dbf';
SET NEWNAME FOR DATAFILE 16 to '/data01/UAT05_instance/db/CAS_03.dbf';
SET NEWNAME FOR DATAFILE 17 to '/data01/UAT05_instance/db/CAS_04.dbf';
SET NEWNAME FOR DATAFILE 18 to '/data01/UAT05_instance/db/CAS_05.dbf';
SET NEWNAME FOR DATAFILE 19 to '/data01/UAT05_instance/db/CAS_06.dbf';
SET NEWNAME FOR DATAFILE 20 to '/data01/UAT05_instance/db/CAS_07.dbf';
SET NEWNAME FOR DATAFILE 21 to '/data01/UAT05_instance/db/CAS_08.dbf';
SET NEWNAME FOR DATAFILE 22 to '/data01/UAT05_instance/db/CAS_09.dbf';
SET NEWNAME FOR DATAFILE 23 to '/data01/UAT05_instance/db/CAS_10.dbf';
SET NEWNAME FOR DATAFILE 24 to '/data01/UAT05_instance/db/CASBAK_01.dbf';
SET NEWNAME FOR DATAFILE 25 to '/data01/UAT05_instance/db/CASBAK_02.dbf';
SET NEWNAME FOR DATAFILE 26 to '/data01/UAT05_instance/db/CAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 27 to '/data01/UAT05_instance/db/CAS_I_02.dbf';
SET NEWNAME FOR DATAFILE 28 to '/data01/UAT05_instance/db/CAS_I_03.dbf';
SET NEWNAME FOR DATAFILE 29 to '/data01/UAT05_instance/db/CAS_I_04.dbf';
SET NEWNAME FOR DATAFILE 30 to '/data01/UAT05_instance/db/CCNT_01.dbf';
SET NEWNAME FOR DATAFILE 31 to '/data01/UAT05_instance/db/CCNT_I_01.dbf';
SET NEWNAME FOR DATAFILE 32 to '/data01/UAT05_instance/db/CICS_01.dbf';
SET NEWNAME FOR DATAFILE 33 to '/data01/UAT05_instance/db/CICS_I_01.dbf';
SET NEWNAME FOR DATAFILE 34 to '/data01/UAT05_instance/db/EAPS_01.dbf';
SET NEWNAME FOR DATAFILE 35 to '/data01/UAT05_instance/db/EBUSINESS_01.dbf';
SET NEWNAME FOR DATAFILE 36 to '/data01/UAT05_instance/db/EBUSINESS_I_01.dbf';
SET NEWNAME FOR DATAFILE 37 to '/data01/UAT05_instance/db/FAS_01.dbf';
SET NEWNAME FOR DATAFILE 38 to '/data01/UAT05_instance/db/FAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 39 to '/data01/UAT05_instance/db/FUNDXZT_01.dbf';
SET NEWNAME FOR DATAFILE 40 to '/data01/UAT05_instance/db/GFS_01.dbf';
SET NEWNAME FOR DATAFILE 41 to '/data01/UAT05_instance/db/GFS_I_01.dbf';
SET NEWNAME FOR DATAFILE 42 to '/data01/UAT05_instance/db/GFS_NEW_01.dbf';
SET NEWNAME FOR DATAFILE 43 to '/data01/UAT05_instance/db/GFS_NEW_I_01.dbf';
SET NEWNAME FOR DATAFILE 44 to '/data01/UAT05_instance/db/GFS_V3_01.dbf';
SET NEWNAME FOR DATAFILE 45 to '/data01/UAT05_instance/db/GFS_V3_I_01.dbf';
SET NEWNAME FOR DATAFILE 46 to '/data01/UAT05_instance/db/GLH_01.dbf';
SET NEWNAME FOR DATAFILE 47 to '/data01/UAT05_instance/db/GLH_02.dbf';
SET NEWNAME FOR DATAFILE 48 to '/data01/UAT05_instance/db/GLH_I_01.dbf';
SET NEWNAME FOR DATAFILE 49 to '/data01/UAT05_instance/db/GP_01.dbf';
SET NEWNAME FOR DATAFILE 50 to '/data01/UAT05_instance/db/GP_I_01.dbf';
SET NEWNAME FOR DATAFILE 51 to '/data01/UAT05_instance/db/IAS_01.dbf';
SET NEWNAME FOR DATAFILE 52 to '/data01/UAT05_instance/db/IAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 53 to '/data01/UAT05_instance/db/LEON_01.dbf';
SET NEWNAME FOR DATAFILE 54 to '/data01/UAT05_instance/db/MIS_01.dbf';
SET NEWNAME FOR DATAFILE 55 to '/data01/UAT05_instance/db/MIS_I_01.dbf';
SET NEWNAME FOR DATAFILE 56 to '/data01/UAT05_instance/db/PERFSTAT_01.dbf';
SET NEWNAME FOR DATAFILE 57 to '/data01/UAT05_instance/db/PMDX_01.dbf';
SET NEWNAME FOR DATAFILE 58 to '/data01/UAT05_instance/db/TM_01.dbf';
SET NEWNAME FOR DATAFILE 59 to '/data01/UAT05_instance/db/TM_I_01.dbf';
SET NEWNAME FOR DATAFILE 60 to '/data01/UAT05_instance/db/TOOLS_01.dbf';
SET NEWNAME FOR DATAFILE 61 to '/data01/UAT05_instance/db/USER_DATA_01.dbf';
SET NEWNAME FOR DATAFILE 62 to '/data01/UAT05_instance/db/USER_DATA_02.dbf';
SET NEWNAME FOR DATAFILE 63 to '/data01/UAT05_instance/db/WRK_DATA_01.dbf';
SET NEWNAME FOR DATAFILE 64 to '/data01/UAT05_instance/db/YBT_01.dbf';
SET NEWNAME FOR DATAFILE 65 to '/data01/UAT05_instance/db/YBT_BOC_01.dbf';
SET NEWNAME FOR DATAFILE 66 to '/data01/UAT05_instance/db/YBT_CCB_SH_01.dbf';
SET NEWNAME FOR DATAFILE 67 to '/data01/UAT05_instance/db/YBT_I_01.dbf';
SET NEWNAME FOR DATAFILE 68 to '/data01/UAT05_instance/db/YBT_MSL_01.dbf';
SET NEWNAME FOR DATAFILE 69 to '/data01/UAT05_instance/db/YBT_SINO_01.dbf';
SET NEWNAME FOR DATAFILE 70 to '/data01/UAT05_instance/db/dms.dbf';
SET NEWNAME FOR DATAFILE 71 to '/data01/UAT05_instance/db/dms_i.dbf';
SET NEWNAME FOR DATAFILE 72 to '/data01/UAT05_instance/db/undotbs_02.dbf';
SET NEWNAME FOR DATAFILE 73 to '/data01/UAT05_instance/db/KTS_KD_SALE01.DBF';
SET NEWNAME FOR DATAFILE 74 to '/data01/UAT05_instance/db/KTS_KD_COM01.DBF';
SET NEWNAME FOR DATAFILE 75 to '/data01/UAT05_instance/db/KTS_KD_HIS01.DBF';
SET NEWNAME FOR DATAFILE 76 to '/data01/UAT05_instance/db/KTS_KD_BANK01.DBF';
SET NEWNAME FOR DATAFILE 77 to '/data01/UAT05_instance/db/KTS_FSMS01.DBF';
SET NEWNAME FOR DATAFILE 78 to '/data01/UAT05_instance/db/KTS_FSMS_HIS01.DBF';
SET NEWNAME FOR DATAFILE 79 to '/data01/UAT05_instance/db/KTS_MF_MSL01.DBF';
SET NEWNAME FOR DATAFILE 80 to '/data01/UAT05_instance/db/undotbs_03.dbf';
SET NEWNAME FOR DATAFILE 81 to '/data01/UAT05_instance/db/undotbs_04.dbf';
SET NEWNAME FOR DATAFILE 82 to '/data01/UAT05_instance/db/EAPS_I_01.dbf';
SET NEWNAME FOR DATAFILE 83 to '/data01/UAT05_instance/db/CAS_I_05.dbf';
SET NEWNAME FOR DATAFILE 84 to '/data01/UAT05_instance/db/GLH_03.dbf';
SET NEWNAME FOR DATAFILE 85 to '/data01/UAT05_instance/db/GLH_I_02.dbf';
SET NEWNAME FOR DATAFILE 86 to '/data01/UAT05_instance/db/USER_DATA_03.dbf';
SET NEWNAME FOR DATAFILE 87 to '/data01/UAT05_instance/db/dms_02.dbf';
SET NEWNAME FOR DATAFILE 88 to '/data01/UAT05_instance/db/EBUSINESS_02.dbf';
SET NEWNAME FOR DATAFILE 89 to '/data01/UAT05_instance/db/CAS_11.dbf';
SET NEWNAME FOR DATAFILE 90 to '/data01/UAT05_instance/db/CASBAK_03.dbf';
SET NEWNAME FOR DATAFILE 91 to '/data01/UAT05_instance/db/CAS_12.dbf';
SET NEWNAME FOR DATAFILE 92 to '/data01/UAT05_instance/db/CAS_I_06.dbf';
SET NEWNAME FOR DATAFILE 93 to '/data01/UAT05_instance/db/KTS_KFCS_TABLE_01.dbf';
SET NEWNAME FOR DATAFILE 94 to '/data01/UAT05_instance/db/MSL_DIL01.dbf';
SET NEWNAME FOR DATAFILE 95 to '/data01/UAT05_instance/db/PPAS_01.dbf';
SET NEWNAME FOR DATAFILE 96 to '/data01/UAT05_instance/db/PPAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 97 to '/data01/UAT05_instance/db/DAP_01.dbf';
SET NEWNAME FOR DATAFILE 98 to '/data01/UAT05_instance/db/DAP_I_01.dbf';
SET NEWNAME FOR DATAFILE 99 to '/data01/UAT05_instance/db/YBT_DBS_01.dbf';
SET NEWNAME FOR DATAFILE 100 to '/data01/UAT05_instance/db/CIRCSYS_01.dbf';
SET NEWNAME FOR DATAFILE 101 to '/data01/UAT05_instance/db/undotbs_05.dbf';
RESTORE DATABASE;
SWITCH DATAFILE ALL;
release channel ch00;
}

--------------------
run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
recover database until sequence 86182;
release channel ch00;
}

alter database rename file
'/data01/CAS_instance/db/CAS/redo01.log' to
'/data01/UAT05_instance/db/redo01.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo02.log' to
'/data01/UAT05_instance/db/redo02.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo03.log' to
'/data01/UAT05_instance/db/redo03.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo04.log' to
'/data01/UAT05_instance/db/redo04.log';

alter database rename file
'/data01/CAS_instance/db/CAS/redo05.log' to
'/data01/UAT05_instance/db/redo05.log';

alter database open resetlogs;

alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' drop;

alter tablespace temp add tempfile '/data01/UAT05_instance/db/temp_01.dbf' size 8G reuse;
alter tablespace IBMTEMP_TBS add tempfile '/data01/UAT05_instance/db/ibmtemp.data1' size 8G reuse;
alter tablespace TEMPORARY_DATA add tempfile '/data01/UAT05_instance/db/temporary_data_01.dbf' size 8G reuse;

shutdown immediate;

startup mount;
nid target=/ dbname=UAT05
startup nomount
alter system set db_name=UAT05 scope=spfile;
alter system set db_unique_name=UAT05 scope=spfile;

shutdown immediate;
startup mount;
alter database noarchivelog;
alter database open resetlogs;

with t as
 (select substr(name, 1, 23) name
  from v$datafile
  union
  select substr(name, 1, 23) name
  from v$tempfile
  union
  select substr(name, 1, 23) name
  from v$controlfile
  union
  select substr(member, 1, 23) name
  from v$logfile)
select * from t;

2016-05-10 20:19:16
select trunc(first_time, 'hh24') time,
  numtodsinterval(avg(next_time - first_time), 'day') duration
  from v$archived_log
 where first_time > trunc(sysdate) - 1
  and first_time < trunc(sysdate)
 group by trunc(first_time, 'hh24')
 order by 1;
select trunc(first_time, 'hh24') time,
  numtodsinterval(avg(next_time - first_time), 'day') duration --,avg(filesize) filesize
  from v$backup_archivelog_details
 where first_time > to_date(&date, 'yyyymmdd') - 1
  and first_time < to_date(&date, 'yyyymmdd')
 group by trunc(first_time, 'hh24')
 order by 1

2016-05-11 15:39:39 --海闻log20160558
create tablespace vatmgr datafile '/data01/CAS_instance/db/CAS/vatmgr_01.dbf' size 1G autoextend on;

create user vatmgr identified by vnahty2016 default tablespace vatmgr
temporary tablespace TEMPORARY_DATA profile EB_GENERAL_PROFILE;

alter user vatmgr quota unlimited on vatmgr;

grant connect,resource to vatmgr;
grant create view to vatmgr;
grant create job to vatmgr;
GRANT CREATE MATERIALIZED VIEW TO vatmgr;

grant SELECT on tvat_client_details to ROLE_PROD_READ_01,vatmgr;
grant SELECT on tvat_invoice_pool to ROLE_PROD_READ_01,vatmgr;
grant SELECT on tvat_invoice to ROLE_PROD_READ_01,vatmgr;
GRANT execute ON cas_vat_invoice_utl TO universal,vatmgr;

imp cas@cas_prod file=E:\temp\zhrsscdb_20160511.dump log=E:\temp\zhrsscdb_20160511.imp.log fromuser=vatdev touser=vatmgr
----------
expdp \'/ as sysdba\' directory=data_pump_dir dumpfile=vatmgr_${ORACLE_SID}.dmp logfile=vatmgr_${ORACLE_SID}.expdp.log schemas=vatmgr
impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=vatmgr_UAT02.dmp logfile=vatmgr_${ORACLE_SID}.impdp.log schemas=vatmgr
--'
2016-05-13 13:54:30
begin
dbms_scheduler.drop_job(job_name => 'CAS.LOG20160524_22');

  dbms_scheduler.create_job(job_name => 'CAS.LOG20160524_22',
  job_type => 'PLSQL_BLOCK',
  job_action => 'begin
  update tproducts
  set cmp_active_ind = ''Y'', nb_active_ind = ''Y''
  where prod_code = ''CCP'';
  update tplan_chnl_terr_mappings
  set cmp_eff_to_dt = to_date(''2999-12-31'',''yyyy-mm-dd'')
  where plan_code like ''CCP%''
  and vers_num = ''13'';
 update tplans a set EAPP_EXCL_IND = ''Y'' where a.plan_shrt_cd = ''CCP'';
 commit;
end;',
  start_date => to_date('15-05-2016 22:00:05', 'dd-mm-yyyy hh24:mi:ss'),
  end_date => to_date(null),
  enabled => true,
  auto_drop => true,
  comments => '2016_CCP_9000_DML_Open_1');
end;
/
begin
dbms_scheduler.drop_job(job_name => 'CAS.LOG20160524_24');

  dbms_scheduler.create_job(job_name => 'CAS.LOG20160524_24',
  job_type => 'PLSQL_BLOCK',
  job_action => 'begin
  update tplans a set EAPP_EXCL_IND = ''N'' where a.plan_shrt_cd = ''CCP'';
  commit;
end;',
  start_date => to_date('16-05-2016 00:00:05', 'dd-mm-yyyy hh24:mi:ss'),
  end_date => to_date(null),
  enabled => true,
  auto_drop => true,
  comments => '2016_CCP_9000_DML_Open_2');
end;
/

2016-05-17 15:17:00
sqlplus zhoufeng/zaq11qaz@dev06 @reload_kd_sale_xn.sql
 imp zhoufeng/zaq11qaz@dev06 file=\\10.136.3.73\data\databackup\dx\20160517_sale1.dmp log=c:\cas_search\20160517_sale1.log fromuser=kd_sale touser=kd_sale_xn

select custname,certificateno from kd_sale_xn.ACCT_CUST;

2016-05-30 8:57:32
mount 10.136.7.100:/backup /backup

2016-05-30 10:37:40
Dear Tony,

e-Approval系统这次的上线，系统新建了两张表，这部分的工作是可以提前进行的，能否在今明两天帮我们完成并完成权限设置，谢谢！

From：

UAT Server：10.136.1.106
Table：
1）ALPS_RECEIPT_TYPE，无需导入内容
2）ALPS_EXPENSE_TAX_DEDUCT_MAP，导入表内容

To：

Production Server：10.136.4.104
Table：
1）ALPS_RECEIPT_TYPE
2）ALPS_EXPENSE_TAX_DEDUCT_MAP

2016-05-30 18:53:13
alter system set log_buffer='109240320'
2016-05-30 20:04:04
TDMS_POS_WRK_BCH_TMP;
2016-05-30 21:26:55
cas.tlcs_doc_def

2016-05-31 15:22:43
10.136.3.173
mov/mcodve2016
insurance

2016-06-01 9:24:46
create or replace directory DATA_PUMP_DIR as '/data01/UAT_instance/export';
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);'`
export datef=20160531_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2016-06-01 16:03:34
=== backup ===
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_11.182_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
}
=== ====

=== 0601 release version ===
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_8.23_9090
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
}
==== =====

2016-06-02 6:59:42
shutdown immediate
startup nomount
alter system set db_name=CAS scope=spfile;
shutdown abort
startup nomount;
run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
SET NEWNAME FOR DATAFILE 1 to '/data01/DEV02_instance/db/system_01.dbf';
SET NEWNAME FOR DATAFILE 2 to '/data01/DEV02_instance/db/undotbs_01.dbf';
SET NEWNAME FOR DATAFILE 3 to '/data01/DEV02_instance/db/sysaux_01.dbf';
SET NEWNAME FOR DATAFILE 4 to '/data01/DEV02_instance/db/users_01.dbf';
SET NEWNAME FOR DATAFILE 5 to '/data01/DEV02_instance/db/ibmitm.data1';
SET NEWNAME FOR DATAFILE 6 to '/data01/DEV02_instance/db/ACS_01.dbf';
SET NEWNAME FOR DATAFILE 7 to '/data01/DEV02_instance/db/ACS_I_01.dbf';
SET NEWNAME FOR DATAFILE 8 to '/data01/DEV02_instance/db/AMS_01.dbf';
SET NEWNAME FOR DATAFILE 9 to '/data01/DEV02_instance/db/AMS_02.dbf';
SET NEWNAME FOR DATAFILE 10 to '/data01/DEV02_instance/db/AMS_I_01.dbf';
SET NEWNAME FOR DATAFILE 11 to '/data01/DEV02_instance/db/APS_01.dbf';
SET NEWNAME FOR DATAFILE 12 to '/data01/DEV02_instance/db/APSCFG_01.dbf';
SET NEWNAME FOR DATAFILE 13 to '/data01/DEV02_instance/db/APS_I_01.dbf';
SET NEWNAME FOR DATAFILE 14 to '/data01/DEV02_instance/db/CAS_01.dbf';
SET NEWNAME FOR DATAFILE 15 to '/data01/DEV02_instance/db/CAS_02.dbf';
SET NEWNAME FOR DATAFILE 16 to '/data01/DEV02_instance/db/CAS_03.dbf';
SET NEWNAME FOR DATAFILE 17 to '/data01/DEV02_instance/db/CAS_04.dbf';
SET NEWNAME FOR DATAFILE 18 to '/data01/DEV02_instance/db/CAS_05.dbf';
SET NEWNAME FOR DATAFILE 19 to '/data01/DEV02_instance/db/CAS_06.dbf';
SET NEWNAME FOR DATAFILE 20 to '/data01/DEV02_instance/db/CAS_07.dbf';
SET NEWNAME FOR DATAFILE 21 to '/data01/DEV02_instance/db/CAS_08.dbf';
SET NEWNAME FOR DATAFILE 22 to '/data01/DEV02_instance/db/CAS_09.dbf';
SET NEWNAME FOR DATAFILE 23 to '/data01/DEV02_instance/db/CAS_10.dbf';
SET NEWNAME FOR DATAFILE 24 to '/data01/DEV02_instance/db/CASBAK_01.dbf';
SET NEWNAME FOR DATAFILE 25 to '/data01/DEV02_instance/db/CASBAK_02.dbf';
SET NEWNAME FOR DATAFILE 26 to '/data01/DEV02_instance/db/CAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 27 to '/data01/DEV02_instance/db/CAS_I_02.dbf';
SET NEWNAME FOR DATAFILE 28 to '/data01/DEV02_instance/db/CAS_I_03.dbf';
SET NEWNAME FOR DATAFILE 29 to '/data01/DEV02_instance/db/CAS_I_04.dbf';
SET NEWNAME FOR DATAFILE 30 to '/data01/DEV02_instance/db/CCNT_01.dbf';
SET NEWNAME FOR DATAFILE 31 to '/data01/DEV02_instance/db/CCNT_I_01.dbf';
SET NEWNAME FOR DATAFILE 32 to '/data01/DEV02_instance/db/CICS_01.dbf';
SET NEWNAME FOR DATAFILE 33 to '/data01/DEV02_instance/db/CICS_I_01.dbf';
SET NEWNAME FOR DATAFILE 34 to '/data01/DEV02_instance/db/EAPS_01.dbf';
SET NEWNAME FOR DATAFILE 35 to '/data01/DEV02_instance/db/EBUSINESS_01.dbf';
SET NEWNAME FOR DATAFILE 36 to '/data01/DEV02_instance/db/EBUSINESS_I_01.dbf';
SET NEWNAME FOR DATAFILE 37 to '/data01/DEV02_instance/db/FAS_01.dbf';
SET NEWNAME FOR DATAFILE 38 to '/data01/DEV02_instance/db/FAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 39 to '/data01/DEV02_instance/db/FUNDXZT_01.dbf';
SET NEWNAME FOR DATAFILE 40 to '/data01/DEV02_instance/db/GFS_01.dbf';
SET NEWNAME FOR DATAFILE 41 to '/data01/DEV02_instance/db/GFS_I_01.dbf';
SET NEWNAME FOR DATAFILE 42 to '/data01/DEV02_instance/db/GFS_NEW_01.dbf';
SET NEWNAME FOR DATAFILE 43 to '/data01/DEV02_instance/db/GFS_NEW_I_01.dbf';
SET NEWNAME FOR DATAFILE 44 to '/data01/DEV02_instance/db/GFS_V3_01.dbf';
SET NEWNAME FOR DATAFILE 45 to '/data01/DEV02_instance/db/GFS_V3_I_01.dbf';
SET NEWNAME FOR DATAFILE 46 to '/data01/DEV02_instance/db/GLH_01.dbf';
SET NEWNAME FOR DATAFILE 47 to '/data01/DEV02_instance/db/GLH_02.dbf';
SET NEWNAME FOR DATAFILE 48 to '/data01/DEV02_instance/db/GLH_I_01.dbf';
SET NEWNAME FOR DATAFILE 49 to '/data01/DEV02_instance/db/GP_01.dbf';
SET NEWNAME FOR DATAFILE 50 to '/data01/DEV02_instance/db/GP_I_01.dbf';
SET NEWNAME FOR DATAFILE 51 to '/data01/DEV02_instance/db/IAS_01.dbf';
SET NEWNAME FOR DATAFILE 52 to '/data01/DEV02_instance/db/IAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 53 to '/data01/DEV02_instance/db/LEON_01.dbf';
SET NEWNAME FOR DATAFILE 54 to '/data01/DEV02_instance/db/MIS_01.dbf';
SET NEWNAME FOR DATAFILE 55 to '/data01/DEV02_instance/db/MIS_I_01.dbf';
SET NEWNAME FOR DATAFILE 56 to '/data01/DEV02_instance/db/PERFSTAT_01.dbf';
SET NEWNAME FOR DATAFILE 57 to '/data01/DEV02_instance/db/PMDX_01.dbf';
SET NEWNAME FOR DATAFILE 58 to '/data01/DEV02_instance/db/TM_01.dbf';
SET NEWNAME FOR DATAFILE 59 to '/data01/DEV02_instance/db/TM_I_01.dbf';
SET NEWNAME FOR DATAFILE 60 to '/data01/DEV02_instance/db/TOOLS_01.dbf';
SET NEWNAME FOR DATAFILE 61 to '/data01/DEV02_instance/db/USER_DATA_01.dbf';
SET NEWNAME FOR DATAFILE 62 to '/data01/DEV02_instance/db/USER_DATA_02.dbf';
SET NEWNAME FOR DATAFILE 63 to '/data01/DEV02_instance/db/WRK_DATA_01.dbf';
SET NEWNAME FOR DATAFILE 64 to '/data01/DEV02_instance/db/YBT_01.dbf';
SET NEWNAME FOR DATAFILE 65 to '/data01/DEV02_instance/db/YBT_BOC_01.dbf';
SET NEWNAME FOR DATAFILE 66 to '/data01/DEV02_instance/db/YBT_CCB_SH_01.dbf';
SET NEWNAME FOR DATAFILE 67 to '/data01/DEV02_instance/db/YBT_I_01.dbf';
SET NEWNAME FOR DATAFILE 68 to '/data01/DEV02_instance/db/YBT_MSL_01.dbf';
SET NEWNAME FOR DATAFILE 69 to '/data01/DEV02_instance/db/YBT_SINO_01.dbf';
SET NEWNAME FOR DATAFILE 70 to '/data01/DEV02_instance/db/dms.dbf';
SET NEWNAME FOR DATAFILE 71 to '/data01/DEV02_instance/db/dms_i.dbf';
SET NEWNAME FOR DATAFILE 72 to '/data01/DEV02_instance/db/undotbs_02.dbf';
SET NEWNAME FOR DATAFILE 73 to '/data01/DEV02_instance/db/KTS_KD_SALE01.DBF';
SET NEWNAME FOR DATAFILE 74 to '/data01/DEV02_instance/db/KTS_KD_COM01.DBF';
SET NEWNAME FOR DATAFILE 75 to '/data01/DEV02_instance/db/KTS_KD_HIS01.DBF';
SET NEWNAME FOR DATAFILE 76 to '/data01/DEV02_instance/db/KTS_KD_BANK01.DBF';
SET NEWNAME FOR DATAFILE 77 to '/data01/DEV02_instance/db/KTS_FSMS01.DBF';
SET NEWNAME FOR DATAFILE 78 to '/data01/DEV02_instance/db/KTS_FSMS_HIS01.DBF';
SET NEWNAME FOR DATAFILE 79 to '/data01/DEV02_instance/db/KTS_MF_MSL01.DBF';
SET NEWNAME FOR DATAFILE 80 to '/data01/DEV02_instance/db/undotbs_03.dbf';
SET NEWNAME FOR DATAFILE 81 to '/data01/DEV02_instance/db/undotbs_04.dbf';
SET NEWNAME FOR DATAFILE 82 to '/data01/DEV02_instance/db/EAPS_I_01.dbf';
SET NEWNAME FOR DATAFILE 83 to '/data01/DEV02_instance/db/CAS_I_05.dbf';
SET NEWNAME FOR DATAFILE 84 to '/data01/DEV02_instance/db/GLH_03.dbf';
SET NEWNAME FOR DATAFILE 85 to '/data01/DEV02_instance/db/GLH_I_02.dbf';
SET NEWNAME FOR DATAFILE 86 to '/data01/DEV02_instance/db/USER_DATA_03.dbf';
SET NEWNAME FOR DATAFILE 87 to '/data01/DEV02_instance/db/dms_02.dbf';
SET NEWNAME FOR DATAFILE 88 to '/data01/DEV02_instance/db/EBUSINESS_02.dbf';
SET NEWNAME FOR DATAFILE 89 to '/data01/DEV02_instance/db/CAS_11.dbf';
SET NEWNAME FOR DATAFILE 90 to '/data01/DEV02_instance/db/CASBAK_03.dbf';
SET NEWNAME FOR DATAFILE 91 to '/data01/DEV02_instance/db/CAS_12.dbf';
SET NEWNAME FOR DATAFILE 92 to '/data01/DEV02_instance/db/CAS_I_06.dbf';
SET NEWNAME FOR DATAFILE 93 to '/data01/DEV02_instance/db/KTS_KFCS_TABLE_01.dbf';
SET NEWNAME FOR DATAFILE 94 to '/data01/DEV02_instance/db/MSL_DIL01.dbf';
SET NEWNAME FOR DATAFILE 95 to '/data01/DEV02_instance/db/PPAS_01.dbf';
SET NEWNAME FOR DATAFILE 96 to '/data01/DEV02_instance/db/PPAS_I_01.dbf';
SET NEWNAME FOR DATAFILE 97 to '/data01/DEV02_instance/db/DAP_01.dbf';
SET NEWNAME FOR DATAFILE 98 to '/data01/DEV02_instance/db/DAP_I_01.dbf';
SET NEWNAME FOR DATAFILE 99 to '/data01/DEV02_instance/db/YBT_DBS_01.dbf';
SET NEWNAME FOR DATAFILE 100 to '/data01/DEV02_instance/db/CIRCSYS_01.dbf';
SET NEWNAME FOR DATAFILE 101 to '/data01/DEV02_instance/db/undotbs_05.dbf';
SET NEWNAME FOR DATAFILE 102 to '/data01/DEV02_instance/db/vatmgr_01.dbf';
RESTORE DATABASE;
SWITCH DATAFILE ALL;
release channel ch00;
}

run {
allocate channel ch00 type 'sbt_tape';
SEND 'NB_ORA_CLIENT=CNX01,NB_ORA_SERV=CNDCNBU01';
recover database until sequence 88700;
release channel ch00;
}

alter database rename file
'/data01/DEV02_instance/redo01.log' to
'/data01/DEV02_instance/db/redo01.log';

alter database rename file
'/data01/DEV02_instance/redo02.log' to
'/data01/DEV02_instance/db/redo02.log';

alter database rename file
'/data01/DEV02_instance/redo03.log' to
'/data01/DEV02_instance/db/redo03.log';

alter database rename file
'/data01/DEV02_instance/redo04.log' to
'/data01/DEV02_instance/db/redo04.log';

alter database rename file
'/data01/DEV02_instance/redo05.log' to
'/data01/DEV02_instance/db/redo05.log';

alter database open resetlogs;

alter database tempfile '/data01/CAS_instance/db/CAS/temp_01.dbf' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/ibmtemp.data1' drop;
alter database tempfile '/data01/CAS_instance/db/CAS/temporary_data_01.dbf' drop;

alter tablespace temp add tempfile '/data01/DEV02_instance/db/temp_01.dbf' size 4G reuse;
alter tablespace IBMTEMP_TBS add tempfile '/data01/DEV02_instance/db/ibmtemp.data1' size 4G reuse;
alter tablespace TEMPORARY_DATA add tempfile '/data01/DEV02_instance/db/temporary_data_01.dbf' size 4G reuse;

--NID:
shutdown immediate;

startup mount;
nid target=/ dbname=DEV02
startup nomount
alter system set db_name=DEV02 scope=spfile;

shutdown immediate;
startup mount;
alter database noarchivelog;
alter database open resetlogs;

2016-06-03 16:10:25
begin
dbms_scheduler.drop_job(job_name => 'CAS.20160708_22');

  dbms_scheduler.create_job(job_name => 'CAS.20160708_22',
  job_type => 'PLSQL_BLOCK',
  job_action => 'begin
  update tproducts
  set cmp_active_ind = ''Y'', nb_active_ind = ''Y''
  where prod_code = ''CCP'';
  update tplan_chnl_terr_mappings
  set cmp_eff_to_dt = to_date(''2999-12-31'',''yyyy-mm-dd'')
  where plan_code like ''CCP%''
  and vers_num = ''13'';
 update tplans a set EAPP_EXCL_IND = ''Y'' where a.plan_shrt_cd = ''CCP'';
 commit;
end;',
  start_date => to_date('15-05-2016 22:00:05', 'dd-mm-yyyy hh24:mi:ss'),
  end_date => to_date(null),
  enabled => true,
  auto_drop => true,
  comments => '2016_CCP_9000_DML_Open_1');
end;
/

2016-06-14 11:03:07
DATETIME=log20160513
expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=GFS_${ORACLE_SID}_$DATETIME.exp.dmp logfile=GFS_${ORACLE_SID}_$DATETIME.exp.log SCHEMAS='GFS_RPT','GFS_V3'
DATETIME=log20160747_backup
nohup expdp \'/ as sysdba\' directory=DATA_PUMP_DIR dumpfile=circsys_${ORACLE_SID}_$DATETIME.exp.dmp logfile=circsys_${ORACLE_SID}_$DATETIME.exp.log SCHEMAS='circsys' &
--'
2016-06-14 13:27:25
901q7r6sgv3mv ahddsu9vuaxfg
create index VATMGR.Idx_TADVALEXT_rdid on VATMGR.NVAT_PINSTRANDTADVALEXT(RDID) tablespace vatmgr;
create index vatmgr.idx_CUSTOMERINFO_kfhm on vatmgr.BI_CUSTOMERINFO(KFHM) tablespace vatmgr;
create index vatmgr.idx_OINVOICEDTLS_bdbh on vatmgr.NVAT_OUTINVOICEDETAILS(BDBH) tablespace vatmgr;
create index vatmgr.idx_REMAPSELF_xrdid on VATMGR.NVAT_REVENUEMAPSELF(XRDID) tablespace vatmgr;

2016-06-22 15:04:57
impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=NCDATABAK.DMP logfile=NCDATABAK.DMP.impdp.log remap_schema=ZHCF2:CFNLTEST remap_tablespace=USERS:ICFNL
--'
2016-06-22 18:00:32
set linesize 200
set pagesize 1000
col PARTITION_KEY for a15
col owner for a15
col num_rows for 99,999,999,999
col blocks for 999,999,999,999
col size_mb for 999,999.99
with t as (select a.owner,
  a.table_name, b.COLUMN_NAME PARTITION_KEY,
  a.num_rows,
  a.blocks,
  round(a.blocks * 8 / 1024, 2) size_mb
  from dba_tables a, dba_tab_columns b
 where b.table_name = a.table_name
  and b.OWNER = a.owner and b.column_name = 'PUSHDATE'
 order by num_rows desc)
 select rownum,t.* from t;
with t1 as
 (select *
  from zhoufeng.cas_ts_stat
  where tablespace = 'CAS'
  and to_char(c_date, 'yyyy-mm-dd hh24') like '%08'
  order by c_date),
t2 as
 (select *
  from zhoufeng.cas_ts_stat
  where tablespace = 'CAS'
  and to_char(c_date, 'yyyy-mm-dd hh24') like '%08'
  and c_date > to_date('2016-04-28', 'yyyy-mm-dd')
  order by c_date)
  select trunc(t1.c_date) c_date,trunc(t2.c_date) c_date,t1."Used_Mb",t2."Used_Mb", t2."Used_Mb" - t1."Used_Mb" INCREMENTAL
  from t1,t2
  where t1.c_date=t2.c_date-1

2016-06-27 8:52:45
--sun2lawson extract data feed with trasaction
with t as
 (SELECT
  'ML' AS DB_NAME
  ,
  A.*,
  A.CREDIT + A.DEBIT AS DISCREPANCY
  ,
  CASE
  WHEN (A.CREDIT + A.DEBIT) = 0 THEN
  'Yes'
  ELSE
  '*No'
  END AS BALANCED
  FROM (
  SELECT CONV_CODE
  ,
  JRNAL_NO
  ,
  ANAL_T0,
  ANAL_T2,
  ANAL_T4,
  ANAL_T6
  ,
  SUM(CASE
  WHEN D_C = 'C' THEN
  OTHER_AMT
  ELSE
  0
  END) AS CREDIT
  ,
  SUM(CASE
  WHEN D_C = 'D' THEN
  OTHER_AMT
  ELSE
  0
  END) AS DEBIT
  FROM SALFLDGML
  WHERE OTHER_AMT <> 0
  --AND JRNAL_NO > 126800
  GROUP BY CONV_CODE, JRNAL_NO, ANAL_T0, ANAL_T2, ANAL_T4, ANAL_T6
  ) A
  ORDER BY DB_NAME, CONV_CODE, JRNAL_NO, ANAL_T0, ANAL_T2, ANAL_T4, ANAL_T6)
select distinct JRNAL_NO from t;

2016-06-28 8:47:00
-- synonym loop chain
declare
  p_owner varchar2(30) := 'CAS';
  p_object_name varchar2(30) := 'AMS_EDIT_UTL';
  v_cnt number;
begin
  for i in (select table_name
  from dba_synonyms
  where table_owner = p_owner
  minus
  select object_name
  from dba_objects
  where owner = p_owner) loop
  select count(1)
  into v_cnt
  from dba_source
  where name = p_object_name
  and upper(text) like '%' || i.table_name || '%';
  if v_cnt > 0 then
  dbms_output.put_line(i.table_name);
  end if;
  end loop;
end;

2016-06-28 15:00:25
begin
--dbms_scheduler.drop_job(job_name => 'CAS.disable_sms_job');

  dbms_scheduler.create_job(job_name => 'CAS.disable_sms_job',
  job_type => 'PLSQL_BLOCK',
  job_action => 'begin
  dbms_scheduler.disable(name => ''CAS.GEN_SMS'');
end;',
  start_date => to_date('03-07-2016 12:30:05', 'dd-mm-yyyy hh24:mi:ss'),
  end_date => to_date(null),
  enabled => true,
  auto_drop => true,
  comments => 'Diable oracle job SMS');
end;
/

begin
--dbms_scheduler.drop_job(job_name => 'CAS.enable_sms_job');

  dbms_scheduler.create_job(job_name => 'CAS.enable_sms_job',
  job_type => 'PLSQL_BLOCK',
  job_action => 'begin
  dbms_scheduler.enable(name => ''CAS.GEN_SMS'');
end;',
  start_date => to_date('04-07-2016 09:30:05', 'dd-mm-yyyy hh24:mi:ss'),
  end_date => to_date(null),
  enabled => true,
  auto_drop => true,
  comments => 'Diable oracle job SMS');
end;
/

2016-06-29 12:45:39
1. Create tablespace
create tablespace bjpt_data datafile '/data01/CAS_instance/db/CAS/bjpt_data_01.dbf' size 10G autoextend on;
alter tablespace bjpt_data add datafile '/data01/CAS_instance/db/CAS/bjpt_data_02.dbf' size 10G autoextend on;

2. Create interim table

declare
  procedure p_table_stmt(p_owner varchar2,
  p_tname varchar2,
  p_ointerim varchar2,
  p_tinterim varchar2) is
  v_clob clob;
  begin
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'PRETTY',
  TRUE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'SQLTERMINATOR',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'SEGMENT_ATTRIBUTES',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'STORAGE',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'TABLESPACE',
  TRUE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'CONSTRAINTS',
  TRUE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'REF_CONSTRAINTS',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'CONSTRAINTS_AS_ALTER',
  FALSE);
  select dbms_metadata.get_ddl('TABLE', p_tname, p_owner)
  into v_clob
  from dual;
  dbms_output.put_line(replace(replace(replace(replace(v_clob, p_owner, p_ointerim),
  p_tname,
  p_tinterim),'PRIMARYKEY_TEMP_','PK_TEMP_'),'USER_DATA','BJPT_DATA'));
  end;
  procedure p_partition_stmt is
  v_ym date := to_date('199912', 'YYYYMM');
  procedure p_partition_range_by(p_partition_Key in varchar2) is
  begin
  dbms_output.put_line('PARTITION BY RANGE(' || p_partition_Key || ')');
  end;
  procedure p_partition_range_value(p_partition_name in varchar2,
  p_partition_value in varchar2) is
  begin
  dbms_output.put_line('PARTITION ' || p_partition_name ||
  ' VALUES LESS THAN ' || p_partition_value || ') tablespace BJPT_DATA,');
  end;
  procedure p_partition_range_maxvalue(p_partition_name in varchar2, p_partition_value VARCHAR2) is
  begin
  dbms_output.put_line('PARTITION ' || p_partition_name ||
  ' VALUES LESS THAN ' || p_partition_value || ') tablespace BJPT_DATA');
  end;
  begin
  p_partition_range_by('PUSHDATE');
  DBMS_OUTPUT.PUT_lINE('(');
  while v_ym < to_date('201901', 'YYYYMM') loop
  p_partition_range_value('P' || TO_CHAR(V_YM, 'YYYYMM'),
  '(to_date(' ||
  to_char(add_months(v_ym, 1), 'YYYYMM') ||
  ',''YYYYMM'')');
  if v_ym < to_date('201501', 'YYYYMM') then
  v_ym := add_months(v_ym, 12);
  else
  v_ym := add_months(v_ym, 1);
  end if;
  end loop;
  p_partition_range_maxvalue('P' || TO_CHAR(V_YM, 'YYYYMM'),
  '(to_date(' ||
  to_char(add_months(v_ym, 1), 'YYYYMM') ||
  ',''YYYYMM'')');
  DBMS_OUTPUT.PUT_lINE(');');
  end;
begin
  for i in (select *
  from dba_tables
  where owner = 'IAOPER'
  AND TABLE_NAME LIKE 'TEMP%'
  AND TABLE_NAME NOT IN
  ('TEMP_LJDIVDISTRIB_BK', 'TEMP_LMPRODUCT','TEMP_LMPRODUCT_INIT')) LOOP
  p_table_stmt(i.owner, i.table_name, 'IAOPER', i.table_name || '_I');
  p_partition_stmt;
  END LOOP;
end;
============================================
declare
  procedure p_table_stmt(p_owner varchar2,
  p_tname varchar2,
  p_ointerim varchar2,
  p_tinterim varchar2) is
  v_clob clob;
  begin
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'PRETTY',
  TRUE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'SQLTERMINATOR',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'SEGMENT_ATTRIBUTES',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'STORAGE',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'TABLESPACE',
  TRUE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'CONSTRAINTS',
  TRUE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'REF_CONSTRAINTS',
  FALSE);
  DBMS_METADATA.set_transform_param(DBMS_METADATA.session_transform,
  'CONSTRAINTS_AS_ALTER',
  FALSE);
  select dbms_metadata.get_ddl('TABLE', p_tname, p_owner)
  into v_clob
  from dual;
  dbms_output.put_line(replace(replace(replace(replace(v_clob, p_owner, p_ointerim),
  p_tname,
  p_tinterim),'PRIMARYKEY_TEMP_','PK_TEMP_'),'USER_DATA','BJPT_DATA'));
  end;
  procedure p_partition_stmt is
  v_ym date := to_date('199912', 'YYYYMM');
  procedure p_partition_range_by(p_partition_Key in varchar2) is
  begin
  dbms_output.put_line('PARTITION BY RANGE(' || p_partition_Key || ')');
  end;
  procedure p_partition_range_value(p_partition_name in varchar2,
  p_partition_value in varchar2) is
  begin
  dbms_output.put_line('PARTITION ' || p_partition_name ||
  ' VALUES LESS THAN ' || p_partition_value || ') tablespace BJPT_DATA,');
  end;
  procedure p_partition_range_maxvalue(p_partition_name in varchar2) is
  begin
  dbms_output.put_line('PARTITION ' || p_partition_name ||
  ' VALUES LESS THAN (maxvalue) tablespace BJPT_DATA');
  end;
  begin
  p_partition_range_by('PUSHDATE');
  DBMS_OUTPUT.PUT_lINE('(');
  while v_ym < to_date('201901', 'YYYYMM') loop
  p_partition_range_value('P' || TO_CHAR(V_YM, 'YYYYMM'),
  '(to_date(' ||
  to_char(add_months(v_ym, 1), 'YYYYMM') ||
  ',''YYYYMM'')');
  if v_ym < to_date('201501', 'YYYYMM') then
  v_ym := add_months(v_ym, 12);
  else
  v_ym := add_months(v_ym, 1);
  end if;
  end loop;
  p_partition_range_maxvalue('PMAX');
  DBMS_OUTPUT.PUT_lINE(');');
  end;
begin
  for i in (select *
  from dba_tables
  where owner = 'IAOPER'
  AND TABLE_NAME LIKE 'TEMP%'
  AND TABLE_NAME NOT IN
  ('TEMP_LJDIVDISTRIB_BK', 'TEMP_LMPRODUCT','TEMP_LMPRODUCT_INIT')) LOOP
  p_table_stmt(i.owner, i.table_name, 'IAOPER', i.table_name || '_I');
  p_partition_stmt;
  END LOOP;
end;

3. Create log table
create table zhoufeng.iaoper_redefine(uname varchar2(50),
t_org varchar2(50),
t_int varchar2(50),
started date,
synced date,
finished date,
done date)
tablespace cas;

4. run online-redefiniation statements

-- COPY THE TABLE DEPENDENTS FROM THE ORIGINAL TABLE TO THE INTERIM TABLE
declare
  procedure p_redefine_stmt(p_uname varchar2,p_org varchar2,p_int varchar2)
is
  error_count pls_integer := 0;
BEGIN
  dbms_output.put_line('insert into zhoufeng.iaoper_redefine(uname,t_org,t_int,started) values('''||p_uname||''','''||p_org||''','''||p_int||''',sysdate);');
  dbms_output.put_Line('commit;');
  dbms_output.put_line('DBMS_REDEFINITION.START_REDEF_TABLE(uname => '''||p_uname||''',');
  dbms_output.put_line(' orig_table => '''||p_org||''',');
  dbms_output.put_line(' int_table => '''||p_int||''',');
  dbms_output.put_line(' options_flag => DBMS_REDEFINITION.cons_use_pk);');

  dbms_output.put_line('update zhoufeng.iaoper_redefine set synced=sysdate where uname='''||p_uname||''' and t_org='''||p_org||''' and t_int='''||p_int||''';');
  dbms_output.put_Line('commit;');
  dbms_output.put_line('DBMS_REDEFINITION.SYNC_INTERIM_TABLE(uname => '''||p_uname||''',');
  dbms_output.put_line(' orig_table => '''||p_org||''',');
  dbms_output.put_line(' int_table => '''||p_int||''');');

  dbms_output.put_line('update zhoufeng.iaoper_redefine set finished=sysdate where uname='''||p_uname||''' and t_org='''||p_org||''' and t_int='''||p_int||''';');
  dbms_output.put_Line('commit;');
  dbms_output.put_line('DBMS_REDEFINITION.FINISH_REDEF_TABLE(uname => '''||p_uname||''',');
  dbms_output.put_line(' orig_table => '''||p_org||''',');
  dbms_output.put_line(' int_table => '''||p_int||''');');

  dbms_output.put_line('update zhoufeng.iaoper_redefine set done=sysdate where uname='''||p_uname||''' and t_org='''||p_org||''' and t_int='''||p_int||''';');
  dbms_output.put_Line('commit;');
end;
begin
  for i in (select *
  from dba_tables
  where owner = 'IAOPER'
  AND TABLE_NAME LIKE 'TEMP%' and table_name not like 'TEMP%I' and table_name not like 'TEMP%INT'
  AND TABLE_NAME NOT IN
  ('TEMP_LJDIVDISTRIB_BK', 'TEMP_LMPRODUCT','TEMP_LMPRODUCT_INIT')) LOOP
  p_redefine_stmt(i.owner,i.table_name,i.table_name||'_I');
  end loop;
end;

5. Morning sql
select uname owner,
  t_org table_name,
  (select count(1)
  from dba_tab_partitions p
  where z.uname = p.table_owner
  and z.t_org = p.table_name) partition_cnt,
  decode(done, null, 'Redefining', 'Complete') Status,
  substr(numtodsinterval(decode(done, null, sysdate, done) - started,
  'day'),
  9,
  11) Elapsed_time,'exec dbms_stats.gather_table_stats(ownname => '''||uname||''',tabname => '''||t_org||''',estimate_percent => 100,degree => 8,no_invalidate => false);',
  'exec dbms_stats.gather_table_stats(ownname => '''||uname||''',tabname => '''||t_int||''',estimate_percent => 100,degree => 8,no_invalidate => false);'
  from zhoufeng.iaoper_redefine z
 order by started;

select 'grant ' || privilege || ' on ' || owner || '.' || table_name ||
  ' to ' || grantee || ';' grant_stmt
  from dba_tab_Privs
 where table_name like 'TEMP%'
  and owner like 'IAOPER'
  and table_name not like '%I'

2016-06-29 16:22:27
impdp \'/ as sysdba\' parfile=iaoper_bjpt.par content=data_only
--'
2016-07-01 13:15:12
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export datef=20160630_afterbatch
nohup expdp userid=\'/ as sysdba\' directory=data_pump_dir dumpfile=CAS%U_$datef.expdp.dmp logfile=CAS_$datef.expdp.log parallel=8 full=y &
--'
2016-07-01 19:59:47
--- backup ---
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_11.167_8082
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_11.182_8081
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
if {[HTTP::uri] starts_with "/premiumstar/"} {
  pool Pool_WX_8089
}
if {[HTTP::uri] starts_with "/movesvc/"} {
  pool pool_11.182_10088
}
if {[HTTP::uri] starts_with "/amonet/"} {
  pool pool_11.182_8081
}
}
-----------
when HTTP_REQUEST {

if {[HTTP::uri] starts_with "/awsnet"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/cws"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/bws"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/exam"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/fs"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/FS"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslws"} {
  pool pool_3.43_8081
}

if {[HTTP::uri] starts_with "/cws4ee"} {
  pool pool_8.23_9090
}

if {[HTTP::uri] starts_with "/aws_ota"} {
  pool pool_3.91_80
}

if {[HTTP::uri] starts_with "/erws"} {
  pool pool_3.91_80
}
if {[HTTP::uri] starts_with "/etrading"} {
  pool pool_3.73_1703
}
if {[HTTP::uri] starts_with "/mf_sale"} {
  pool pool_3.73_1701
}
if {[HTTP::uri] starts_with "/mf_finc"} {
  pool pool_3.73_1705
}
if {[HTTP::uri] starts_with "/wechat/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/products"} {
  pool pool_11.182_8081
}
if {[HTTP::uri] starts_with "/mslems"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/eappimage/"} {
  pool pool_3.102_58267
}
if {[HTTP::uri] starts_with "/awsmobile/"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/sales/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/reservation/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/zxh/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/wechatmkt/"} {
  pool Pool_zxh_80
}
if {[HTTP::uri] starts_with "/questionnaire/"} {
  pool Pool_WX
}
if {[HTTP::uri] starts_with "/kb/"} {
  pool Pool_3.48_80
}
if {[HTTP::uri] starts_with "/msldoc/"} {
  pool pool_8.23_9090
}
if {[HTTP::uri] starts_with "/sam4eb/"} {
  pool pool_11.182_85
}
if {[HTTP::uri] starts_with "/premiumstar/"} {
  pool Pool_WX_8089
}
if {[HTTP::uri] starts_with "/movesvc/"} {
  pool pool_11.182_10088
}
if {[HTTP::uri] starts_with "/amonet/"} {
  pool pool_11.182_8081
}
}

2016-07-03 18:20:39
impdp \'/ as sysdba\' DIRECTORY=dmp DUMPFILE=CAS%U_20160701_184815.expdp.dmp schemas='circsys','iaoper' content=metadata_only remap_schema='BJPT_DATA':'USER_DATA'
--'
alter profile GENERAL_PROFILE_360 limit password_reuse_time unlimited;
alter user skdata identified by kdia39az;
alter profile GENERAL_PROFILE_360 limit password_reuse_time 360;

imp zhoufeng/zaq11qaz@dev01 file=/tmp/TMIS_ANP_LAST_YEAR_END_PECORDS_uat05.dmp fromuser=cas touser=cas feedback=100000
imp zhoufeng/zaq11qaz@dev01 file=e:\temp\TMIS_ANP_LAST_YEAR_END_PECORDS_uat05.dmp fromuser=cas touser=cas feedback=100000

Tablespace Allocated Current Current File %
Name Filename GB Used GB Free GB Free AUT
---------- -------------------------------------------------- ---------- ---------- ---------- ------ ---
USER_DATA /data01/CAS_instance/db/CAS/USER_DATA_02.dbf 32.000 16.353 15.647 48.9 YES
  /data01/CAS_instance/db/CAS/USER_DATA_03.dbf 32.000 9.274 22.726 71.0 YES
  /data01/CAS_instance/db/CAS/USER_DATA_04.dbf 31.999 15.192 16.807 52.5 YES
  /data01/CAS_instance/db/CAS/USER_DATA_05.dbf 5.000 4.992 0.008 0.2 YES
  /data01/CAS_instance/db/CAS/USER_DATA_01.dbf 32.000 16.071 15.929 49.8 YES
********** ---------- ---------- ---------- ------
  44.5
  132.999 61.883 71.116

2016-07-05 15:25:21
create table sys.AUD_BAK
tablespace audit_tablespace

--Eapprove
alter profile default limit password_reuse_time unlimited;
alter user ibmitm identified by sysdba_msl2014;
alter user query identified by aq1zhqdc;
alter profile default limit password_reuse_time 360;
--sun
alter profile GENERAL_PROFILE limit password_reuse_time unlimited;
alter user ibmitm identified by sysdba_msl2014;
alter user query identified by aq1zhqdc;
alter profile GENERAL_PROFILE limit password_reuse_time 360;
--cas
alter user ibmitm profile GENERAL_PROFILE_SP;
alter profile GENERAL_PROFILE_SP limit password_reuse_time unlimited;
alter user ibmitm identified by sysdba_msl2014;
alter profile GENERAL_PROFILE_SP limit password_reuse_time 360;

2016-07-06 8:41:02
set echo off
@C:\cas_search\S20160496_vat_client_details_comma.sql
set echo off
@C:\cas_search\S20160496_vat_invoice.sql
set echo off
@C:\cas_search\S20160496_vat_invoice_pool.sql

2016-07-06 10:31:27
impdp \'/ as sysdba\' DIRECTORY=dmp DUMPFILE=CAS%U_20160701_184815.expdp.dmp tables='EBUSINESS.TE_PROD_SUMM_CN','EBUSINESS.TAWS_ENC_AGTS','EBUSINESS.TAWS_ENC_ACCS_LOG','EBUSINESS.TAGT_ACCL','EBUSINESS.TAWS_TMP_POL_RISKS','EBUSINESS.TAGT_ACPL','EBUSINESS.TAWS_TMP_CLI_RISKS','EBUSINESS.TAWS_ENC_WX_ACCS','EBUSINESS.TAGENT_PIN','EBUSINESS.TPROD_SUMM_CN','EBUSINESS.TE_SEARCH_MKT_CAMP_INFO','EBUSINESS.SAM_YTD_RECRUIT','EBUSINESS.SAM_SALES_W','EBUSINESS.SAM_SALES_D','EBUSINESS.SAM_GET_PARENT_AGT_KEY','EBUSINESS.TAWS_DISCLAIMER_LOG','EBUSINESS.TAGENT_MASTER','EBUSINESS.TEB_EXAM_QUIZ_LOG','EBUSINESS.SAM_SEARCH_ACTIVITY_RESULT' table_exists_action=truncate

2016-07-11 9:23:02
Tablespace USER_DATA free to allocated space percentage is equal to 1.96%.

Normal table data increment.

The tablespace datafiles are autoextensible. The alert can be safely ignore.But extend more space is still necessary.

Same alert and solution refer to IN193865

IN193655

Oracle error such as ORA-??? displayed in the alert log file

The ORA-??? error message in the alert log file were not critical error。They can be ignored safely.

Same alert and solution refer to IN193655

ITM agent reconfiguration can be ignored safely.

2016-07-12 17:45:30
impdp \'/as sysdba\' directory=dmp dumpfile=Eapprove%U_20160712_010001.expdp.dmp tables='SIT_EAPPROVAL_MAIN.ALCO_EXTERNAL_ATTACHMENT' remap_schema=SIT_EAPPROVAL_MAIN:CAS \
remap_tablespace=TS_EAPPROVAL:CAS
''
select count(1) from cas.ALCO_EXTERNAL_ATTACHMENT;
set timing on
set linesize 200
set pagesize 100
col segment_name for a30
col segment_type for a15
col column_name for a15
select owner,
  segment_name,
  segment_type,
  to_char(sum(bytes) / 1024 / 1024, '999,999') size_mb,
  (select owner from dba_lobs where segment_name = ds1.segment_name) "OWNER",
  (select table_name
  from dba_lobs
  where segment_name = ds1.segment_name) "TABLE_NAME",
  (select column_name
  from dba_lobs
  where segment_name = ds1.segment_name) "COLUMN_NAME"
  from dba_segments ds1
 where tablespace_name = 'TS_EAPPROVAL'
  and segment_type = 'LOBSEGMENT'
 group by owner, segment_name, segment_type
having sum(bytes) / 1024 / 1024 > 1
 order by 4 desc;

alter table CAS.ALCO_RECEIPTS enable row movement;
alter table CAS.ALCO_RECEIPTS shrink space cascade; --561s
alter table CAS.ALCO_RECEIPTS disable row movement;

alter table CAS.ALCO_EXTERNAL_ATTACHMENT enable row movement;
alter table CAS.ALCO_EXTERNAL_ATTACHMENT shrink space cascade; --561s
alter table CAS.ALCO_EXTERNAL_ATTACHMENT disable row movement;

permanent |16-07-12 |TS_EAPPROVAL | 94| 65534| 61610.31| 3923.69|NO |ONLINE

iland_09

2016-07-25 8:21:08
alter user zmh identified by Passworde123;
alter user zhangziq identified by Password123;
alter user lupeish identified by Password123;
alter user ams identified by mslsma1607;
alter user mis identified by mslsim1607;
alter user glh identified by mslhlg1607;
alter user gp identified by mslpg1607;
alter user ebusiness identified by mslebusiness1607;
alter user casbak identified by mslcasbak1607;
alter user fas identified by mslsaf1607;

alter user ams_bak identified by mslamsbak1607;
alter user ams_wrk identified by mslasmwrk1607;
alter user fas identifed by mslsaf1607;

2016-07-25 15:11:23
select * from tfunctions where fcn_id = 'CASRFN072SH'

2016-07-27 8:17:08
SELECT SID, event, time_waited_micro/1000000 ,total_waits, total_timeouts, time_waited, average_wait,
  max_wait
  FROM v$session_event
  WHERE SID = 2173
  ORDER BY SID, time_waited DESC



sleeesfsdf

$JAVA_HOME/bin/keytool -genkeypair -alias mytestalias -keyalg RSA -keysize 2048  -keystore mytestkeystore.jks
$JAVA_HOME/bin/keytool -list -v -keystore  mytestkeystore.jks
$JAVA_HOME/bin/keytool -certreq -v alias mytestalias -file mycsr.csr -keystore mytestkeysote.jks
$JAVA_HOME/bin/keytool -importcert -file mycert.pem -alias mytestalias -keystore mytestkeystore.jks

cd /u01/app
tar zxvf /tmp/jdk-7u80-linux-x64.tar.gz
export JAVA_HOME=/u01/app/jdk1.7.0_80
echo export JAVA_HOME=/u01/app/jdk1.7.0_80 >> ~/.bash_profile
$JAVA_HOME/bin/java -jar /tmp/wls1036_generic.jar

$JAVA_HOME/bin/keytool -genkey -keyalg RSA -alias selfsigned -keystore identity.jks \
   -dname "CN=`hostname`, OU=My Department, O=My Company, L=Birmingham, ST=West Midlands, C=GB" \
   -storepass password1 -validity 3600 -keysize 2048 -keypass password1

$JAVA_HOME/bin/keytool -selfcert -v -alias selfsigned -keypass password1 -keystore identity.jks \
   -storepass password1 -storetype jks -validity 3600

$JAVA_HOME/bin/keytool -export -v -alias selfsigned -file "`hostname`-rootCA.der" -keystore identity.jks \
   -storepass password1

# Trust? yes
$JAVA_HOME/bin/keytool -import -v -trustcacerts -alias selfsigned -file "`hostname`-rootCA.der" \
   -keystore trust.jks -storepass password1


./configure \
    --sbin-path=/usr/local/nginx/nginx \
    --conf-path=/usr/local/nginx/nginx.conf \
    --pid-path=/usr/local/nginx/nginx.pid \
    --with-http_ssl_module \
    #--without-http_rewrite_module \

make

ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre2-10.20.tar.gz

start nginx:
/usr/local/nginx/nginx

Nginx options:
/usr/local/nginx/nginx -s [reload|stop|quit|reopen]
stop — fast shutdown
quit — graceful shutdown
reload — reloading the configuration file
reopen — reopening the log files

Dockerfile
FROM nginx

RUN mkdir /etc/ngnix/logs && touch /etc/nginx/ogs/static.log

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
ADD /src /www

EXPOSE 80

docker build -t static-nginx .
docker run -d -p 80:80 static-nginx


upstream app {
      server 10.0.6.108:7080;
      server 10.0.0.85:8980;
}

location / {
            root  html;
            index  index.html index.htm;
            proxy_pass http://app;
}


select owner,sum(bytes)/1024/1024 size_mb
from dba_segments
where owner in ('CMS_FIAT','WFS_FIAT_LIVE')
group by owner;


export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export ORACLE_HOME=/tech/oracle/product/11.2.0/11204/dbhome_1
export LIBPATH=$ORACLE_HOME/lib
export ORACLE_SID=CAS
export PATH=$ORACLE_HOME/bin:$PATH
datef=`date +%Y%m%d_%H%M%S`
datef=`perl -le '@a=localtime(time-43200); printf("%04d%02d%02d_%02d%02d%02d\n",$a[5]+1900,$a[4]+1,$a[3],$a[2],$a[1],$a[0]);'`
nohup expdp \'/ as sysdba\' directory=dmp dumpfile=${ORACLE_SID}_%U_$datef.expdp.dmp logfile=${ORACLE_SID}_$datef.expdp.log parallel=8 full=y &
--'
select 'kill -9 '||spid from v$process p,v$session s
where  p.addr=s.paddr
and s.username in ('CAS','PRIPSYS')

select object_type,

export DBNAME=test22
dbca -silent -createDatabase -templateName General_Purpose.dbc \
-gdbName $DBNAME -sid $DBNAME \
-sysPassword ford1612 -systemPassword ford1612 -characterset ZHS16GBK \
-datafileDestination /u01/app/oracle/oradata \
-redoLogFileSize 500 \
-emConfiguration NONE \
-automaticMemoryManagement true \
-totalMemory 311

export DBNAME=test11
dvca -action enable  \
  -oh ${ORACLE_HOME} \
  -service $DBNAME \
  -instance $DBNAME \
  -dbname $DBNAME \
  -owner_account lbrown_dvowner \
  -logfile dvcalog.txt

VBoxManage createhd --filename wincls01.vdi --size 512 --format VDI --variant Fixed
VBoxManage createhd --filename wincls02.vdi --size 5120 --format VDI --variant Fixed
VBoxManage storageattach win2008r2_170415a --storagectl "SATA" --port 1 --device 0 --type hdd --medium wincls01.vdi --mtype shareable
VBoxManage storageattach win2008r2_170415a --storagectl "SATA" --port 2 --device 0 --type hdd --medium wincls02.vdi --mtype shareable
VBoxManage storageattach win2008r2_170415b --storagectl "SATA" --port 1 --device 0 --type hdd --medium wincls01.vdi --mtype shareable
VBoxManage storageattach win2008r2_170415b --storagectl "SATA" --port 2 --device 0 --type hdd --medium wincls02.vdi --mtype shareable

  select owner,object_type,count(1)
  from dba_objects
  where owner like  'CMS_FIAT%' and status='INVALID'
  group by owner,object_type
  order by 1,2



CREATE USER "WFS_FIAT_TEST1" IDENTIFIED BY rfv33bgt
DEFAULT TABLESPACE "WFS"
TEMPORARY TABLESPACE "TEMP"
PROFILE "CMS_FIAT_COLL_PROFILE";

grant SELECT on SYS.WFS_SESSION to WFS_FIAT_TEST1;

grant SELECT on SYS.V_$SESSION to WFS_FIAT_TEST1;

grant SELECT on SYS.GV_$SESSION to WFS_FIAT_TEST1;

grant dba to wfs_fiat_test1;


nohup impdp \'/ as sysdba\' directory=DP dumpfile=prod_WFS_FIAT_LIVE_20170529_06.expdp.dmp \
logfile=prod_WFS_FIAT_LIVE_20170529_06.impdp.log schemas=WFS_FIAT_LIVE remap_schema=WFS_FIAT_LIVE:WFS_FIAT_TEST1 &


dbca -silent -createDatabase -templateName General_Purpose.dbc \
  -gdbname uat01 -sid uat01 -responseFile NO_VALUE -characterSet ZHS16GBK \
  -memoryPercentage 25 -emConfiguration NONE

impdp \'/ as sysdba\' directory=data_pump_dir dumpfile=infa_svc.dmp
--'
2017/5/7 下午6:32:47
Mysql strange installations problems (logger: command not found)
apt-get --reinstall install bsdutils

Commands used in video (SSL setup):
apt-get install nginx
service nginx start
apt-get install git
sudo git clone https://github.com/letsencrypt/letsencrypt .
sudo service nginx stop
./letsencrypt-auto certonly --standalone --register-unsafely-without-email
server {
    listen 80;
    server_name www.SITE.ru SITE.ru;
    return 301 https://SITE.ru$request_uri;
}

server {
    listen 443 ssl;
    server_name SITE.com;
}

server {

    ssl_certificate         /etc/letsencrypt/live/SITE.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/SITE.com/privkey.pem;

    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers on;
    ssl_ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';
}


sudo cp /opt/letsencrypt/examples/cli.ini /usr/local/etc/le-renew-webroot.ini

cd /opt/letsencrypt

./letsencrypt-auto certonly -a webroot --renew-by-default --config /usr/local/etc/le-renew-webroot.ini

2017/5/16 下午9:54:03
keytool -genkey -alias tomcat -keyalg RSA -keystore tomcat.keystore
Update tomcate server.xml
keystoreFile="tomcat.keystore" keystorePass="Password1"

2017/5/28 上午8:21:37
export DT=`date +%Y%m%d`
export DUMP_DIR=/u02
export NLS_LANG="american_america.ZHS16GBK"
export EXPOWNER=CMS_FIAT_TEST1
$ORACLE_HOME/bin/expdp \'/ as sysdba\' directory=DP dumpfile=${ORACLE_SID}_${EXPOWNER}_$DT.expdp.dmp logfile=${ORACLE_SID}_${EXPOWNER}_$DT.expdp.log schemas=$EXPOWNER

nohup impdp \'/ as sysdba\' directory=DP dumpfile=prod_CMS_FIAT_20170530_06.expdp.dmp \
logfile=prod_CMS_FIAT_20170530_06.impdp.log schemas=CMS_FIAT remap_schema=CMS_FIAT:CMS_FIAT_TEST1 parallel=8 &

CREATE USER "CMS_FIAT_TEST1" IDENTIFIED BY VALUES 'S:A00210F579751766A425C26C4FECB80838592DCDA660F280CCA91F3E11B2;AD2F75933666F7BA'
  DEFAULT TABLESPACE "TBS_LS_DATA"
  TEMPORARY TABLESPACE "TEMP"
  PROFILE "CMS_FIAT_COLL_PROFILE";
grant dba  to CMS_FIAT_TEST1;

set linesize 200
set pagesize 1000
col os_username for a20
col username for a20
col userhost for a30
col terminal for a30
col action_name for a20
col comment_text for a80
select to_char(timestamp,'yyyy/mm/dd hh24:mi:ss') timestamp,os_username,username,userhost,terminal,action_name,comment_text
from dba_audit_trail
where username ='CMS_FIAT_TEST1'
and timestamp > sysdate - 10/24/60
order by timestamp;

conn cms_fiat_test1/edc55vfr



select to_char(timestamp,'yyyy/mm/dd hh24:mi:ss') timestamp,os_username,username,userhost,terminal,action_name
from dba_audit_trail
where username ='CMS_FIAT_TEST1'
and timestamp > (select LOCK_DATE from dba_users where username ='CMS_FIAT_TEST1')
order by timestamp desc;

select * from dba_profiles where profile='CMS_FIAT_COLL_PROFILE'
alter profile CMS_FIAT_COLL_PROFILE limit FAILED_LOGIN_ATTEMPTS 5;  --5


Informatica服务器异常重启
今天早上用户发现uat环境的新团险系统的数据没有正常推到cas系统中，排查发现Informatica Service的服务器昨天（10.136.1.91）6/2 21:18分左右重启过.导致数据同步的工作流中断。
由于Informatica不会对异常中断的工作流正常标记中断检查点，现在的几个工作流最新的检查点均是10多天前的，目前启动仍会报错，现在在解决。
现在新团险已经上了UAT，测试时间较紧，出了点系统环境问题用户都会challenge中宏IT。

我们需要主动follow下：
1. 10.136.1.91的监控问题
2. 这台服务器异常重启的原因

Bazil>40

2017/6/9 下午8:57:48
CREATE INDEX "SAPSR3"."MSEG~BUD" ON "SAPSR3"."MSEG" (MANDT, BUDAT_MKPF, MATNR, WERKS, LGORT, BWART, SOBKZ)
  TABLESPACE "PSAPSR3" nologging parallel 4;

CREATE INDEX "SAPSR3"."MSEG~M1" ON "SAPSR3"."MSEG" (MANDT, WERKS, BUDAT_MKPF, MATNR, LGORT, BWART, SOBKZ)
  TABLESPACE "PSAPSR3" nologging parallel 4;

CREATE INDEX "SAPSR3"."MSEG~M2" ON "SAPSR3"."MSEG" (MANDT, MATNR, BUDAT_MKPF, WERKS, LGORT, BWART, SOBKZ)
  TABLESPACE "PSAPSR3" nologging parallel 4;

drop index "SAPSR3"."MSEG~M";
CREATE INDEX "SAPSR3"."MSEG~M" ON "SAPSR3"."MSEG" (MANDT, MATNR, WERKS, LGORT, BWART, SOBKZ, BUDAT_MKPF)
  TABLESPACE "PSAPSR3" nologging parallel 4;


alter index "SAPSR3"."MSEG~BUD" logging noparallel;
alter index "SAPSR3"."MSEG~M1" logging noparallel;
alter index "SAPSR3"."MSEG~M2" logging noparallel;
alter index "SAPSR3"."MSEG~M" logging noparallel;

BEGIN
  dbms_stats.gather_index_stats('SAPSR3','"MSEG~BUD"',ESTIMATE_PERCENT=>10,DEGREE=>4);
  dbms_stats.gather_index_stats('SAPSR3','"MSEG~M1"',ESTIMATE_PERCENT=>10,DEGREE=>4);
  dbms_stats.gather_index_stats('SAPSR3','"MSEG~M2"',ESTIMATE_PERCENT=>10,DEGREE=>4);
  dbms_stats.gather_index_stats('SAPSR3','"MSEG~M"',ESTIMATE_PERCENT=>10,DEGREE=>4);
END;
/

变更前
变更后
undo表空间已经调整至自动扩展32g上限.
测试库和生产库的undo参数是一致的，在生产上报错应该和数据量有关系。



set linesize 200
set feedback off
set pagesize 1000
set termout off
col size_gb for 990.00
break on instance_name
Compute Sum Label "Total" Of  "SIZE_GB" arch_number On instance_name;
col SIZE_GB  heading SIZE/GB
col Avg_Elapse for a11 heading Avg_Elapse|(hh:mi:ss)
alter session set nls_date_format="yyyymmdd hh24:mi:ss";
set termout on
select substr(instance_name,1,4) instance_name,
       trunc(completion_time, 'hh24') time,
       substr(numtodsinterval(avg(next_time - first_time), 'day'), 12, 8) Avg_Elapse,
       trunc((sum(blocks * block_size) / 1024 / 1024 / 1024), 2)
                size_gb,
       count(1) arch_number
  from v$archived_log, v$instance
 where first_time >= to_date('20170517','yyyymmdd') + 9/24
   and first_time <= to_date('20170517','yyyymmdd') + 16/24
 group by instance_name, trunc(completion_time, 'hh24')
 order by 2;


$JAVA_HOME/bin/keytool -import -v -trustcacerts -alias selfsigned -file /u01/app/jdk1.7.0_80/jre/lib/security/cacerts \
  -keystore identity.jks -storepass password1

$JAVA_HOME/bin/keytool -genkey -keyalg RSA -alias selfsigned -keystore identity.jks \
   -dname "CN=test, OU=My Department, O=My Company, L=Birmingham, ST=West Midlands, C=GB" \
   -storepass password1 -validity 3600 -keysize 2048 -keypass password1

keytool -exportcert -alias  selfsigned -file selfsigned.cer -keystore identity.jks

keytool -import -trustcacerts -alias selfsigned -file /u01/app/jdk1.7.0_80/jre/lib/security/cacerts -keystore identity.jks
keytool -export -alias selfsigned -file selfsigned.crt -keystore identity.jks
keytool -import -trustcacerts -alias selfsigned -file selfsigned.crt -keystore /u01/app/jdk1.7.0_80/jre/lib/security/cacerts

firewall-cmd --add-port=7000/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-all
select * from NEWGLH_DC.TSCHEDULE_DATE_MASTERS
where sys_dt >trunc(sysdate)-10 order by 1


经检查，由于昨天after batch dmp备份已完成。

刚刚监控告警，NEWGLH新团险uat数据的数据文件目录/data01/NEWGLH_instance/db使用率100%。

开空间使用率如下，IAOPER表空间较大，该表空间用于存放监管平台相关中间表数据。可能平台跑批的因数据空间不足报错，liszh数据表空间没有影响。需要和中科软确认，平台数据跑批报错的影响。

由于回滚表空间也较大，将其数据文件适当收缩，目前该文件目录使用率89%。根据平台数据的增长情况，

统计表空间IAOPER下对象的使用情况，发现表NGLH_LCCONT比重较大，该表应该为保单登记上报平台的表。
 select log_date,owner,job_name,ACTUAL_START_DATE,RUN_DURATION,ADDITIONAL_INFO
 from dba_scheduler_job_run_details
 where log_date>trunc(sysdate) order by log_date desc


 set linesize 200
 col segment_name for a30
 with t as (select to_char(sysdate,'yy-mm-dd') C_DATE,segment_name,
   segment_type,
   tablespace_name,
   round(sum(bytes) / 1024 / 1024 / 1024,2) size_gb
   from dba_segments
  where tablespace_name = 'IAOPER'
  group by segment_name, segment_type, tablespace_name
  --having sum(bytes) / 1024 / 1024 / 1024>1
  order by size_gb desc)
  select * from t where rownum<11


begin
  for i in (select sid,serial# from v$session where username = 'WFS_FIAT_DWH') loop
    execute immediate 'alter system kill session '''||i.sid||','||i.serial#||'''';
  end loop;
end;
/

drop user WFS_FIAT_DWH cascade;
  CREATE USER WFS_FIAT_DWH IDENTIFIED BY "rfv33bgt"
    DEFAULT TABLESPACE wfs_tbs02
    TEMPORARY TABLESPACE "TEMP"
    PROFILE "CMS_FIAT_COLL_PROFILE";

  grant dba to WFS_FIAT_DWH;

  grant SELECT on SYS.WFS_SESSION to WFS_FIAT_DWH;

  grant SELECT on SYS.V_$SESSION to WFS_FIAT_DWH;

  grant SELECT on SYS.GV_$SESSION to WFS_FIAT_DWH;

#export DT=`date +%Y%m%d`_06
export DT=20170729_06
export EXPOWNER=WFS_FIAT_LIVE
export IMPOWNER=WFS_FIAT_DWH
nohup impdp \'/ as sysdba\' directory=DP \
dumpfile=prod_${EXPOWNER}_${DT}.expdp.dmp \
logfile=prod_${EXPOWNER}_${DT}.impdp.log  \
remap_schema=$EXPOWNER:$IMPOWNER \
remap_tablespace=TBS_LS_IDX:WFS_TBS02,WFS_TABLESPACE:WFS_TBS02,USERS:WFS_TBS02,TBS_LS_DATA:WFS_TBS02,WFS:WFS_TBS02 \
parallel=4 &
--'
TBS_LS_IDX,WFS_TABLESPACE,USERS,TBS_LS_DATA,WFS

begin
  for i in (select sid,serial# from v$session where username = 'CMS_FIAT_DWH') loop
    execute immediate 'alter system kill session '''||i.sid||','||i.serial#||'''';
  end loop;
end;
/

drop user CMS_FIAT_DWH cascade;
CREATE USER CMS_FIAT_DWH IDENTIFIED BY edc55vfr
  DEFAULT TABLESPACE cms_tbs02
  TEMPORARY TABLESPACE "TEMP"
  PROFILE "CMS_FIAT_COLL_PROFILE";
grant dba to CMS_FIAT_DWH;

export DT=20170731_06
export EXPOWNER=CMS_FIAT
export IMPOWNER=CMS_FIAT_DWH
nohup impdp \'/ as sysdba\' directory=DP \
dumpfile=prod_${EXPOWNER}_$DT.expdp.dmp \
logfile=prod_${EXPOWNER}_$DT.${IMPOWNER}.impdp.log  \
remap_schema=$EXPOWNER:$IMPOWNER \
remap_tablespace=TBS_LS_IDX:CMS_TBS02,WFS_TABLESPACE:CMS_TBS02,USERS:CMS_TBS02,TBS_LS_DATA:CMS_TBS02,WFS:CMS_TBS02 \
parallel=8 > nohup_${IMPOWNER}.out &
--'


CREATE USER ods_fiat_ifrs9 IDENTIFIED BY Fiat2017
  DEFAULT TABLESPACE wfs
  TEMPORARY TABLESPACE "TEMP"
  PROFILE "CMS_FIAT_COLL_PROFILE";
grant dba to ods_fiat_ifrs9;


export IMP_OWNER=WFS_FIAT_DWH
nohup imp ${IMP_OWNER}/rfv33bgt file=WFS20170630_aftermonthend.DMP log=WFS20170630_aftermonthend.imp.`date +%Y%m%d`.log fromuser=WFS_FIAT_LIVE touser=${IMP_OWNER} buffer=102400 feedback=100000 grants=N > nohup_${IMP_OWNER}.out &
export IMP_OWNER=CMS_FIAT_DWH
nohup imp ${IMP_OWNER}/edc55vfr file=CMS20170630_aftermonthend.DMP log=CMS20170630_aftermonthend.imp.`date +%Y%m%d`.log fromuser=CMS_FIAT touser=${IMP_OWNER} buffer=102400 feedback=100000 grants=N > nohup_${IMP_OWNER}.out &


col size_mb for 999,999,999.99
break on instance_name
Compute Sum Label "Sum_Size_MB" Of size_mb On instance_name
select instance_name,owner,round(sum(bytes)/1024/1024,2) size_mb from dba_segments,v$instance
 where owner LIKE 'WFS%' or owner LIKE '%CMS%' or owner like '%ODS%'
group by instance_name,owner
order by 1,2;


CREATE USER ODSEAST IDENTIFIED BY ODSEAST_1111
  DEFAULT TABLESPACE WFS_TBS02
  TEMPORARY TABLESPACE "TEMP"
  PROFILE "CMS_FIAT_COLL_PROFILE";
grant dba to ODSEAST;
