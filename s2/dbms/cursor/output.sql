lab2@lab2-OptiPlex-380:~/Desktop/mcaLab/s2/dbms/cursor$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
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
mysql> source 4.sql
Query OK, 0 rows affected (0.39 sec)

mysql> CALL calculate_av_salary()
    -> ;
+------------+
| avg_salary |
+------------+
|     135000 |
+------------+
1 row in set (0.07 sec)

Query OK, 0 rows affected (0.07 sec)

mysql> SELECT salary FROM employee
    -> ;
+--------+
| salary |
+--------+
| 120000 |
| 130000 |
| 140000 |
| 150000 |
+--------+
4 rows in set (0.00 sec)

mysql>
