-- 1. `database_privs_are()`
SELECT database_privs_are(
               'flipr', 'fred', ARRAY['CONNECT', 'TEMPORARY'],
               'Fred should be granted CONNECT and TEMPORARY on db "flipr"'
       );
SELECT database_privs_are( 'dept_corrections', ARRAY['CREATE'] );

