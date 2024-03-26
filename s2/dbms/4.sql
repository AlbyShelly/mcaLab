DELIMITER //
CREATE PROCEDURE factorial(IN li INT)
BEGIN
DECLARE f INT DEFAULT 1;
WHILE li > 0 DO
	SET f=f*li;
	SET li = li-1;
END WHILE;
SELECT CONCAT ('Factorial = ', f) AS Result;
END //
DELIMITER ; 

/*
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
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
Query OK, 0 rows affected (0.04 sec)

mysql> CALL factorial(5);
    -> //
+-----------------+
| Result          |
+-----------------+
| Factorial = 120 |
+-----------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye
*/
