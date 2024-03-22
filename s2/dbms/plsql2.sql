b2@lab2-OptiPlex-380:~/Desktop/mcaLab/s2/dbms$ mysql -u root -p
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
mysql> DELIMITER //
mysql> CREATE PROCEDURE addition(IN num1 INT, IN num2 INT)
    -> BEGIN
    -> DECLARE c INT;
    -> SET c = num1 + num2;
    -> SELECT CONCAT('Sum is ', c) AS result;
    -> END
    -> //
Query OK, 0 rows affected (0.23 sec)

mysql> DELIMITER ;
mysql> CALL addition(1,2);
+----------+
| result   |
+----------+
| Sum is 3 |
+----------+
1 row in set (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> 

