b2@lab2-OptiPlex-380:~/Desktop/sql$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use albydb;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_albydb |
+------------------+
| department       |
| employee         |
| people           |
| student          |
+------------------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE worker(
    -> emp_id INT,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> CREATE TABLE worker( 
    -> id INT,
    -> name INT,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> CREATE TABLE worker( 
    -> id INT,
    -> name 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> CREATE TABLE worker( 
    -> id INT,
    -> name VARCHAR(20),
    -> address VARCHAR(20),
    -> phone VARCHAR;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql> CREATE TABLE worker(
    -> id INT,
    -> name VARCHAR(20),
    -> gender VARCHAR(20),
    -> dept VARCHAR(20),
    -> education VARCHAR(20),
    -> month VARCHAR(20),
    -> salary INT
    -> );
Query OK, 0 rows affected (0.46 sec)

mysql> DESC worker;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int(11)     | YES  |     | NULL    |       |
| name      | varchar(20) | YES  |     | NULL    |       |
| gender    | varchar(20) | YES  |     | NULL    |       |
| dept      | varchar(20) | YES  |     | NULL    |       |
| education | varchar(20) | YES  |     | NULL    |       |
| month     | varchar(20) | YES  |     | NULL    |       |
| salary    | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.07 sec)

mysql> INSERT INTO worker(
    -> VALUES 
    -> (1001, 'ajay', 'M', 'engineering', 'jan', 25),
    -> (1002, 'babloo', 'M', 'engineering', 'feb', 23),
    -> (1003, 'chhavi', 'F', 'HR', 'mar', 15),
    -> (1004, 'dheeraj', 'M', 'HR', 'jan', 12),
    -> (1005, 'evina', 'F', 'marketing', 'mar', 16));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VALUES
(1001, 'ajay', 'M', 'engineering', 'jan', 25),
(1002, 'babloo', 'M', 'eng' at line 2
mysql> mysql> INSERT INTO worker( VALUES (1001, 'ajay', 'M', 'engineering','doctoral', 25), (1002, 'babloo', 'M', 'engineering','ug', 'feb', 23), (1003
, 'chhavi', 'F', 'HR', 'pg', 'mar', 15), (1004, 'dheeraj', 'M', 'HR', 'ug', 'jan', 12), (1005, 'evina', 'F', 'marketing', 'ug', 'mar', 16);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VALUES (1001, 'ajay', 'M', 'engineering', 'jan','doctoral', 25), (1002, 'babloo'' at line 1
mysql> INSERT INTO worker VALUES (1001, 'ajay', 'M', 'engineering', 'jan','doctoral', 25), (1002, 'babloo', 'M', 'engineering','ug', 'feb', 23), (1003, 'chhavi', 'F', 'HR', 'pg', 'mar', 15), (1004, 'dheeraj', 'M', 'HR', 'ug', 'jan', 12), (1005, 'evina', 'F', 'marketing', 'ug', 'mar', 16);
Query OK, 5 rows affected (0.12 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    ->   FROM workers;
ERROR 1146 (42S02): Table 'albydb.workers' doesn't exist
mysql> SELECT *   FROM worker;
+------+---------+--------+-------------+-----------+----------+--------+
| id   | name    | gender | dept        | education | month    | salary |
+------+---------+--------+-------------+-----------+----------+--------+
| 1001 | ajay    | M      | engineering | jan       | doctoral |     25 |
| 1002 | babloo  | M      | engineering | ug        | feb      |     23 |
| 1003 | chhavi  | F      | HR          | pg        | mar      |     15 |
| 1004 | dheeraj | M      | HR          | ug        | jan      |     12 |
| 1005 | evina   | F      | marketing   | ug        | mar      |     16 |
+------+---------+--------+-------------+-----------+----------+--------+
5 rows in set (0.00 sec)

mysql> UPDATE worker
    -> SET education='doctoral'
    -> WHERE id=1001;
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *   FROM worker;
+------+---------+--------+-------------+-----------+----------+--------+
| id   | name    | gender | dept        | education | month    | salary |
+------+---------+--------+-------------+-----------+----------+--------+
| 1001 | ajay    | M      | engineering | doctoral  | doctoral |     25 |
| 1002 | babloo  | M      | engineering | ug        | feb      |     23 |
| 1003 | chhavi  | F      | HR          | pg        | mar      |     15 |
| 1004 | dheeraj | M      | HR          | ug        | jan      |     12 |
| 1005 | evina   | F      | marketing   | ug        | mar      |     16 |
+------+---------+--------+-------------+-----------+----------+--------+
5 rows in set (0.00 sec)

mysql> UPDATE worker SET month='jan' WHERE id=1001;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *   FROM worker;
+------+---------+--------+-------------+-----------+-------+--------+
| id   | name    | gender | dept        | education | month | salary |
+------+---------+--------+-------------+-----------+-------+--------+
| 1001 | ajay    | M      | engineering | doctoral  | jan   |     25 |
| 1002 | babloo  | M      | engineering | ug        | feb   |     23 |
| 1003 | chhavi  | F      | HR          | pg        | mar   |     15 |
| 1004 | dheeraj | M      | HR          | ug        | jan   |     12 |
| 1005 | evina   | F      | marketing   | ug        | mar   |     16 |
+------+---------+--------+-------------+-----------+-------+--------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(salary) 
    -> FROM worker;
+-------------+
| SUM(salary) |
+-------------+
|          91 |
+-------------+
1 row in set (0.06 sec)

mysql> SELECT SUM(salary) FROM worker
    -> ;;
+-------------+
| SUM(salary) |
+-------------+
|          91 |
+-------------+
1 row in set (0.00 sec)

ERROR: 
No query specified

mysql> SELECT dept,SUM(salary) FROM worker
    -> GROUP BY dept;
+-------------+-------------+
| dept        | SUM(salary) |
+-------------+-------------+
| engineering |          48 |
| HR          |          27 |
| marketing   |          16 |
+-------------+-------------+
3 rows in set (0.04 sec)

mysql> SELECT DISTINCT(dept) 
    ->   FROM worker;
+-------------+
| dept        |
+-------------+
| engineering |
| HR          |
| marketing   |
+-------------+
3 rows in set (0.00 sec)

mysql> SELECT COUNT(salary) FROM worker;
+---------------+
| COUNT(salary) |
+---------------+
|             5 |
+---------------+
1 row in set (0.01 sec)

mysql> SELECT * 
    ->   FROM worker
    ->  WHERE dept='engineering'
    ->    AND education='doctoral';
+------+------+--------+-------------+-----------+-------+--------+
| id   | name | gender | dept        | education | month | salary |
+------+------+--------+-------------+-----------+-------+--------+
| 1001 | ajay | M      | engineering | doctoral  | jan   |     25 |
+------+------+--------+-------------+-----------+-------+--------+
1 row in set (0.02 sec)

mysql> SELECT name AS first_name, education 
    -> AS qualification 
    -> FROM worker;
+------------+---------------+
| first_name | qualification |
+------------+---------------+
| ajay       | doctoral      |
| babloo     | ug            |
| chhavi     | pg            |
| dheeraj    | ug            |
| evina      | ug            |
+------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT *
    ->   FROM worker
    ->  WHERE name='%a';
Empty set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name='%a';
Empty set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name LIKE '%a';
+------+-------+--------+-----------+-----------+-------+--------+
| id   | name  | gender | dept      | education | month | salary |
+------+-------+--------+-----------+-----------+-------+--------+
| 1005 | evina | F      | marketing | ug        | mar   |     16 |
+------+-------+--------+-----------+-----------+-------+--------+
1 row in set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name = 'a%';
Empty set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name = 'ajay';
+------+------+--------+-------------+-----------+-------+--------+
| id   | name | gender | dept        | education | month | salary |
+------+------+--------+-------------+-----------+-------+--------+
| 1001 | ajay | M      | engineering | doctoral  | jan   |     25 |
+------+------+--------+-------------+-----------+-------+--------+
1 row in set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name LIKE 'ajay';
+------+------+--------+-------------+-----------+-------+--------+
| id   | name | gender | dept        | education | month | salary |
+------+------+--------+-------------+-----------+-------+--------+
| 1001 | ajay | M      | engineering | doctoral  | jan   |     25 |
+------+------+--------+-------------+-----------+-------+--------+
1 row in set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name LIKE 'Ajay';
+------+------+--------+-------------+-----------+-------+--------+
| id   | name | gender | dept        | education | month | salary |
+------+------+--------+-------------+-----------+-------+--------+
| 1001 | ajay | M      | engineering | doctoral  | jan   |     25 |
+------+------+--------+-------------+-----------+-------+--------+
1 row in set (0.00 sec)

mysql> SELECT *   FROM worker  WHERE name = 'Ajay';
+------+------+--------+-------------+-----------+-------+--------+
| id   | name | gender | dept        | education | month | salary |
+------+------+--------+-------------+-----------+-------+--------+
| 1001 | ajay | M      | engineering | doctoral  | jan   |     25 |
+------+------+--------+-------------+-----------+-------+--------+
1 row in set (0.00 sec)

mysql> SELECT dept,SUM(salary) FROM worker
    -> HAVING SUM(salary) >= 20;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'albydb.worker.dept'; this is incompatible with sql_mode=only_full_group_by
mysql> SELECT dept,SUM(salary) FROM workerHAVING SUM(salary) >= 20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SUM(salary) >= 20' at line 1
mysql> SELECT dept,SUM(salary) FROM workerHAVING SUM(salary) >= 20
    -> SELECT dept,SUM(salary) FROM workerHAVING SUM(salary) >= 2''0
    -> j;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SUM(salary) >= 20
SELECT dept,SUM(salary) FROM workerHAVING SUM(salary) >= 2''0
' at line 1
mysql> SELECT dept, SUM(salary) AS s 
    -> GROUP BY dept
    -> HAVING s >= 20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'GROUP BY dept
HAVING s >= 20' at line 2
mysql> SELECT dept, SUM(salary) AS s GROUP BY dept HAVING s = 20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'GROUP BY dept HAVING s = 20' at line 1
mysql> SELECT dept, SUM(salary) AS s GROUP BY dept HAVING SUM(salary)  = 20
;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'GROUP BY dept HAVING SUM(salary)  = 20' at line 1
mysql> SELECT dept, SUM(salary) AS s FROM worker GROUP BY dept HAVING s >=
20;
+-------------+------+
| dept        | s    |
+-------------+------+
| engineering |   48 |
| HR          |   27 |
+-------------+------+
2 rows in set (0.00 sec)

mysql> SELECT dept, SUM(salary) AS s FROM worker GROUP BY dept;
+-------------+------+
| dept        | s    |
+-------------+------+
| engineering |   48 |
| HR          |   27 |
| marketing   |   16 |
+-------------+------+
3 rows in set (0.00 sec)

mysql> SELECT dept, SUM(salary) AS s FROM worker GROUP BY dept HAVING s >=
20 AND NOT education = 'ug';
ERROR 1054 (42S22): Unknown column 'education' in 'having clause'
mysql> SELECT dept, SUM(salary),ug AS s FROM worker GROUP BY dept HAVING s
>= 20 AND NOT education = 'ug';
ERROR 1054 (42S22): Unknown column 'ug' in 'field list'
mysql> SELECT dept, SUM(salary),education AS s FROM worker GROUP BY dept HA
VING s >= 20 AND NOT education = 'ug';
ERROR 1055 (42000): Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'albydb.worker.education' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> SELECT dept, SUM(salary) AS s 
    -> FROM worker
    -> WHERE education <> 'ug'
    -> GROUP BY dept
    -> HAVING SUM(salary) >= 20
    -> ;
+-------------+------+
| dept        | s    |
+-------------+------+
| engineering |   25 |
+-------------+------+
1 row in set (0.00 sec)

mysql> SELECT dept, SUM(salary)
    -> FROM worker
    -> GROUP BY dept
    -> HAVING SUM(salary) >= 15
    -> ORDER BY SUM(salary);
+-------------+-------------+
| dept        | SUM(salary) |
+-------------+-------------+
| marketing   |          16 |
| HR          |          27 |
| engineering |          48 |
+-------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT dept, SUM(salary) FROM worker GROUP BY dept HAVING SUM(salary) >= 15 ORDER BY SUM(salary) DESC;
+-------------+-------------+
| dept        | SUM(salary) |
+-------------+-------------+
| engineering |          48 |
| HR          |          27 |
| marketing   |          16 |
+-------------+-------------+
3 rows in set (0.00 sec)

mysql> 

