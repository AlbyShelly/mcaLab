b2@lab2-OptiPlex-380:~/Desktop/sql$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| employee           |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.19 sec)

mysql> use albydb
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables
    -> ;
+------------------+
| Tables_in_albydb |
+------------------+
| department       |
| employee         |
| student          |
+------------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE people(
    -> rollno INT,
    -> name varchar(20),
    -> course VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.39 sec)

mysql> DESC people;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| course | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO people
    -> VALUES (1,'alby','MCA'), 
    ->        (2,'josin', 'MCA');
Query OK, 2 rows affected (0.23 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT *
    ->   FROM people;
+--------+-------+--------+
| rollno | name  | course |
+--------+-------+--------+
|      1 | alby  | MCA    |
|      2 | josin | MCA    |
+--------+-------+--------+
2 rows in set (0.03 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.17 sec)

mysql> SAVEPOINT a;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO people VALUES (3,'albin','MCA');
Query OK, 1 row affected (0.18 sec)

mysql> SELECT *   FROM people;
+--------+-------+--------+
| rollno | name  | course |
+--------+-------+--------+
|      1 | alby  | MCA    |
|      2 | josin | MCA    |
|      3 | albin | MCA    |
+--------+-------+--------+
3 rows in set (0.04 sec)

mysql> ROLLBACK TO a;
Query OK, 0 rows affected (0.08 sec)

mysql> SELECT *   FROM people;
+--------+-------+--------+
| rollno | name  | course |
+--------+-------+--------+
|      1 | alby  | MCA    |
|      2 | josin | MCA    |
+--------+-------+--------+
2 rows in set (0.00 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT *   FROM people;
+--------+-------+--------+
| rollno | name  | course |
+--------+-------+--------+
|      1 | alby  | MCA    |
|      2 | josin | MCA    |
+--------+-------+--------+
2 rows in set (0.00 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO people VALUES (4,'alan','MCA');
Query OK, 1 row affected (0.07 sec)

mysql> SELECT * FROM people;
+--------+-------+--------+
| rollno | name  | course |
+--------+-------+--------+
|      1 | alby  | MCA    |
|      2 | josin | MCA    |
|      4 | alan  | MCA    |
+--------+-------+--------+
3 rows in set (0.00 sec)

mysql> ROLLBACK TO a;
ERROR 1305 (42000): SAVEPOINT a does not exist
mysql> START TRANSACTION
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO people VALUE(5,'
    '> ;
    '> ;';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO people VALUES (5, 'antony', 'MCA');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM people;
+--------+--------+--------+
| rollno | name   | course |
+--------+--------+--------+
|      1 | alby   | MCA    |
|      2 | josin  | MCA    |
|      4 | alan   | MCA    |
|      5 | antony | MCA    |
+--------+--------+--------+
4 rows in set (0.00 sec)

mysql> SAVEPOINT a
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM people;
+--------+-------+--------+
| rollno | name  | course |
+--------+-------+--------+
|      1 | alby  | MCA    |
|      2 | josin | MCA    |
|      4 | alan  | MCA    |
+--------+-------+--------+
3 rows in set (0.00 sec)

mysql> 

