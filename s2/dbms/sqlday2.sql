lab2@lab2-OptiPlex-380:~/Desktop/sql$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.04 sec)

mysql> CREATE DATABASE employee;
Query OK, 1 row affected (0.00 sec)

mysql> use employee
Database changed
mysql> CREATE TABLE emp(
    -> emp_id INTEGER PRIMARY KEY,
    -> emp_name TEXT NOT NULL,
    -> emp_add TEXT NOT NULL,
    -> emp_phone TEXT NOT NULL,
    -> dept_id TEXT NOT NULL,
    -> dept_name TEXT NOT NULL,
    -> salary TEXT NOT NULL
    -> );
Query OK, 0 rows affected (0.24 sec)

mysql> SHOW TABLES
    -> ;
+--------------------+
| Tables_in_employee |
+--------------------+
| emp                |
+--------------------+
1 row in set (0.00 sec)

mysql> DESC TABLE
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE' at line 1
mysql> DESC emp;
+-----------+---------+------+-----+---------+-------+
| Field     | Type    | Null | Key | Default | Extra |
+-----------+---------+------+-----+---------+-------+
| emp_id    | int(11) | NO   | PRI | NULL    |       |
| emp_name  | text    | NO   |     | NULL    |       |
| emp_add   | text    | NO   |     | NULL    |       |
| emp_phone | text    | NO   |     | NULL    |       |
| dept_id   | text    | NO   |     | NULL    |       |
| dept_name | text    | NO   |     | NULL    |       |
| salary    | text    | NO   |     | NULL    |       |
+-----------+---------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> INSERT INTO emp
    -> ( 1, 'alby', 'kothamangalam', '8374923099', '1', 'ca', '80000'),
    -> ( 2, 'albin', 'nadukani', '9836828996', '1', 'ca', '80000'),
    -> ( 3, 'alan', 'pooyamkutty', '9837829867', '1', 'ca', '80000'),
    -> ( 4, 'shyam', 'gnoida', '8276828786', '2', 'cse','82000'),
    -> ( 5, 'joshy', 'ernakulam', '7682978653', 'ece', '82000');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1, 'alby', 'kothamangalam', '8374923099', '1', 'ca', '80000'),
( 2, 'albin', 'na' at line 2
mysql> INSERT INTO emp VALUES ( 1, 'alby', 'kothamangalam', '8374923099', '1', 'ca', '80000'), ( 2, 'albin', 'nadukani', '9836828996', '1', 'ca', '80000'
', '7682978653', 'ece', '82000');
ERROR 1136 (21S01): Column count doesnt match value count at row 5
mysql> INSERT INTO emp VALUES ( 1, 'alby', 'kothamangalam', '8374923099', '1', 'ca', '80000'), ( 2, 'albin', 'nadukani', '9836828996', '1', 'ca', '80000'), ( 3, 'alan', 'pooyamkutty', '9837829867', '1', 'ca', '80000'), ( 4, 'shyam', 'gnoida', '8276828786', '2', 'cse','82000'), ( 5, 'joshy', 'ernakulam', '7682978653', '3', 'ece', '82000');
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * 
    ->   FROM emp;
+--------+----------+---------------+------------+---------+-----------+--------+
| emp_id | emp_name | emp_add       | emp_phone  | dept_id | dept_name | salary |
+--------+----------+---------------+------------+---------+-----------+--------+
|      1 | alby     | kothamangalam | 8374923099 | 1       | ca        | 80000  |
|      2 | albin    | nadukani      | 9836828996 | 1       | ca        | 80000  |
|      3 | alan     | pooyamkutty   | 9837829867 | 1       | ca        | 80000  |
|      4 | shyam    | gnoida        | 8276828786 | 2       | cse       | 82000  |
|      5 | joshy    | ernakulam     | 7682978653 | 3       | ece       | 82000  |
+--------+----------+---------------+------------+---------+-----------+--------+
5 rows in set (0.00 sec)

mysql> CREATE USER john IDENTIFIED BY 'john' ;
Query OK, 0 rows affected (0.06 sec)

mysql> SHOW USERS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'USERS' at line 1
mysql> SHOW GRANTS FOR john;
+----------------------------------+
| Grants for john@%                |
+----------------------------------+
| GRANT USAGE ON *.* TO 'john'@'%' |
+----------------------------------+
1 row in set (0.00 sec)

mysql> GRANT ALL ON emp TO john;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW GRANTS FOR john;
+--------------------------------------------------------+
| Grants for john@%                                      |
+--------------------------------------------------------+
| GRANT USAGE ON *.* TO 'john'@'%'                       |
| GRANT ALL PRIVILEGES ON `employee`.`emp` TO 'john'@'%' |
+--------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> GRANT ALL ON employee TO john;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW GRANTS FOR john;
+-------------------------------------------------------------+
| Grants for john@%                                           |
+-------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'john'@'%'                            |
| GRANT ALL PRIVILEGES ON `employee`.`emp` TO 'john'@'%'      |
| GRANT ALL PRIVILEGES ON `employee`.`employee` TO 'john'@'%' |
+-------------------------------------------------------------+
3 rows in set (0.00 sec)

mysql> quit;
Bye
lab2@lab2-OptiPlex-380:~/Desktop/sql$ mysql -u john -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7
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
| employee           |
+--------------------+
2 rows in set (0.02 sec)

mysql> SELECT * 
    ->   FROM emp;
ERROR 1046 (3D000): No database selected
mysql> SELECT *   FROM employee;
ERROR 1046 (3D000): No database selected
mysql> use employee;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SELECT * FROM employee;
ERROR 1146 (42S02): Table 'employee.employee' doest exist
mysql> SELECT * FROM emp;
+--------+----------+---------------+------------+---------+-----------+--------+
| emp_id | emp_name | emp_add       | emp_phone  | dept_id | dept_name | salary |
+--------+----------+---------------+------------+---------+-----------+--------+
|      1 | alby     | kothamangalam | 8374923099 | 1       | ca        | 80000  |
|      2 | albin    | nadukani      | 9836828996 | 1       | ca        | 80000  |
|      3 | alan     | pooyamkutty   | 9837829867 | 1       | ca        | 80000  |
|      4 | shyam    | gnoida        | 8276828786 | 2       | cse       | 82000  |
|      5 | joshy    | ernakulam     | 7682978653 | 3       | ece       | 82000  |
+--------+----------+---------------+------------+---------+-----------+--------+
5 rows in set (0.00 sec)

mysql> mysql>L
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UPDATEL' at line 1
mysql> UPDATE emp 
    ->    SET emp_name = 'rahul'
    ->  WHERE emp_id = 5;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM emp;
+--------+----------+---------------+------------+---------+-----------+--------+
| emp_id | emp_name | emp_add       | emp_phone  | dept_id | dept_name | salary |
+--------+----------+---------------+------------+---------+-----------+--------+
|      1 | alby     | kothamangalam | 8374923099 | 1       | ca        | 80000  |
|      2 | albin    | nadukani      | 9836828996 | 1       | ca        | 80000  |
|      3 | alan     | pooyamkutty   | 9837829867 | 1       | ca        | 80000  |
|      4 | shyam    | gnoida        | 8276828786 | 2       | cse       | 82000  |
|      5 | rahul    | ernakulam     | 7682978653 | 3       | ece       | 82000  |
+--------+----------+---------------+------------+---------+-----------+--------+
5 rows in set (0.01 sec)

mysql> quit;
Bye
lab2@lab2-OptiPlex-380:~/Desktop/sql$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use employee;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> REVOKE ALL ON employee FROM john;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW GRANTS FOR john;
+--------------------------------------------------------+
| Grants for john@%                                      |
+--------------------------------------------------------+
| GRANT USAGE ON *.* TO 'john'@'%'                       |
| GRANT ALL PRIVILEGES ON `employee`.`emp` TO 'john'@'%' |
+--------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> REVOKE ALL ON emp FROM john;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW GRANTS FOR john;
+----------------------------------+
| Grants for john@%                |
+----------------------------------+
| GRANT USAGE ON *.* TO 'john'@'%' |
+----------------------------------+
1 row in set (0.00 sec)

mysql> quit;
Bye
lab2@lab2-OptiPlex-380:~/Desktop/sql$ mysql -u john -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
+--------------------+
1 row in set (0.00 sec)

mysql> USE employee;
ERROR 1044 (42000): Access denied for user 'john'@'%' to database 'employee'
mysql>
