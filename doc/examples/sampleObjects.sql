-- 1. `tablespaces_are()`
--      if there are other -> it fails
SELECT tablespaces_are(ARRAY[ 'dbspace', 'indexspace' ]);

-- 2.
SELECT schemas_are(ARRAY[ 'public', 'contrib', 'tap' ]);

-- 3.
SELECT tables_are(
               'myschema',
               ARRAY[ 'users', 'widgets', 'gadgets', 'session' ]
);

-- TODO:

-- X. functions_are()
SELECT functions_are(
               'myschema',
               ARRAY[ 'foo', 'bar', 'frobnitz' ]
);