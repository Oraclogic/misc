
set echo off

set heading off

set feedback off

set pagesize 50000

set linesize 999

set trimspool on

alter session set nls_date_language=american;

spool awrrpt_CNX01A_CAS_20170801_00to20170802_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32572,32596));
spool off

spool awrrpt_CNX01A_CAS_20170802_00to20170803_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32596,32620));
spool off

spool awrrpt_CNX01A_CAS_20170803_00to20170804_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32620,32644));
spool off

spool awrrpt_CNX01A_CAS_20170804_00to20170805_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32644,32668));
spool off

spool awrrpt_CNX01A_CAS_20170805_00to20170806_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32668,32692));
spool off

spool awrrpt_CNX01A_CAS_20170806_00to20170807_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32692,32716));
spool off

spool awrrpt_CNX01A_CAS_20170807_00to20170808_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32716,32740));
spool off

spool awrrpt_CNX01A_CAS_20170808_00to20170809_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32740,32764));
spool off

spool awrrpt_CNX01A_CAS_20170809_00to20170810_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32764,32788));
spool off

spool awrrpt_CNX01A_CAS_20170810_00to20170811_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32788,32812));
spool off

spool awrrpt_CNX01A_CAS_20170811_00to20170812_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32812,32836));
spool off

spool awrrpt_CNX01A_CAS_20170812_00to20170813_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32836,32860));
spool off

spool awrrpt_CNX01A_CAS_20170813_00to20170814_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32860,32884));
spool off

spool awrrpt_CNX01A_CAS_20170814_00to20170815_00.html
select output from table ( dbms_workload_repository.awr_report_html(715418717,1,32884,32908));
spool off

