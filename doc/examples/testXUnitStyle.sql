-- 1. write your unit test functions /
--      return a set of text results
CREATE OR REPLACE FUNCTION setup_insert(
  ) RETURNS SETOF TEXT AS $$
BEGIN
RETURN NEXT is( MAX(nick), NULL, 'Should have no users') FROM users;
INSERT INTO users (nick) VALUES ('theory');
END;
  $$ LANGUAGE plpgsql;

  CREATE OR REPLACE FUNCTION test_user(
  ) RETURNS SETOF TEXT AS $$
SELECT is( nick, 'theory', 'Should have nick') FROM users;
$$ LANGUAGE sql;

  -- 2. run your tests
SELECT * FROM runtests();