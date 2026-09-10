-- 1. `skip()`
-- 1.1 | `SELECT`
SELECT CASE WHEN pg_version_num() < 80300
                THEN skip('has_enum() not supported before 8.3', 2 )
            ELSE collect_tap(
                    has_enum( 'bug_status' ),
                    has_enum( 'bug_status', 'mydesc' )
                 ) END;

-- 1.2 skip( :whyToSkipTheTests )
--      how_manySkipsToTest
--          if you do NOT specify it -> skip 1! test
SELECT CASE current_schema()
           WHEN 'public' THEN is( :this, :that )
    ELSE skip( 'Tests not running in the "public" schema' )
END;

-- 1.3 | `SELECT ... FROM <TABLE_NAME>`
SELECT CASE current_schema()
           WHEN 'public' THEN is( nspname, 'public' )
    ELSE skip( 'Cannot see the public schema' )
END
FROM pg_namespace;

-- 2. `todo()`
SELECT todo('URIGeller not finished', 2);

\set card '\'Eight of clubs\''
SELECT is( URIGeller.yourCard(), :card, 'Is THIS your card?' );
SELECT is( URIGeller.bendSpoon(), 'bent', 'Spoon bending, how original' );