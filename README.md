# logexhomework
Hello,
thank you for taking time for evaluating this homework.

You can find SQL queries for your tasks 2-5, at
https://github.com/jborovi/logexHomeWork/blob/main/answers/tasks.txt

reworked db schema for task 6 can be found at
https://github.com/jborovi/logexHomeWork/blob/main/dockerImages/mssql_db/sql_data/interview_db_schema_rework.sql

together with
https://github.com/jborovi/logexHomeWork/blob/main/dockerImages/mssql_db/sql_data/er_rework.png

I optimized the schema for faster querying by adding missing primary keys 
and foreign keys so the relations between tables are clear. 
plus removed table `test_prices` and added field `price` into`test_activities` table, so this table `test_prices` dont need to be joined. 


To run this project please install docker and docker-compose

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04


after docker-compose is installed you can run following command in project root

```docker-compose up --build```

to completely clear the mssql_db data you can run

```docker-compose down```


after sucesfull run, you should see similar logs
```
mssql_db_1     | setup.sql completed
sql_imports_1  | INFO:root:Truncated tables
sql_imports_1  | INFO:root:Starting creating imports at UTC time 2021-11-29 15:52:42.591486 with run id 463ba6ed-4c41-4e09-aefd-1dd6e391af37
sql_imports_1  | INFO:root:test_prices finished /tmp/test_prices463ba6ed-4c41-4e09-aefd-1dd6e391af37.csv
sql_imports_1  | INFO:root:test_patients finished /tmp/test_patients463ba6ed-4c41-4e09-aefd-1dd6e391af37.csv
sql_imports_1  | INFO:root:test_medical_trajectory finished /tmp/test_medical_trajectory463ba6ed-4c41-4e09-aefd-1dd6e391af37.csv
sql_imports_1  | INFO:root:test_trajectory_detail finished /tmp/test_trajectory_detail463ba6ed-4c41-4e09-aefd-1dd6e391af37.csv
sql_imports_1  | INFO:root:Finished imports run_id 463ba6ed-4c41-4e09-aefd-1dd6e391af37 at UTC time 2021-11-29 15:54:21.912648
sql_imports_1  | INFO:root:Imports took 0:01:39.321162
logexhomework_sql_imports_1 exited with code 0
```

this will setup following services
- mssql_db
  - which will be available on your localhost at port 8081
  to change the port mapping to your localhost you can change it at following line
  https://github.com/jborovi/logexHomeWork/blob/main/docker-compose.yml#L24
- sql_imports
  - which is python module filling the database with data 
  - starts with https://github.com/jborovi/logexHomeWork/blob/main/dockerImages/sql_imports/src/sql_imports/main.py
  - main logic is in https://github.com/jborovi/logexHomeWork/blob/main/dockerImages/sql_imports/src/sql_imports/create_exports.py
  - I am creating .csv export files imported by BULK INSERT query
  - files have unique names for each run

to change configuration parameters of the mssql_db and python connector
like user, password, or database

you can edit https://github.com/jborovi/logexHomeWork/blob/main/.env

Do not change port here please, it is the port where mssql_db is running inside the docker network

Have a nice day.



