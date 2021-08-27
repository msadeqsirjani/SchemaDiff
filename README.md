# Schema Diff - Script and create SQL Server objects quickly

## Schema Diff has three main commands:

### script
```bash
SchemaDiff.exe script --server localhost --database db --scriptDir c:\somedir
```

This will generate sql scripts for all objects in the database in a
directory structure that looks something like:
```
c:\somedir\
	data
	foreign_keys
	procedures
	tables
	views
	props.sql
	schemas.sql
```

### create
```bash
SchemaDiff.exe create --server localhost --database db --scriptDir c:\somedir
```

This will create a database named db from the sql scripts in c:\somedir.


### compare
```bash
SchemaDiff.exe compare --source "server=dev;database=db" --target "server=qa;database=db" --outFile diff.sql
```

This will compare the databases named `db` between `dev` and `qa` and
create a sql script called `diff.sql` that can be run on `qa` to make it's
schema identical to `dev`.


See ```SchemaDiff.exe help [command]``` for more information and options on each command.
