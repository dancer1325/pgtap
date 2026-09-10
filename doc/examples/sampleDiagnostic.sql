-- 1. `diag()`
-- Output a diagnostic message if the collation is not en_US.UTF-8.
SELECT diag(
               E'These tests expect LC_COLLATE to be en_US.UTF-8,\n',
               'but yours is set to ', setting, E'.\n',
               'As a result, some tests may fail. YMMV.'
       )
FROM pg_settings
WHERE name = 'lc_collate'
  AND setting <> 'en_US.UTF-8';


