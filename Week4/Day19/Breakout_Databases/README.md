# Advanced Breakout Session: Databases
Concept of not duplicating data in a database is called "normalizing". Code is very DRY.

Most data is relational.

SQL stands for "Structure Query Language."

Run MySQL in Terminal with Homebrew:
mysql.server start
```
mysql -u root
mysql> SHOW DATABASES;
mysql> CREATE DATABASE snow_example;
mysql> INSERT INTO snows (type, description) VALUES ("fresh pow", "light, fluffy, fast");
```

If you do not create the table *first*, you will get an error:
```
ERROR 1146 (42502): Table 'snow_example' doesn't exist
```

```
mysql> CREATE TABLE snows (type VARCHAR(255), description TEXT);
mysql> DESCRIBE snows;
mysql> INSERT INTO snows (type, description) VALUES ("fresh pow", "light, fluffy, fast");
mysql> SELECT * FROM snows;
```

```
Query OK, 1 row affected (0.02 sec)
```

(mysql.server stop)

PostgreSQL

## NoSQL
Unlike SQL, you can save data at any place, and any time.
Has no schema. (Anarchy!)

Code is very WET, but the upside that it reads considerably faster then SQL.

### MongoDB

use table_name
show collections	( Collections = SQL tables??)

Uses JavaScript syntax.

db.example.find()
Returns a full array.

Documents = SQL Rows

### Redis

NoSQL in-memory database that is somehow ALSO permanent (magic?).
Very fast on the Read.

Basically a giant hash.
Datatypes:
- Lists (Arrays)
- Strings
- Hashes

Used as a cache for your data. Useful for memory crashing data that is being hit accessively.

When update my data, recreate from cache. (Can be done dynamically through app.)
Alleviates database from having to use resources on queries by acessing things through the memory instead of interacting with the database directly.

## In-Memory Databases
Enterprise-level, high traffic applications require multiple databasing servicing solutions to deliver fast, real-time data.

# Hosting Options & Computing Power
Leapfrog doing work locally
Go to amazon instance first
Then database

With Amazon Web Services EC2 instance server, you are provided a virtual server dedicated solely for your application with assured processing power , CPU performance and memory.