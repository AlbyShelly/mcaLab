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
| orders           |
| people           |
| salesman         |
| sorder           |
| student          |
| totalforday      |
| worker           |
+------------------+
13 rows in set (0.00 sec)

mysql> select * from employee;
+-------+-------+------+--------+
| empid | name  | dept | salary |
+-------+-------+------+--------+
|     1 | alby  | CA   | 120000 |
|     2 | josin | CA   | 130000 |
|     3 | albin | CA   | 140000 |
|     4 | alan  | CA   | 150000 |
+-------+-------+------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * 
    -> FROM employee
    -> WHERE empid IN (SELECT empid FROM employee);
+-------+-------+------+--------+
| empid | name  | dept | salary |
+-------+-------+------+--------+
|     1 | alby  | CA   | 120000 |
|     2 | josin | CA   | 130000 |
|     3 | albin | CA   | 140000 |
|     4 | alan  | CA   | 150000 |
+-------+-------+------+--------+
4 rows in set (0.02 sec)

mysql> SELECT * 
    -> FROM employee
    -> WHERE empid IN (SELECT *
    ->                 FROM employee
    ->                 WHERE income > 120000);
ERROR 1054 (42S22): Unknown column 'income' in 'where clause'
mysql> SELECT * FROM employee WHERE empid IN (SELECT *                 FROM employee                 WHERE salary > 120000);
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT * FROM employee WHERE empid IN (SELECT empid
FROM employee                 WHERE salary > 120000);
+-------+-------+------+--------+
| empid | name  | dept | salary |
+-------+-------+------+--------+
|     2 | josin | CA   | 130000 |
|     3 | albin | CA   | 140000 |
|     4 | alan  | CA   | 150000 |
+-------+-------+------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employee
    -> WHERE empid IN (SELECT *
    -> ^C              
mysql> SELECT * FROM employee
    -> WHERE empid IN (SELECT empid 
    ->                 FR^C
mysql> SELECT * FROM employee
    -> WHERE empid IN (SELECT empid
    -> ^C
mysql> SELECT * FROM employee
    -> WHERE empid IN (SELECT MAX(empid)
    ->                 FROM ^C^C
mysql> ^C
mysql> SELECT *
    -> FROM employee
    -> WHERE salary = (SELECT MAX(employee)
    ->                 FROM employee);
ERROR 1054 (42S22): Unknown column 'employee' in 'field list'
mysql> SELECT * FROM employee WHERE salary = (SELECT MAX(salary)
      FROM employee);
+-------+------+------+--------+
| empid | name | dept | salary |
+-------+------+------+--------+
|     4 | alan | CA   | 150000 |
+-------+------+------+--------+
1 row in set (0.00 sec)

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
| orders           |
| people           |
| salesman         |
| sorder           |
| student          |
| totalforday      |
| worker           |
+------------------+
13 rows in set (0.00 sec)

mysql> CREATE TABLE sailors (
    -> sid INT,
    -> sname VARCHAR(30),
    -> rating INT,
    -> age FLOAT );
Query OK, 0 rows affected (0.28 sec)

mysql> ALTER sailiors ADD PRIMARY KEY (sid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sailiors ADD PRIMARY KEY (sid)' at line 1
mysql> ALTER sailors ADD PRIMARY KEY (sid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sailors ADD PRIMARY KEY (sid)' at line 1
mysql> ALTER TABLE sailors ADD PRIMARY KEY (sid);
Query OK, 0 rows affected (0.40 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc sailors;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| sid    | int(11)     | NO   | PRI | NULL    |       |
| sname  | varchar(30) | YES  |     | NULL    |       |
| rating | int(11)     | YES  |     | NULL    |       |
| age    | float       | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

mysql> INSERT INTO sailors
    -> VALUES 
    -> (22, 'dustin', 7, 45.0),
    -> (29, 'brutus', 1, 33.0),
    -> (31, 'lubber', 8, 55.5),
    -> (32, 'andy', 8, 25.5),
    -> (58, 'rusty', 10, 35.0),
    -> (64, 'horatio', 7, 35.0),
    -> (71, 'zorba', 10, 16.0),
    -> (74, 'horatio', 9, 35.0),
    -> (85, 'art', 3, 25.5),
    -> (95, 'bob', 3, 63.5);
Query OK, 10 rows affected (0.07 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE reserves(
    -> sid INT,
    -> bid INT,
    -> day DATE,
    -> FOREIGN KEY (sid) REFERENCES sailors(sid)
    -> );
Query OK, 0 rows affected (0.26 sec)

mysql> desc reserves;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| sid   | int(11) | YES  | MUL | NULL    |       |
| bid   | int(11) | YES  |     | NULL    |       |
| day   | date    | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO reserves
    -> VALUES
    -> (22, 101, 10-10-98),
    -> (22, 102, 10-10-98),
    -> (22, 103, 10-8-98)
    -> ;
ERROR 1292 (22007): Incorrect date value: '-98' for column 'day' at row 1
mysql> INSERT INTO reserves VALUES (22, 101, '10-10-98');
ERROR 1292 (22007): Incorrect date value: '10-10-98' for column 'day' at row 1
mysql> INSERT INTO reserves VALUES (22, 101, '98-10-10');
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO reserves VALUES ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO reserves VALUES 
    -> (22, 102, '98-10-10'),
    -> (22, 103, '98-8-10'),
    -> (22, 104, '98-7-10'),
    -> (31, 102, '98-10-11'),
    -> (31, 103, '98-6-11'),
    -> (31, 104, '98-12-11')));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '))' at line 7
mysql> INSERT INTO reserves VALUES (22, 103, '98-8-10'), (22, 104, '98-7-10'), (31, 102, '98-10-11'), (31, 103, '98-6-11'), (31, 104, '98-12-11');Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO reserves VALUES
    -> (64, 101, '98-5-9'),
    -> (64, 102, '98-8-9'),
    -> (74, 103, '98-8-9');
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM reserves;
+------+------+------------+
| sid  | bid  | day        |
+------+------+------------+
|   22 |  101 | 1998-10-10 |
|   22 |  103 | 1998-08-10 |
|   22 |  104 | 1998-07-10 |
|   31 |  102 | 1998-10-11 |
|   31 |  103 | 1998-06-11 |
|   31 |  104 | 1998-12-11 |
|   64 |  101 | 1998-05-09 |
|   64 |  102 | 1998-08-09 |
|   74 |  103 | 1998-08-09 |
+------+------+------------+
9 rows in set (0.03 sec)

mysql> CREATE TABLE boats
    -> (bid INT,
    -> bname VARCHAR(30),
    -> color VARCHAR(30)
    -> ,
    -> PRIMARY KEY (bid)
    -> );
Query OK, 0 rows affected (0.28 sec)

mysql> desc boats;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| bid   | int(11)     | NO   | PRI | NULL    |       |
| bname | varchar(30) | YES  |     | NULL    |       |
| color | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO VALUES
    -> ^C
mysql> INSERT INTO boats
    -> (101, 'interlake', 'blue'),
    -> (102, 'interlake', 'red'),
    -> (103, 'clipper', 
    -> 'green' ),
    -> (104, 'marine', 'red' );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '101, 'interlake', 'blue'),
(102, 'interlake', 'red'),
(103, 'clipper', 
'green' ' at line 2
mysql> INSERT INTO boats VALUES (101, 'interlake', 'blue'), (102, 'interlak
e', 'red'), (103, 'clipper',  'green' ), (104, 'marine', 'red' );
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from boats;
+-----+-----------+-------+
| bid | bname     | color |
+-----+-----------+-------+
| 101 | interlake | blue  |
| 102 | interlake | red   |
| 103 | clipper   | green |
| 104 | marine    | red   |
+-----+-----------+-------+
4 rows in set (0.00 sec)

mysql> select * from reserves;
+------+------+------------+
| sid  | bid  | day        |
+------+------+------------+
|   22 |  101 | 1998-10-10 |
|   22 |  103 | 1998-08-10 |
|   22 |  104 | 1998-07-10 |
|   31 |  102 | 1998-10-11 |
|   31 |  103 | 1998-06-11 |
|   31 |  104 | 1998-12-11 |
|   64 |  101 | 1998-05-09 |
|   64 |  102 | 1998-08-09 |
|   74 |  103 | 1998-08-09 |
+------+------+------------+
9 rows in set (0.00 sec)

mysql> select * from sailors;
+-----+---------+--------+------+
| sid | sname   | rating | age  |
+-----+---------+--------+------+
|  22 | dustin  |      7 |   45 |
|  29 | brutus  |      1 |   33 |
|  31 | lubber  |      8 | 55.5 |
|  32 | andy    |      8 | 25.5 |
|  58 | rusty   |     10 |   35 |
|  64 | horatio |      7 |   35 |
|  71 | zorba   |     10 |   16 |
|  74 | horatio |      9 |   35 |
|  85 | art     |      3 | 25.5 |
|  95 | bob     |      3 | 63.5 |
+-----+---------+--------+------+
10 rows in set (0.01 sec)

mysql> SELECT COUNT(DISTINCT color)) FROM boats;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM boats' at line 1
mysql> SELECT COUNT(DISTINCT (color)) FROM boats;
+-------------------------+
| COUNT(DISTINCT (color)) |
+-------------------------+
|                       3 |
+-------------------------+
1 row in set (0.05 sec)

mysql> SELECT * FROM
    -> ^C
mysql> SELECT * 
    -> FROM ^C
mysql> SELECT * FROM sailors WHERE sid IN ( SELECT sid FROM reserves WHERE bid = 101 );
+-----+---------+--------+------+
| sid | sname   | rating | age  |
+-----+---------+--------+------+
|  22 | dustin  |      7 |   45 |
|  64 | horatio |      7 |   35 |
+-----+---------+--------+------+
2 rows in set (0.08 sec)

mysql> SELECT sname FROM sailors, reserves WHERE sailors.sid = reserve.sid; 
ERROR 1054 (42S22): Unknown column 'reserve.sid' in 'where clause'
mysql> SELECT sname FROM sailors, reserves WHERE sailors.sid = reserves.sid;
+---------+
| sname   |
+---------+
| dustin  |
| dustin  |
| dustin  |
| lubber  |
| lubber  |
| lubber  |
| horatio |
| horatio |
| horatio |
+---------+
9 rows in set (0.00 sec)

mysql> SELECT DISTINCT(sname) FROM sailors, reserves WHERE sailors.sid = reserves.sid;
+---------+
| sname   |
+---------+
| dustin  |
| lubber  |
| horatio |
+---------+
3 rows in set (0.00 sec)

mysql>  (SELECT DISTINCT(sid) FROM reserves);
+------+
| sid  |
+------+
|   22 |
|   31 |
|   64 |
|   74 |
+------+
4 rows in set (0.02 sec)

mysql>  (SELECT DISTINCT(bid) FROM reserves);
+------+
| bid  |
+------+
|  101 |
|  103 |
|  104 |
|  102 |
+------+
4 rows in set (0.00 sec)

mysql> SELECT bid FROM boats WHERE color=red;
ERROR 1054 (42S22): Unknown column 'red' in 'where clause'
mysql> SELECT bid FROM boats WHERE color='red';
+-----+
| bid |
+-----+
| 102 |
| 104 |
+-----+
2 rows in set (0.00 sec)

mysql> SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color='red')
    -> ;
+------+
| sid  |
+------+
|   22 |
|   31 |
|   31 |
|   64 |
+------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE b
id IN (SELECT bid FROM boats WHERE color='red')) ORDER BY age;
+-----+---------+--------+------+
| sid | sname   | rating | age  |
+-----+---------+--------+------+
|  64 | horatio |      7 |   35 |
|  22 | dustin  |      7 |   45 |
|  31 | lubber  |      8 | 55.5 |
+-----+---------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT bname, sname
    -> FROM boats
    ->      INNER JOIN reserves
    ->      ON bid = sid 
    ->      INNER JOIN sailors ON
    ->      sailor.sid = reserves.sid;
ERROR 1052 (23000): Column 'bid' in on clause is ambiguous
mysql> SELECT bname, sname FROM boats      INNER JOIN reserves      ON boats.bid = reserves.sid      INNER JOIN sailors ON      sailor.sid = reserves.
sid;
ERROR 1054 (42S22): Unknown column 'sailor.sid' in 'on clause'
mysql> SELECT bname, sname FROM boats      INNER JOIN reserves      ON boats.bid = reserves.sid      INNER JOIN sailors ON      sailors.sid = reserves.sid;
Empty set (0.00 sec)

mysql> SELECT b.bname, s.sname
    -> FROM boats b
    -> INNER JOIN reserves r ON b.bid = r.sid INNER JOIN sailors s ON
    -> s.sid=r.sid;
Empty set (0.00 sec)

mysql> SELECT b.bname, s.sname FROM boats b INNER JOIN reserves r ON b.bid
= r.bid INNER JOIN sailors s ON s.sid=r.sid;
+-----------+---------+
| bname     | sname   |
+-----------+---------+
| interlake | dustin  |
| clipper   | dustin  |
| marine    | dustin  |
| interlake | lubber  |
| clipper   | lubber  |
| marine    | lubber  |
| interlake | horatio |
| interlake | horatio |
| clipper   | horatio |
+-----------+---------+
9 rows in set (0.02 sec)

mysql> SELECT reserves.sid
    -> FROM boats, reserves
    -> WHERE reserves.bid = boats.bid AND boats.color = 'red'
    -> UNION
    -> SELECT ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql> SELECT DISTINCT S.sid, S.sname
    -> FROM sailors S, reserves R1, reserves R2
    -> WHERE S.sid = R1.sid AND S.sid = R2.sid
    -> AND R1.day = R2.day AND R1.bid <> R2.bid;
Empty set (0.01 sec)

mysql> SELECT DISTINCT S.sid, S.sname
    -> FROM sailors S, reserves R1, reserves R2
    -> WHERE S.sid = R1.sid AND S.sid = R2.sid
    -> AND R1.day = R2.day AND R1.bid <> R2.bid;
Empty set (0.00 sec)

mysql> SELECT R.sid
    -> FROM boats B, reserves R
    -> WHERE R.bid = B.bid AND B.color = ‘red’
    -> UNION
    -> SELECT R2.sid
    -> FROM boats B2, reserves R2
    -> WHERE R2.bid = B2.bid AND B2.color = ‘green’;
ERROR 1054 (42S22): Unknown column '‘red’' in 'where clause'
mysql> SELECT R.sid
    -> FROM boats B, reserves R
    -> WHERE R.bid = B.bid AND B.color = ‘red’
    -> UNION
    -> SELECT R2.sid
    -> FROM boats B2, reserves R2
    -> WHERE R2.bid = B2.bid AND B2.color = ‘green’;
ERROR 1054 (42S22): Unknown column '‘red’' in 'where clause'
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> SELECT R.sid FROM boats B, reserves R WHERE R.bid = B.bid AND B.color = 'red' UNION SELECT R2.sid FROM boats B2, reserves R2 WHERE R2.bid = B2.bid AND B2.color = 'green';
+------+
| sid  |
+------+
|   22 |
|   31 |
|   64 |
|   74 |
+------+
4 rows in set (0.00 sec)

mysql> SELECT S.sname FROM sailors S
    -> WHERE NOT EXISTS ( ( SELECT B.bid FROM boats B)
    -> NOT EXISTS
    -> (SELECT R.bid FROM reserves R WHERE R.sid = S.sid ) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NOT EXISTS
(SELECT R.bid FROM reserves R WHERE R.sid = S.sid ) )' at line 3
mysql> SELECT sname FROM sailors S
    -> WHERE NOT EXITS (( SELECT boats.bid FROM boats )
    -> NOT EXISTS
    -> (SELECT reserves.bid FROM reserves WHERE reserves.sid = sailors.sid));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'EXISTS
(SELECT reserves.bid FROM reserves WHERE reserves.sid = sailors.sid))' at line 3
mysql> mysql> SELECT sname FROM sailors S WHERE NOT EXITS (( SELECT boats.bid FROM boats ) NOT EXISTS (SELECT reserves.bid FROM reserves WHERE reserves.sid =
sailors.sid));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'EXISTS (SELECT reserves.bid FROM reserves WHERE reserves.sid = sailors.sid))' at line 1
mysql> SELECT sname FROM sailors S WHERE NOT EXITS (( SELECT boats.bid FROM boats ) EXISTS (SELECT reserves.bid FROM reserves WHERE reserves.sid = sailors.sid));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'EXISTS (SELECT reserves.bid FROM reserves WHERE reserves.sid = sailors.sid))' at line 1
mysql> .exit
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.exit' at line 1
mysql> exit
Bye

