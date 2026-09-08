-- 1. setup
CREATE EXTENSION IF NOT EXISTS pgtap;

-- 2. declare the NUMBER of tests / you are going to execute
SELECT plan( 23 );

-- 3. assertions
-- All test functions take an optional description argument (highly suggested).
-- The number is assigned automatically in order.
--
--   ok 4                           <- no description
--   ok 4 - force == mass * accel   <- description as function argument

SELECT ok( :have = :want );
SELECT ok( :have = :want, 'force == mass * acceleration' );

SELECT is(   :have, :want );
SELECT is(   :have, :want, 'simple exponential' );

SELECT isnt( :have, :want );
SELECT isnt( :have, :want, 'basic multi-variable' );

-- 4. diagnostic
SELECT diag( 'here''s what went wrong' );

-- 5. compare with patrons
SELECT alike(   :have, :like_expression, :test_description );
SELECT unalike( :have, :like_expression, :test_description );

SELECT matches(      :have, :regex, :test_description );
SELECT doesnt_match( :have, :regex, :test_description );

SELECT cmp_ok(:have, '=', :want, :test_description );

-- 6. Skip tests based on runtime conditions.
SELECT CASE WHEN :some_feature THEN collect_tap(
        ok( foo(),       :test_description),
    is( foo(42), 23, :test_description)
) ELSE skip(:why, :how_many ) END;

-- Mark some tests as to-do tests.
SELECT todo(:why, :how_many);
SELECT ok( foo(),       :test_description);
SELECT is( foo(42), 23, :test_description);

-- Simple pass/fail.
SELECT pass(:test_description);
SELECT fail(:test_description);
