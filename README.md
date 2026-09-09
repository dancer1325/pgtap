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
