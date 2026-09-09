# Synopsis
TODO:

# how to install?
## if you're using PostgreSQL | Docker -> you need to install pgTAP | the Docker container
* `docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres`
* `docker exec -it some-postgres sh`
* `apt-get update`
* `apt-get install pgtap`
* `pg_prove --version`

# schema testing functions
TODO:

## TODO: adjust section level
### recommendations:
#### `schemaTestingFunctions(lowercaseStrings)`
* `CREATE TABLE Foo (id integer);`
* `SELECT has_table('foo');`
  * use `foo` 
    * == lowercase
#### if SQL identifier is declared -- via -- "SoMe_NamE" -> `schemaTestingFunctions(SoMe_NamE)`
* `CREATE TABLE "Foo" (id integer);`
* `SELECT has_table('Foo');`

# TODO:
TODO: