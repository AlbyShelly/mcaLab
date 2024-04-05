/*trigger first program*/

DELIMITER //

CREATE TRIGGER after_student_insert
AFTER INSERT ON student
FOR EACH ROW 

BEGIN
	INSERT INTO log (action, timestamp)
	VALUES(
	'New employee inserted',
	NOW()
	);
END //

/*
mysql> mysql> CREATE log
    -> (id INT PRIMARY KEY AUTO_INCREMENT,
    -> action VARCHAR(255),
    -> timestamp TIMESTAMP
    -> );
    -> //
Query OK, 0 rows affected (0.92 sec)

mysql> SELECT * FROM log
    -> ;
    -> //
Empty set (0.06 sec)

mysql> source trigger1.sql
Query OK, 0 rows affected (0.13 sec)

mysql> INSERT INTO student VALUES ( 5, 'albert', 'MCA', 2024);
    -> //
Query OK, 1 row affected (0.10 sec)

mysql> SELECT * FROM log//
+----+-----------------------+---------------------+
| id | action                | timestamp           |
+----+-----------------------+---------------------+
|  1 | New employee inserted | 2024-04-05 11:42:22 |
+----+-----------------------+---------------------+
1 row in set (0.00 sec)

*/
