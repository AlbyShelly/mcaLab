DELIMITER //
CREATE PROCEDURE SumOfDigits(IN num INT)
BEGIN
DECLARE rem INT; 
DECLARE num_cpy INT DEFAULT num;
DECLARE sum_digits INT DEFAULT 0;

WHILE num_cpy > 0 DO

	SET rem = num_cpy%10;
	SET sum_digits = sum_digits + rem;
	SET num_cpy = FLOOR(num_cpy/10);
END WHILE;

SELECT sum_digits AS SumofDigits;

END //

DELIMITER ;	


/*
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use albydhb
ERROR 1049 (42000): Unknown database 'albydhb'
mysql> use albydb
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> CALL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CALL SumOfDigits(123);
+-------------+
| SumofDigits |
+-------------+
|           6 |
+-------------+
1 row in set (0.02 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> exit
Bye
*/
