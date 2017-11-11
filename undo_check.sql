set linesize 200
set pagesize 200
--select * from dba_thresholds  a where object_type = 'TABLESPACE';
col status for a10
col MB for 999,999,999.99
select status, count(status),sum(bytes)/1024/1024 MB
  from dba_undo_extents
 where status in ('UNEXPIRED', 'EXPIRED', 'ACTIVE')
 group by status;
 
select sum(bytes)/1024/1024 from dba_undo_extents where status='ACTIVE';

col status for a10
col username for a20
col duration for a12
col module for a35
col start_time for a20
select sid, serial#, s.STATUS, s.USERNAME, s.MODULE, t.START_TIME, ue.BYTES
  from v$session s, v$rollname rn, v$transaction t, dba_undo_extents ue
 where s.TADDR = t.ADDR
   and t.XIDUSN = rn.usn
   and rn.name = ue.SEGMENT_NAME
   and ue.STATUS = 'ACTIVE';

col tablespace_name for a20
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
         where a.tablespace_name = b.tablespace_name(+) and a.tablespace_name = 'UNDOTBS1'
);

col machine for a40
with t as
 (select sid,
         serial#,
         s.STATUS S_STATUS,
         UE.STATUS T_STATUS,
         s.USERNAME,
         s.MODULE,s.machine,
         t.START_TIME,
         substr(numtodsinterval(sysdate -
                                to_date(t.START_TIME, 'mm/dd/yy hh24:mi:ss'),
                                'day'),
                9,
                11) DURATION,
         sum(ue.BYTES) / 1024 / 1024 SIZE_MB,t.used_urec 
    from v$session s, v$rollname rn, v$transaction t, dba_undo_extents ue
   where s.TADDR = t.ADDR
     and t.XIDUSN = rn.usn
     and rn.name = ue.SEGMENT_NAME
     and ue.STATUS = 'ACTIVE'
   group by sid,
            serial#,
            s.STATUS,
            UE.STATUS,
            s.USERNAME,
            s.MODULE,s.machine,
            t.START_TIME,t.used_urec
   order by size_mb desc)
select * from t where rownum < 11;
