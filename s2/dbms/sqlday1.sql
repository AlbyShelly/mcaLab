 mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show tables
    -> ;
ERROR 1046 (3D000): No database selected
mysql> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.04 sec)

mysql> CREATE DATABASE albydb;
Query OK, 1 row affected (0.01 sec)

mysql> USE albydb;
Database changed
mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE
    -> students(
    -> 
Display all 763 possibilities? (y or n) 
    -> rollno INT PRIMARY KEY,
    -> name VARCHAR(30),
    -> course VARCHAR(30),
    -> year INT,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 7
mysql> CREATE TABLE students( rollno INT PRIMARY KEY, name VARCHAR(30), course VARCHAR(30), year INT );
Query OK, 0 rows affected (0.27 sec)

mysql> SHOW TABLES
    -> ;
+------------------+
| Tables_in_albydb |
+------------------+
| students         |
+------------------+
1 row in set (0.00 sec)

mysql> DESC students;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| course | varchar(30) | YES  |     | NULL    |       |
| year   | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> DESC
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DESC 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DESC students;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| course | varchar(30) | YES  |     | NULL    |       |
| year   | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> DESC
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DESC albydb
    -> ;
ERROR 1146 (42S02): Table 'albydb.albydb' doesnt exist
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> SHOW SCHEMAS;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> SHOW SCHEMA;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SCHEMA' at line 1
mysql> USE albydb;
Database changed
mysql> DESC s
set option        show keys from    status           
show databases    show tables       sys              
show fields from  source            system           
mysql> DESC students
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| course | varchar(30) | YES  |     | NULL    |       |
| year   | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE students
    -> CHANGE name Name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> ALTER TABLE students CHANGE name Name INT;
Query OK, 0 rows affected (0.71 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC students
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | NO   | PRI | NULL    |       |
| Name   | int(11)     | YES  |     | NULL    |       |
| course | varchar(30) | YES  |     | NULL    |       |
| year   | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> TRUNCATE TABLE students;
Query OK, 0 rows affected (0.20 sec)

mysql> ALTER TABLE CHANGE 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CHANGE' at line 1
mysql> ALTER TABLE students
    -> CHANGE Name name VARCHAR(30);
Query OK, 0 rows affected (0.51 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC students;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| course | varchar(30) | YES  |     | NULL    |       |
| year   | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> ALTER TABLE students student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student' at line 1
mysql> ALTER TABLE students 
    -> RENAME TO student;
Query OK, 0 rows affected (0.13 sec)

mysql> DESC 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW TABLES;
+------------------+
| Tables_in_albydb |
+------------------+
| student          |
+------------------+
1 row in set (0.00 sec)

mysql> DESC
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DESC albydb
    -> ;
ERROR 1146 (42S02): Table 'albydb.albydb' doesnt exist
mysql> SHOW TABLES
    -> ;
+------------------+
| Tables_in_albydb |
+------------------+
| student          |
+------------------+
1 row in set (0.00 sec)

mysql> SCHEMA ALBYDB
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SCHEMA ALBYDB' at line 1
mysql> SHOW
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> DESC Inofrmatio_schema
    -> ;
ERROR 1146 (42S02): Table 'albydb.Inofrmatio_schema' doesnt exist
mysql> use albydb
Database changed
mysql> DESC ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW TABLES;
+------------------+
| Tables_in_albydb |
+------------------+
| student          |
+------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE employee(
    -> empid INT,
    -> name INT,
    -> dept VARCHAR(30),
    -> salary INT
    -> );
Query OK, 0 rows affected (0.43 sec)

mysql> CREATE TABLE department (
    -> deptid INT,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> CREATE TABLE department (
    -> dept_id INT,
    -> dept_name VARCHAR(30),
    -> hod VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.26 sec)

mysql> DESC employee
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empid  | int(11)     | YES  |     | NULL    |       |
| name   | int(11)     | YES  |     | NULL    |       |
| dept   | varchar(30) | YES  |     | NULL    |       |
| salary | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

mysql> DESC department
    -> ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(11)     | YES  |     | NULL    |       |
| dept_name | varchar(30) | YES  |     | NULL    |       |
| hod       | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO employee 
    -> VALUES ( 1, 'alby', 'CA', 120000) ,
    ->        ( 2, 'josin', 'CA', 130000),
    -> 
Display all 763 possibilities? (y or n) 
    ->        ( 3, 'albin', 'CA', 140000), 
    ->        ( 4, 'alan', 'CA', 150000);
ERROR 1366 (HY000): Incorrect integer value: 'alby' for column 'name' at row 1
mysql> ALTER TABLE employee CHANGE name name VARCHAR (30);
Query OK, 0 rows affected (0.70 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC employee
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empid  | int(11)     | YES  |     | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| dept   | varchar(30) | YES  |     | NULL    |       |
| salary | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> INSERT INTO employee VALUES ( 1, 'alby', 'CA', 120000) ,        ( 2, 'josin', 'CA', 130000),        ( 3, 'albin', 'CA', 140000),        ( 4, 'alan', 'CA', 150000);
Query OK, 4 rows affected (0.12 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * 
    ->   FROM employee;
+-------+-------+------+--------+
| empid | name  | dept | salary |
+-------+-------+------+--------+
|     1 | alby  | CA   | 120000 |
|     2 | josin | CA   | 130000 |
|     3 | albin | CA   | 140000 |
|     4 | alan  | CA   | 150000 |
+-------+-------+------+--------+
4 rows in set (0.01 sec)

mysql> DESC DEPARTMENT
    -> ;
ERROR 1146 (42S02): Table 'albydb.DEPARTMENT' doesnt exist
mysql> DESC department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(11)     | YES  |     | NULL    |       |
| dept_name | varchar(30) | YES  |     | NULL    |       |
| hod       | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO department
    -> VALUES ( 1, 'MCA', 'reshma'),
    ->        ( 2, 'civil', 'bindhu'),
    ->        ( 3, 'CS', 'midhun');
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO department
    -> VALUES ( 4, 'Mech', 'Ajil');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT *
    ->   FROM department;
+---------+-----------+--------+
| dept_id | dept_name | hod    |
+---------+-----------+--------+
|       1 | MCA       | reshma |
|       2 | civil     | bindhu |
|       3 | CS        | midhun |
|       4 | Mech      | Ajil   |
+---------+-----------+--------+
4 rows in set (0.00 sec)

mysql> UPDATE department
    ->    SET dept_name = 'CA'
    ->  WHERE dept_id = 1;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *   FROM department;
+---------+-----------+--------+
| dept_id | dept_name | hod    |
+---------+-----------+--------+
|       1 | CA        | reshma |
|       2 | civil     | bindhu |
|       3 | CS        | midhun |
|       4 | Mech      | Ajil   |
+---------+-----------+--------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE dept_name
    -> ADD PRIMARY KEY (dept_name);
ERROR 1146 (42S02): Table 'albydb.dept_name' doesn t exist
mysql> ALTER TABLE department ADD PRIMARY KEY (dept_name);
Query OK, 0 rows affected (0.51 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(11)     | YES  |     | NULL    |       |
| dept_name | varchar(30) | NO   | PRI | NULL    |       |
| hod       | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee
    -> ADD FOREIGN KEY (dept) REFERENCES department(dept_name);
Query OK, 4 rows affected (0.73 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> DESC employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empid  | int(11)     | YES  |     | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| dept   | varchar(30) | YES  | MUL | NULL    |       |
| salary | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DESC department
    -> ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(11)     | YES  |     | NULL    |       |
| dept_name | varchar(30) | NO   | PRI | NULL    |       |
| hod       | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT *
    -> ; 
ERROR 1096 (HY000): No tables used
mysql> SELECT *
    ->   FROM department JOIN employee 
    ->        ON ^C
mysql> SELECT *
    ->   FROM department 
    ->        JOIN employee
    ->        ON department.dept_name = employee.dept;
+---------+-----------+--------+-------+-------+------+--------+
| dept_id | dept_name | hod    | empid | name  | dept | salary |
+---------+-----------+--------+-------+-------+------+--------+
|       1 | CA        | reshma |     1 | alby  | CA   | 120000 |
|       1 | CA        | reshma |     2 | josin | CA   | 130000 |
|       1 | CA        | reshma |     3 | albin | CA   | 140000 |
|       1 | CA        | reshma |     4 | alan  | CA   | 150000 |
+---------+-----------+--------+-------+-------+------+--------+
4 rows in set (0.02 sec)

mysql> mysql> SELECT *
    -> ; 
ERROR 1096 (HY000): No tables used
mysql> SELECT *
    ->   FROM department JOIN employee 
    ->        ON ^C
mysql> SELECT *
    ->   FROM department 
    ->        JOIN employee
    ->        ON department.dept_name = employee.dept;
+---------+-----------+--------+-------+-------+------+--------+
| dept_id | dept_name | hod    | empid | name  | dept | salary |
+---------+-----------+--------+-------+-------+------+--------+
|       1 | CA        | reshma |     1 | alby  | CA   | 120000 |
|       1 | CA        | reshma |     2 | josin | CA   | 130000 |
|       1 | CA        | reshma |     3 | albin | CA   | 140000 |
|       1 | CA        | reshma |     4 | alan  | CA   | 150000 |
+---------+-----------+--------+-------+-------+------+--------+
4 rows in set (0.02 sec)

mysql> DELETE FROM department
    ->  WHERE dept_id = 4;
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM department;
+---------+-----------+--------+
| dept_id | dept_name | hod    |
+---------+-----------+--------+
|       1 | CA        | reshma |
|       2 | civil     | bindhu |
|       3 | CS        | midhun |
+---------+-----------+--------+
3 rows in set (0.00 sec)

mysql> 

