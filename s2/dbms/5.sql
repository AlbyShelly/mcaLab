DELIMITER //
CREATE PROCEDURE LargestOfThree(IN num1 INT, IN num2 INT, IN num3 INT)
IF num1 > num2 AND num1 > num3 THEN
	SELECT num1 AS result;
ELSEIF num2 > num3 AND num2 > num1 THEN
	SELECT num2 AS result;
ELSE
	SELECT num3 AS result;
END IF;

END //
DELIMITER ;


/*
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
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
mysql> DROP PROCEDURE LargestOfThree;
Query OK, 0 rows affected (0.00 sec)

mysql> source 5.sql
Query OK, 0 rows affected (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'END' at line 1
mysql> CALL LargestOfThree(1,2,3)
    -> ;
+--------+
| result |
+--------+
|      3 |
+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye
*/
