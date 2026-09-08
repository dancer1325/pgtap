pgTAP 1.3.5
===========

* pgTAP
  * == ⭐️unit testing framework -- for -- PostgreSQL + [TAP](https://testanything.org)-emitting assertion functions⭐️
  * ⚠️requirements⚠️
    * PostgreSQL v9.1+
    * host / run a PostgreSQL server
      * ❌!= be installed remotely❌
  
* unit testing framework -- for -- PostgreSQL /  
  * written | 
    * PL/pgSQL
    * PL/SQL
  * ALLOWED styles 
    * TAP
      * ALSO can integrate -- with -- OTHER TAP-emitting test frameworks
    * xUnit testing style

* TAP-emitting assertion functions
  * == assertion functions / output TAP

* "Test Anything Protocol" (TAP)
  * == 👀standard -- for -- unit tests' output👀
  * 's format
    * == text-based interface /
      * practical machine parsing
      * high legibility for humans
  * 's origin
    * Perl's test execution
  * 's EXISTING CURRENT implementations
    * C/C++
    * Python
    * PHP
    * JavaScript
    * PostgreSQL

## documentation

* [here](doc)

## community

* [pgtap-users google mail list](https://groups.google.com/forum/#!forum/pgtap-users)

## how to build?

```sh
make
make install
make installcheck
```

* PROBLEMS:
  * PROBLEM1: "Makefile", line 8: Need an operator
    * SOLUTION:

      ```sh
      gmake
      gmake install
      gmake installcheck
      ```
  * PROBLEM2: "make: pg_config: Command not found" OR "Makefile:52: *** pgTAP requires PostgreSQL 9.1 or later."
    * SOLUTION:
      * install 
        * `pg_config` | your path
        * `-devel` package
      * `env PG_CONFIG=/path/to/pg_config make && make install && make installcheck`
      * `env NO_PGXS=1 make && make install && make installcheck`
        * copy the entire distribution directory | PostgreSQL source tree's "contrib/"
  * PROBLEM3: "ERROR:  must be owner of database regression"
    * SOLUTION: `make installcheck PGUSER=postgres` 
  * PROBLEM4: "ERROR: Missing extensions required for testing: citext isn ltree"
    * SOLUTION: install the PostgreSQL [ADDITIONAL supplied modules](https://www.postgresql.org/docs/current/contrib.html)
      * if you want to install the extension | PostgreSQL v18+'s CUSTOM prefix -> 
        * include the prefix | "postgresql.conf"

          ```ini
          extension_control_path = '/usr/local/extras/postgresql/share:$system'
          dynamic_library_path   = '/usr/local/extras/postgresql/lib:$libdir'
          ```

        * pass the `prefix` argument

          ```sh
          make install prefix=/usr/local/extras
          ```

## TODO: where to place

* if you want to
  * add pgTAP -- to -- a database ->

    ```sql
    -- connect as superuse
    CREATE EXTENSION pgtap;
    ```

  * upgrade -- to -- a properly packaged extension ->

    ```sql
    CREATE EXTENSION pgtap FROM unpackaged;
    ```

  * install pgTAP + ALL its supporting objects | a specific schema -> specify the schema -- via -- `SCHEMA`

    ```sql
    CREATE EXTENSION pgtap SCHEMA tap;
    ```
