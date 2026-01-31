
SQL*Plus: Release 21.0.0.0.0 - Production on Sat Jan 31 18:12:02 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Sat Jan 31 2026 17:39:41 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Students(Rollno INT,Student_name VARCHAR(50),Dept VARCHAR(20),Age INT,Phone VARCHAR(15));

Table created.

SQL> DESC Students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 STUDENT_NAME                                       VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course(
  2  CourseID INT,
  3  CourseStudent_name VARCHAR(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC Course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSESTUDENT_NAME                                 VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Students
  2  ADD Semester INT;

Table altered.

SQL> ALTER TABLE Students
  2  CHANGE Phone MobileNo VARCHAR(15);
CHANGE Phone MobileNo VARCHAR(15)
*
ERROR at line 2:
ORA-01735: invalid ALTER TABLE option


SQL> DESC Stdudents;
ERROR:
ORA-04043: object Stdudents does not exist


SQL> ALTER TABLE Students
  2  ADD Semester INT;
ADD Semester INT
    *
ERROR at line 2:
ORA-01430: column being added already exists in table


SQL> DESC Students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 STUDENT_NAME                                       VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 SEMESTER                                           NUMBER(38)

SQL> ALTER TABLE Students
  2  CHANGE Phone MobileNo VARCHAR(15);
CHANGE Phone MobileNo VARCHAR(15)
*
ERROR at line 2:
ORA-01735: invalid ALTER TABLE option


SQL> ALTER TABLE Students
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 STUDENT_NAME                                       VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 SEMESTER                                           NUMBER(38)

SQL> DROP TABLE Course;

Table dropped.

SQL> DESC Course
ERROR:
ORA-04043: object Course does not exist


SQL> INSERT INTO Students VALUES (1, 'Rahul Kumar', '9876543210');
INSERT INTO Students VALUES (1, 'Rahul Kumar', '9876543210')
            *
ERROR at line 1:
ORA-00947: not enough values


SQL> INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, City, Semester) VALUES
  2  (101,'Rahul','CSE',20,'9876543210','Delhi',3);
INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, City, Semester) VALUES
                                                                 *
ERROR at line 1:
ORA-00904: "CITY": invalid identifier


SQL> INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, City, Semester) VALUES
  2    2  (101,'Rahul','CSE',20,'9876543210',3)
  3
SQL>
SQL> INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES
  2  (101,'Rahul','CSE',20,'9876543210',3);

1 row created.

SQL>  INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES
  2  (102,'Anita','IT',21,'9876543222','Patna',4);
 INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES
             *
ERROR at line 1:
ORA-00913: too many values


SQL> INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES
  2  (102,'Anita','IT',21,'9876543222',4);

1 row created.

SQL> INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES
  2  (103,'Rohit','CSE',22,'9876543233',5);

1 row created.

SQL> INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES(104,'Neha','ECE',19,'9876543244',2);

1 row created.

SQL>  INSERT INTO Students (RollNo, Student_name, Dept, Age, MobileNo, Semester) VALUES(105,'Amit','ME',23,'9876543255',6);

1 row created.

SQL> SELECT * FROM Students;

    ROLLNO STUDENT_NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO          SEMESTER
-------------------- ---------- --------------- ----------
       101 Rahul
CSE                          20 9876543210               3

       102 Anita
IT                           21 9876543222               4

       103 Rohit
CSE                          22 9876543233               5


    ROLLNO STUDENT_NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO          SEMESTER
-------------------- ---------- --------------- ----------
       104 Neha
ECE                          19 9876543244               2

       105 Amit
ME                           23 9876543255               6


SQL> SELECT RollNo, Student_name FROM Students;

    ROLLNO STUDENT_NAME
---------- --------------------------------------------------
       101 Rahul
       102 Anita
       103 Rohit
       104 Neha
       105 Amit

SQL> SELECT * FROM Students
  2  WHERE Dept = 'CSE';

    ROLLNO STUDENT_NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO          SEMESTER
-------------------- ---------- --------------- ----------
       101 Rahul
CSE                          20 9876543210               3

       103 Rohit
CSE                          22 9876543233               5


SQL> SELECT * FROM Students
  2  WHERE Age > 20;

    ROLLNO STUDENT_NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO          SEMESTER
-------------------- ---------- --------------- ----------
       102 Anita
IT                           21 9876543222               4

       103 Rohit
CSE                          22 9876543233               5

       105 Amit
ME                           23 9876543255               6


SQL> UPDATE Students
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> DESC Students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 STUDENT_NAME                                       VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 SEMESTER                                           NUMBER(38)

SQL> UPDATE Students
  2  SET Age = Age + 1;

5 rows updated.

SQL> DELETE FROM Students
  2  WHERE RollNo = 105;

1 row deleted.

SQL> DESC Students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 STUDENT_NAME                                       VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 SEMESTER                                           NUMBER(38)

SQL> DELETE FROM Students;

4 rows deleted.

SQL>
