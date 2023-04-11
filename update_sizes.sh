#########################################################################################
# Created in 06/04/2023 by Clovis Vieira - distributed under GPU license
# Adjust directory for your instalation
#########################################################################################

export NLS_LANG=American_Brazil.WE8ISO8859P1 # adjust
export ORACLE_SID=goiania # adjust
export ORACLE_HOME=/opt/oracle/product/11.2.0/dbhome_1 # adjust
export PATH=$PATH:$ORACLE_HOME/bin # adjust
/opt/oracle/product/11.2.0/dbhome_1/bin/sqlplus / as sysdba << EOF
insert into sizes select owner, segment_name, bytes/power(1024,2), sysdate from dba_segments where bytes/power(1024,2) > 10;
exit;
EOF

# Adjust number of megabytes your need monitoring