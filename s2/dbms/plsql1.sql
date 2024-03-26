lab2@lab2-OptiPlex-380:~/Desktop/mcaLab/s2/dbms$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> DROP PROCEDURE displ;
ERROR 1046 (3D000): No database selected
mysql> use albydb
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> DROP PROCEDURE displ;
Query OK, 0 rows affected (0.05 sec)

mysql> DROP PROCEDURE display;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW TABLES;
+------------------+
| Tables_in_albydb |
+------------------+
| boats            |
| customer         |
| department       |
| employee         |
| gradecount       |
| klmstaff         |
| newyorkstaff     |
| orders           |
| people           |
| reserves         |
| sailors          |
| salesman         |
| sorder           |
| student          |
| totalforday      |
| worker           |
+------------------+
16 rows in set (0.00 sec)

mysql> SELECT * FROM STUDENT
    -> ;
ERROR 1146 (42S02): Table 'albydb.STUDENT' doesn't exist
mysql> SELECT * FROM student;
Empty set (0.00 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollno | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| course | varchar(30) | YES  |     | NULL    |       |
| year   | int(11)     | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> INSERT INTO student VALUES
    -> (1, 'alby', 'MCA', 2023),
    -> (2, 'albin', 'MCA', 2023),
    -> (3, 'alan', 'MCA', 2023);
Query OK, 3 rows affected (0.19 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM student;
+--------+-------+--------+------+
| rollno | name  | course | year |
+--------+-------+--------+------+
|      1 | alby  | MCA    | 2023 |
|      2 | albin | MCA    | 2023 |
|      3 | alan  | MCA    | 2023 |
+--------+-------+--------+------+
3 rows in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE display
    -> BEGIN
    -> SELECT * FROM student;
    -> END 
    -> //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BEGIN
SELECT * FROM student;
END' at line 2
mysql> CREATE PROCEDURE display()
    -> BEGIN
    -> SELECT * FROM student; 
    -> END
    -> //
Query OK, 0 rows affected (0.09 sec)

mysql> DELIMITER ;
mysql> CALL display();
+--------+-------+--------+------+
| rollno | name  | course | year |
+--------+-------+--------+------+
|      1 | alby  | MCA    | 2023 |
|      2 | albin | MCA    | 2023 |
|      3 | alan  | MCA    | 2023 |
+--------+-------+--------+------+
3 rows in set (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> exit
Bye
