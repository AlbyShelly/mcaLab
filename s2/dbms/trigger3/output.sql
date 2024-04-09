b2@lab2-OptiPlex-380:~/Desktop/mcaLab/s2/dbms/trigger3$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use albydb
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables
    -> ;
+------------------+
| Tables_in_albydb |
+------------------+
| Std1             |
| boats            |
| customer         |
| department       |
| employee         |
| gradecount       |
| klmstaff         |
| log              |
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
18 rows in set (0.00 sec)

mysql> drop table student
student         student.name    student.year   
student.course  student.rollno  studentID      
mysql> drop table student
student         student.name    student.year   
student.course  student.rollno  studentID      
mysql> drop table student
student         student.name    student.year   
student.course  student.rollno  studentID      
mysql> source create_table.sql
Query OK, 0 rows affected (0.34 sec)

mysql> source insert.sql
Query OK, 4 rows affected (0.06 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> source create_log.sql
Query OK, 0 rows affected (0.25 sec)

mysql> SELECT * FROM student_log
    -> ;
Empty set (0.00 sec)

mysql> source trigger.sql
Query OK, 0 rows affected (0.09 sec)

mysql> desc students;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id       | int(11)     | NO   | PRI | NULL    | auto_increment |
| name     | varchar(45) | NO   |     | NULL    |                |
| class    | int(11)     | NO   |     | NULL    |                |
| email_id | varchar(65) | NO   |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> UPDATE students SET class=class+1;
Query OK, 4 rows affected (0.08 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> SELECT * FROM student_log;
+----------------+----------------------------------------------------------------+
| user           | descriptions                                                   |
+----------------+----------------------------------------------------------------+
| root@localhost | Updated Student RecordStephenPrevious Class: 6Present Class7   |
| root@localhost | Updated Student RecordBobPrevious Class: 7Present Class8       |
| root@localhost | Updated Student RecordStevenPrevious Class: 8Present Class9    |
| root@localhost | Updated Student RecordAlexanderPrevious Class: 7Present Class8 |
+----------------+----------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> 

