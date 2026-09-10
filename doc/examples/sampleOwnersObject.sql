-- 1. `db_owner_is ()`
SELECT db_owner_is( 'mydb', 'someuser', 'mydb should be owned by someuser' );
SELECT db_owner_is( current_database(), current_user );

