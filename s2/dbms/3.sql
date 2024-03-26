DELIMITER //
CREATE PROCEDURE CheckEvenOrOdd(IN num INT)
BEGIN
IF MOD(num,2) = 0 THEN
	SELECT 'even' AS result;
ELSE
	SELECT 'odd' AS result;
END IF;
END //

/*Enter password: 
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
mysql> CALL CheckOddOrEven(2)
    -> ;
ERROR 1305 (42000): PROCEDURE albydb.CheckOddOrEven does not exist
mysql> CALL CheckEvenOrOdd(2)
    -> ;
+--------+
| result |
+--------+
| even   |
+--------+
1 row in set (0.06 sec)

Query OK, 0 rows affected (0.06 sec)

mysql> CALL CheckEvenOrOdd(3)
    -> ;
+--------+
| result |
+--------+
| odd    |
+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CALL CheckEvenOrOdd(10000)
    -> ;
+--------+
| result |
+--------+
| even   |
+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> 
*/

