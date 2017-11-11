-- 
-- 
-- script to generate AWR collections 
-- for every interval 
-- 
-- connect as any user with access to the AWR Data Dictionary views, such as the SYSTEM account.   
-- 
set echo off 
set heading off 
set feedback off 
set pagesize 50000 
set linesize 999 
set trimspool on 

whenever sqlerror continue 

undef begin_snap 
undef end_snap 

prompt 
prompt 
prompt 
prompt EMC Snapshot Oracle Collection Tool 
prompt ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
prompt 
prompt Current Snapshot Id Range 
prompt ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

select 
  'Current minimum Snapshot Id is '||min(snap_id)|| 
  ' and maximum Snapshot Id is '||max(snap_id) 
  "-- Snapshot Range" 
from dba_hist_snapshot 
/ 

prompt 
prompt Specify the Begin and End Snapshot Ids 
prompt ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
prompt 
prompt Enter <RETURN> to accept default 
prompt 
prompt Begin Snapshot Id specified: &&begin_snap 
prompt 
prompt Enter <RETURN> to accept default 
prompt 
prompt End   Snapshot Id specified: &&end_snap 
prompt 

-- 
--  determine the high and low statspack collections 
-- 
variable bid        number; 
variable eid        number; 
variable minbid     number; 
variable maxeid     number; 

begin 
  select min(snap_id) into :minbid from dba_hist_snapshot; 
  select max(snap_id) into :maxeid from dba_hist_snapshot; 

  select 
    &begin_snap 
  into :bid from dual; 
  
  select 
    &end_snap 
  into :eid from dual; 

end; 
/ 

-- 
-- create a spool file 
-- 
spool awr_collect.sql 

select 'set echo off'       from dual; 
select 'set heading off'    from dual; 
select 'set feedback off'   from dual; 
select 'set pagesize 50000' from dual; 
select 'set linesize 999'   from dual; 
select 'set trimspool on'   from dual; 
select 'alter session set nls_date_language=american;' from dual; 


with summary_t as
 (select snap.dbid,
         snap.instance_number,
         snap.snap_id ,snap.snap_id+24 end_snap_id,snap.end_interval_time ,
         lag(snap.snap_id, 1) over(order by snap.instance_number, snap.snap_id) last_snap_id,
         snap.startup_time,
         lag(snap.startup_time, 1) over(order by snap.instance_number, snap.snap_id) last_startup_time
    from dba_hist_snapshot snap where to_char(snap.end_interval_time,'hh24') = '00')
select 'spool awrrpt_' || host_name || '_' || instance_name || '_' || to_char(end_interval_time,'yyyymmdd_hh24')
||'to'||to_char(end_interval_time+1,'yyyymmdd_hh24')||'.html' || chr(10) ||
       'select output from table ( dbms_workload_repository.awr_report_html(' ||
       vd.dbid || ',' || snap.instance_number || ',' || snap.snap_id || ',' ||
       end_snap_id || '));' || chr(10) || 'spool off' "-- command"
  from summary_t snap, v$database vd,v$instance
 where 1 = 1
   and vd.dbid = snap.dbid
    --/*and snap.startup_time = snap.last_startup_time
  and snap.end_interval_time >= to_date('20170801 00','yyyymmdd hh24')
   and snap.end_interval_time <= to_date('20170815 00','yyyymmdd hh24')
 order by snap.snap_id asc;


spool off 
