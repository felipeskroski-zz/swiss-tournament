## Swiss tournament

A swiss tournament matching system in python and postgress

## Requirements
1. Python 2.7
2. PostgreSQL

## Python dependencies
psycopg2
```
pip install psycopg2
```

## Installation

### Create a database

1. On your terminal log in to your postgres console using this command
```
psql
```
2. Create the database
```
CREATE DATABASE tournament;
```

3. connect the database just created
```
\connect tournament
```

4. Run the sql file to create the schema
\i tournament.sql

### Check if it's all running fine
Run the following command on your terminal:
```
python tournament_test.py
```


### Feedback
Star this repo if you found it useful. Use the github issue tracker to give
feedback on this repo.

## Licensing
See [MIT](https://opensource.org/licenses/MIT)

## Author
Felipe Skroski
