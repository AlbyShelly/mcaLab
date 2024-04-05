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

mysql> use albydb
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> source trigger2/create_Std1.sql
Query OK, 0 rows affected (0.45 sec)

mysql> source trigger2/insert_statements.sql
Query OK, 2 rows affected (0.12 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Std1;
+-----------+----------+------+------+------+------+------+-------+-----------+-------+
| studentID | Name     | sub1 | sub2 | sub3 | sub4 | sub5 | total | per_marks | grade |
+-----------+----------+------+------+------+------+------+-------+-----------+-------+
|         1 | Student1 |    0 |    0 |    0 |    0 |    0 |  NULL |      NULL | NULL  |
|         2 | Student2 |    0 |    0 |    0 |    0 |    0 |  NULL |      NULL | NULL  |
+-----------+----------+------+------+------+------+------+-------+-----------+-------+
2 rows in set (0.01 sec)

-------------------------------------------------

mysql> source trigger2/trigger2.sql
Query OK, 0 rows affected (0.20 sec)

mysql> source trigger2/update_statements.sql
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM Std1;
+-----------+----------+------+------+------+------+------+-------+-----------+-----------+
| studentID | Name     | sub1 | sub2 | sub3 | sub4 | sub5 | total | per_marks | grade     |
+-----------+----------+------+------+------+------+------+-------+-----------+-----------+
|         1 | Student1 |   90 |   75 |   90 |   95 |   85 |   435 |        87 | VERY GOOD |
|         2 | Student2 |    0 |    0 |    0 |    0 |    0 |  NULL |      NULL | NULL      |
+-----------+----------+------+------+------+------+------+-------+-----------+-----------+
2 rows in set (0.00 sec)

mysql> 

