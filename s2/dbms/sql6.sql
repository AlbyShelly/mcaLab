ql> INSERT INTO salesman
    -> VALUES
    -> (5001, 'James Hoog', 'New York', 0.15),
    -> (5002, 'Nail Knite', 'Paris', 0.13),
    -> (5003, 'Pit Alex', 'London', 0.11),
    -> (5006, 'Mic Lyon', 'Paris', 0.14),
    -> (5007, 'Paul Adam', 'Rome', 0.13),
    -> (5003, 'Lauson Hen', 'San Jose', 0.12));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 8
mysql> INSERT INTO salesman VALUES (5001, 'James Hoog', 'New York', 0.15), (5002, 'Nail Knite', 'Paris', 0.13), (5005, 'Pit Alex', 'London', 0.11), (5006, 'Mic Lyon', 'Paris', 0.14), (5007, 'Paul Adam', 'Rome', 0.13), (5003, 'Lauson Hen', 'San Jose', 0.12);
Query OK, 6 rows affected (0.03 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> CREATE VIEW newyorkstaff 
    -> AS SELECT * FROM salesman
    -> WHERE city = 'New York';
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM newyorkstaff
    -> ;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hoog | New York |       0.15 |
+-------------+------------+----------+------------+
1 row in set (0.00 sec)

mysql> CREATE TABL;E customer
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABL' at line 1
    -> ';
    '> ;
    '> ;;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'E customer
';
;
;;
'' at line 1
mysql> CREATE TABLE customer(
    -> customer_id INT,
    -> cust_name VARCHAR(30),
    -> city VARCHAR(30),
    -> grade INT,
    -> salesman_id
    -> INT 
    -> );
Query OK, 0 rows affected (0.23 sec)

mysql> DESC 
Display all 804 possibilities? (y or n) 
mysql> DESC customers
    -> ;
ERROR 1146 (42S02): Table 'albydb.customers' doesn't exist
mysql> DESC customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int(11)     | YES  |     | NULL    |       |
| cust_name   | varchar(30) | YES  |     | NULL    |       |
| city        | varchar(30) | YES  |     | NULL    |       |
| grade       | int(11)     | YES  |     | NULL    |       |
| salesman_id | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO TABLE VALUES(
    -> 3002, 'Nick Rimando', 'New York', 100, 5001),
    -> (3007, 'Brad Davis', 'New York', 200, 5001),
    -> (3005, 'Graham Zusi', 'California', 200, 5002),
    -> (3008, 'Julian Green', 'London', 300, 5002),
    -> (3004, 'Fabian Green', 'Paris', 300, 5006),
    -> (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    -> (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    -> (3001, 'Brad Guzan', 'London', 100, 5005);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE VALUES(
3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis',' at line 1
mysql> INSERT INTO customer VALUES( 3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001), (3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), (3004, 'Fabian Green', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100,
 5003
Query OK, 8 rows affected (0.11 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> CREATE VIEW gradecount AS
    -> SELECT grade,COUNT(customer_id)
    -> FROM customer
    -> GROUP BY grade;
Query OK, 0 rows affected (0.07 sec)

mysql> SELECT * FROM gradecount;
+-------+--------------------+
| grade | COUNT(customer_id) |
+-------+--------------------+
|   100 |                  3 |
|   200 |                  3 |
|   300 |                  2 |
+-------+--------------------+
3 rows in set (0.03 sec)

lab2@lab2-OptiPlex-380:~/Desktop/mcaLab/s2/dbms$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.33-0ubuntu0.16.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| albydb             |
| employee           |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.04 sec)

mysql> use ablydb
ERROR 1049 (42000): Unknown database 'ablydb'
mysql> use albydb
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables
    -> ;
+------------------+
| Tables_in_albydb |
+------------------+
| customer         |
| department       |
| employee         |
| gradecount       |
| klmstaff         |
| newyorkstaff     |
| people           |
| salesman         |
| student          |
| worker           |
+------------------+
10 rows in set (0.00 sec)

mysql> CREATE TABLE orders
    -> (
    -> ord_no INT PRIMARY KEY,
    -> purch_amt FLOAT,
    -> ord_date DATE,
    -> customer_id INT,
    -> salesman_id INT
    -> );
Query OK, 0 rows affected (0.23 sec)

mysql> SELECT *
    -> FROM orders;
Empty set (0.00 sec)

mysql> SELECT * FROM customer;
+-------------+---------------+------------+-------+-------------+
| customer_id | cust_name     | city       | grade | salesman_id |
+-------------+---------------+------------+-------+-------------+
|        3002 | Nick Rimando  | New York   |   100 |        5001 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3008 | Julian Green  | London     |   300 |        5002 |
|        3004 | Fabian Green  | Paris      |   300 |        5006 |
|        3009 | Geoff Cameron | Berlin     |   100 |        5003 |
|        3003 | Jozy Altidor  | Moscow     |   200 |        5007 |
|        3001 | Brad Guzan    | London     |   100 |        5005 |
+-------------+---------------+------------+-------+-------------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hoog | New York |       0.15 |
|        5002 | Nail Knite | Paris    |       0.13 |
|        5005 | Pit Alex   | London   |       0.11 |
|        5006 | Mic Lyon   | Paris    |       0.14 |
|        5007 | Paul Adam  | Rome     |       0.13 |
|        5003 | Lauson Hen | San Jose |       0.12 |
+-------------+------------+----------+------------+
6 rows in set (0.01 sec)

mysql> DESC salesman
    -> ;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| salesman_id | int(11)     | YES  |     | NULL    |       |
| name        | varchar(30) | YES  |     | NULL    |       |
| city        | varchar(30) | YES  |     | NULL    |       |
| commission  | float       | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc CUSTOMER;
ERROR 1146 (42S02): Table 'albydb.CUSTOMER' doesn't exist
mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int(11)     | YES  |     | NULL    |       |
| cust_name   | varchar(30) | YES  |     | NULL    |       |
| city        | varchar(30) | YES  |     | NULL    |       |
| grade       | int(11)     | YES  |     | NULL    |       |
| salesman_id | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE customer ADD PRIMARY KEY (customer_id);
Query OK, 0 rows affected (0.63 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE salesman ADD PRIMARY KEY (salesman_id);
Query OK, 0 rows affected (0.61 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC order;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order' at line 1
mysql> DESC order
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order' at line 1
mysql> desc orders;
+-------------+---------+------+-----+---------+-------+
| Field       | Type    | Null | Key | Default | Extra |
+-------------+---------+------+-----+---------+-------+
| ord_no      | int(11) | NO   | PRI | NULL    |       |
| purch_amt   | float   | YES  |     | NULL    |       |
| ord_date    | date    | YES  |     | NULL    |       |
| customer_id | int(11) | YES  |     | NULL    |       |
| salesman_id | int(11) | YES  |     | NULL    |       |
+-------------+---------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE orders
    -> ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    -> ADD FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ADD FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)' at line 3
mysql> ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
Query OK, 0 rows affected (0.80 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE orders ADD FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id);Query OK, 0 rows affected (0.74 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> INSERT INTO orders
    -> VALUES(
    -> ^C
mysql> INSERT INTO orders
    -> VALUES
    -> (70001, 150.5, 2012-10-05, 3005, 5002),
    -> (70009, 270.65, 2012-09-10, 3001, 5005),
    -> (70002, 65.26, 2012-10-05, 3002, 5001),
    -> (70004, 110.5, 2012-08-17, 3009, 5003),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 6
mysql> INSERT INTO orders VALUES (70001, 150.5, 2012-10-05, 3005, 5002), (70009, 270.65, 2012-09-10, 3001, 5005), (70002, 65.26, 2012-10-05, 3002, 5001), (70004, 110.5, 2012-08-17, 3009, 5003);
ERROR 1292 (22007): Incorrect date value: '1997' for column 'ord_date' at row 1
mysql> INSERT INTO orders VALUES (70001, 150.5, 2012-10-05, 3005, 5002), (70009, 270.65, 2012-09-10, 3001, 5005), (70002, 65.26, 2012-10-05, 3002, 5001), (70004, 110.5, 2012-08-17, 3009, 5003);
ERROR 1292 (22007): Incorrect date value: '1997' for column 'ord_date' at row 1
mysql> INSERT INTO orders VALUES (70001, 150.5, 2012-10-05, 3005, 5002);
ERROR 1292 (22007): Incorrect date value: '1997' for column 'ord_date' at row 1
mysql> INSERT INTO orders VALUES (70001, 150.5, '2012-10-05', 3005, 5002), (70009, 270.65, '2012-09-10', 3001, 5005), (70002, 65.26, '2012-10-05', 3002
, 5001), (70004, 110.5, '2012-08-17', 3009, 5003);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM orders;
+--------+-----------+------------+-------------+-------------+
| ord_no | purch_amt | ord_date   | customer_id | salesman_id |
+--------+-----------+------------+-------------+-------------+
|  70001 |     150.5 | 2012-10-05 |        3005 |        5002 |
|  70002 |     65.26 | 2012-10-05 |        3002 |        5001 |
|  70004 |     110.5 | 2012-08-17 |        3009 |        5003 |
|  70009 |    270.65 | 2012-09-10 |        3001 |        5005 |
+--------+-----------+------------+-------------+-------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO orders
    -> VALUES
    -> (70007, 948.5, '2012-09-10', 3005, 5002),
    -> (70005, 2400.6, '2012-07-27', 3007, 5001),
    -> (70008, 5760, '2012-07-27', 3007, 5001),
    -> (70012, 250.45, '2012-06-27', 3008, 5002),
    -> (70011, 75.29, '2012-08-17', 3003, 5007),
    -> (70013, 3045.6, '2012-04-25', 3002, 5001);
Query OK, 6 rows affected (0.02 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * 
    -> orders;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orders' at line 2
mysql> SELECT * FROM  orders
    -> ;
+--------+-----------+------------+-------------+-------------+
| ord_no | purch_amt | ord_date   | customer_id | salesman_id |
+--------+-----------+------------+-------------+-------------+
|  70001 |     150.5 | 2012-10-05 |        3005 |        5002 |
|  70002 |     65.26 | 2012-10-05 |        3002 |        5001 |
|  70004 |     110.5 | 2012-08-17 |        3009 |        5003 |
|  70005 |    2400.6 | 2012-07-27 |        3007 |        5001 |
|  70007 |     948.5 | 2012-09-10 |        3005 |        5002 |
|  70008 |      5760 | 2012-07-27 |        3007 |        5001 |
|  70009 |    270.65 | 2012-09-10 |        3001 |        5005 |
|  70011 |     75.29 | 2012-08-17 |        3003 |        5007 |
|  70012 |    250.45 | 2012-06-27 |        3008 |        5002 |
|  70013 |    3045.6 | 2012-04-25 |        3002 |        5001 |
+--------+-----------+------------+-------------+-------------+
10 rows in set (0.00 sec)

mysql> CREATE VIEW totalforday 
    -> AS SELECT ord_date, COUNT(DISTINCT(customer_id), AVG(purch_amt), SUM(purch_amt)
    -> FROM orders
    -> GROUP BY ord_date;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM orders
GROUP BY ord_date' at line 3
mysql> CREATE VIEW totalforday AS SELECT ord_date, COUNT(DISTINCT(customer_id)), AVG(purch_amt), SUM(purch_amt) FROM orders GROUP BY ord_date;
Query OK, 0 rows affected (0.12 sec)

mysql> SELECT *
    -> FROM totalforday;
+------------+------------------------------+--------------------+--------------------+
| ord_date   | COUNT(DISTINCT(customer_id)) | AVG(purch_amt)     | SUM(purch_amt)     |
+------------+------------------------------+--------------------+--------------------+
| 2012-04-25 |                            1 |   3045.60009765625 |   3045.60009765625 |
| 2012-06-27 |                            1 |  250.4499969482422 |  250.4499969482422 |
| 2012-07-27 |                            1 |  4080.300048828125 |   8160.60009765625 |
| 2012-08-17 |                            2 |  92.89500045776367 | 185.79000091552734 |
| 2012-09-10 |                            2 |  609.5749969482422 | 1219.1499938964844 |
| 2012-10-05 |                            2 | 107.88000106811523 | 215.76000213623047 |
+------------+------------------------------+--------------------+--------------------+
6 rows in set (0.04 sec)

mysql> CREATE VIEW sorder AS 
    -> SELECT salsesman_id, ord_no, customer_id
    -> FROM orders 
    -> WHERE ord_date IN ('2012-08-17', '2012-10-10');
ERROR 1054 (42S22): Unknown column 'salsesman_id' in 'field list'
mysql> CREATE VIEW sorder AS SELECT salesman_id, ord_no, customer_id FROM orders WHERE ord_date IN ('2012-08-17', '2012-10-10');
Query OK, 0 rows affected (0.04 sec)

mysql> SELECT * FROM sorder
    -> ;
+-------------+--------+-------------+
| salesman_id | ord_no | customer_id |
+-------------+--------+-------------+
|        5003 |  70004 |        3009 |
|        5007 |  70011 |        3003 |
+-------------+--------+-------------+
2 rows in set (0.02 sec)

mysql> 
