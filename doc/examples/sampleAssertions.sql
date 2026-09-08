-- 1. ok
SELECT ok( 9 ^ 2 = 81,    'simple exponential' );
SELECT ok( 9 < 10,        'simple comparison' );
SELECT ok( 'foo' ~ '^f',  'simple regex' );
SELECT ok( active = true, name || 'widget active' )
FROM widgets;