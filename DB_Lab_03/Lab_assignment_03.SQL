

SQL> --Department Table
SQL> CREATE TABLE Department (
  2      Dept_ID INT PRIMARY KEY,
  3      Dept_Name VARCHAR(50) ,
  4      Office_Location VARCHAR(100)
  5  );

Table created.

SQL>
SQL> DESC Department
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPT_ID                                   NOT NULL NUMBER(38)
 DEPT_NAME                                          VARCHAR2(50)
 OFFICE_LOCATION                                    VARCHAR2(100)

SQL> --Student Table
SQL> CREATE TABLE Student (
  2      Student_ID INT PRIMARY KEY,
  3      Name VARCHAR(50) ,
  4      Date_of_Birth DATE,
  5      Gender CHAR(1),
  6      Contact_No VARCHAR(13),
  7      Dept_ID INT,
  8      FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  9  );

Table created.

SQL> desc student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             CHAR(1)
 CONTACT_NO                                         VARCHAR2(13)
 DEPT_ID                                            NUMBER(38)

SQL> --Faculty Table
SQL> CREATE TABLE Faculty (
  2      Faculty_ID INT PRIMARY KEY,
  3      Name VARCHAR(50) ,
  4      Designation VARCHAR(20),
  5      Email VARCHAR(50),
  6      Dept_ID INT,
  7      FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  8  );

Table created.

SQL> desc faculty
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DESIGNATION                                        VARCHAR2(20)
 EMAIL                                              VARCHAR2(50)
 DEPT_ID                                            NUMBER(38)

SQL> --Course Table
SQL> CREATE TABLE Course (
  2      Course_ID INT PRIMARY KEY,
  3      Course_Name VARCHAR(30) ,
  4      Credits INT,
  5      Dept_ID INT,
  6      Faculty_ID INT,
  7      FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
  8      FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
  9  );

Table created.

SQL> desc course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER(38)
 COURSE_NAME                                        VARCHAR2(30)
 CREDITS                                            NUMBER(38)
 DEPT_ID                                            NUMBER(38)
 FACULTY_ID                                         NUMBER(38)

SQL> --Enrollment Table
SQL> CREATE TABLE Enrollment (
  2      Enrollment_ID INT PRIMARY KEY,
  3      Semester VARCHAR(10),
  4      Grade CHAR(2),
  5      Student_ID INT,
  6      Course_ID INT,
  7      FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
  8      FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
  9  );

Table created.

SQL> desc enrollment
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENROLLMENT_ID                             NOT NULL NUMBER(38)
 SEMESTER                                           VARCHAR2(10)
 GRADE                                              CHAR(2)
 STUDENT_ID                                         NUMBER(38)
 COURSE_ID                                          NUMBER(38)

SQL> --Values of Department
SQL> INSERT INTO Department VALUES (101, 'Civil Engineering', 'Block A');

1 row created.

SQL> INSERT INTO Department VALUES (102, 'Mechanical Engineering', 'Block B');

1 row created.

SQL> INSERT INTO Department VALUES (105, 'Computer Science and Engineering', 'Block C');

1 row created.

SQL> INSERT INTO Department VALUES (110, 'Electrical and Electronics Engineering', 'Block D');

1 row created.

SQL> INSERT INTO Department VALUES (118, '3D Animation and Graphics', 'Block E');

1 row created.

SQL> INSERT INTO Department VALUES (119, 'Civil Engineering with Computer Application', 'Block F');

1 row created.

SQL> INSERT INTO Department VALUES (157, 'Computer Science and Engineering (AIML)', 'Block G');

1 row created.

SQL> SELECT * FROM Department;

   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
       101 Civil Engineering
Block A

       102 Mechanical Engineering
Block B

       105 Computer Science and Engineering
Block C


   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
       110 Electrical and Electronics Engineering
Block D

       118 3D Animation and Graphics
Block E

       119 Civil Engineering with Computer Application
Block F


   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------------------------------------
       157 Computer Science and Engineering (AIML)
Block G


7 rows selected.

SQL> SET LINESIZE 100;
SQL> SET PAGESIZE 200;
SQL> SET WRAP OFF;
SQL> SELECT * FROM Department;

   DEPT_ID DEPT_NAME                                          OFFICE_LOCATION
---------- -------------------------------------------------- --------------------------------------
       101 Civil Engineering                                  Block A
       102 Mechanical Engineering                             Block B
       105 Computer Science and Engineering                   Block C
       110 Electrical and Electronics Engineering             Block D
       118 3D Animation and Graphics                          Block E
       119 Civil Engineering with Computer Application        Block F
       157 Computer Science and Engineering (AIML)            Block G

7 rows selected.

SQL> --Vlaues of Student
SQL>
SQL> --Civil
SQL> INSERT INTO Student VALUES (23101128001, 'radhika Kaumari', DATE '2004-05-12', 'F', '8347265910', 101);

1 row created.

SQL> INSERT INTO Student VALUES (23101128002, 'Reetik Raj', DATE '2004-08-20', 'M', '9124587036', 101);

1 row created.


SQL> INSERT INTO Student VALUES (23101128004, 'meenakshi Kaumari', DATE '2003-09-10', 'F', '9685021473', 101);

1 row created.

SQL> INSERT INTO Student VALUES (23101128006, 'raha Kaumari', DATE '2002-12-25', 'F', '8932147506', 101);

1 row created.

SQL> INSERT INTO Student VALUES (23101128010, 'Uvika Kaumari', DATE '2004-06-14', 'F', '7815942603', 101);

1 row created.

SQL> INSERT INTO Student VALUES (23101128009, 'anubhav Kumar', DATE '2003-10-30', 'M', '9326087451', 101);

1 row created.

SQL> INSERT INTO Student VALUES (23101128005, 'satya Kumar', DATE '2004-01-18', 'M', '7458961230', 101);

1 row created.

SQL> SELECT * FROM Student;

STUDENT_ID NAME                                               DATE_OF_B G CONTACT_NO           DEPT_ID
---------- -------------------------------------------------- --------- - ------------- ----------
2.3101E+10 radhika Kaumari                                    12-MAY-04 F 8347265910               101
2.3101E+10 Reetik Raj                                         20-AUG-04 M 9124587036               101
2.3101E+10 meenakshi Kaumari                                  10-SEP-03 F 9685021473               101
2.3101E+10 raha Kaumari                                       25-DEC-02 F 8932147506               101
2.3101E+10 Uvika Kaumari                                      14-JUN-04 F 7815942603               101
2.3101E+10 anubhav Kumar                                      30-OCT-03 M 9326087451               101
2.3101E+10 satya Kumar                                        18-JAN-04 M 7458961230               101

7 rows selected.

SQL> --Mechanical
SQL> INSERT INTO Student VALUES (23102128001, 'Aarav sharma', DATE '2004-02-14', 'M', '9123456781', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128002, 'rishav kumar', DATE '2003-11-08', 'M', '9234567812', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128003, 'aaditya chaudhari', DATE '2004-06-19', 'M', '9345678123', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128004, 'amritesh kumar', DATE '2003-09-27', 'M', '9456781234', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128006, 'Akhil raj', DATE '2004-01-10', 'M', '9567812345', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128007, 'raushan kumar', DATE '2003-12-05', 'M', '9678123456', 102);

1 row created.

SQL>   2
SQL> INSERT INTO Student VALUES (23102128010, 'ankush kumar', DATE '2004-04-22', 'M', '9781234567', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128012, 'rahul Kumar', DATE '2003-08-16', 'M', '9892345678', 102);

1 row created.


SQL> INSERT INTO Student VALUES (23102128013, 'aniket Kumar', DATE '2004-05-30', 'M', '9012345679', 102);

1 row created.

SQL> INSERT INTO Student VALUES (23102128014, 'ravi Kumar', DATE '2003-10-11', 'M', '9123987654', 102);

1 row created.

SQL> SELECT * FROM STUDENT;

STUDENT_ID NAME                                               DATE_OF_B G CONTACT_NO          DEPT_ID
---------- -------------------------------------------------- --------- - ------------- ----------
2.3101E+10 radhika Kaumari                                    12-MAY-04 F 8347265910              101
2.3101E+10 Reetik Raj                                         20-AUG-04 M 9124587036              101
2.3101E+10 meenakshi Kaumari                                  10-SEP-03 F 9685021473              101
2.3101E+10 raha Kaumari                                       25-DEC-02 F 8932147506              101
2.3101E+10 Uvika Kaumari                                      14-JUN-04 F 7815942603              101
2.3101E+10 anubhav Kumar                                      30-OCT-03 M 9326087451              101
2.3101E+10 satya Kumar                                        18-JAN-04 M 7458961230              101
2.3102E+10 Aarav sharma                                       14-FEB-04 M 9123456781              102
2.3102E+10 rishav kumar                                       08-NOV-03 M 9234567812              102
2.3102E+10 aaditya chaudhari                                  19-JUN-04 M 9345678123              102
2.3102E+10 amritesh kumar                                     27-SEP-03 M 9456781234              102
2.3102E+10 Akhil raj                                          10-JAN-04 M 9567812345              102
2.3102E+10 raushan kumar                                      05-DEC-03 M 9678123456              102
2.3102E+10 ankush kumar                                       22-APR-04 M 9781234567              102
2.3102E+10 rahul Kumar                                        16-AUG-03 M 9892345678              102
2.3102E+10 aniket Kumar                                       30-MAY-04 M 9012345679              102
2.3102E+10 ravi Kumar                                         11-OCT-03 M 9123987654              102

17 rows selected.

SQL> --CSE
SQL> INSERT INTO Student VALUES (23105128001, 'nancy kumari', DATE '2004-03-18', 'F', '8123456701', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128002, 'geetanjli thakur', DATE '2003-12-07', 'M', '8234567812', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128003, 'ridhi singh', DATE '2004-01-25', 'F', '8345678923', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128004, 'prince Kumar', DATE '2003-10-14', 'M', '8456789034', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128005, 'reet singh', DATE '2004-05-09', 'M', '8567890145', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128006, 'arvi Kumari', DATE '2003-08-21', 'F', '8678901256', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128008, 'aayesha Kumari', DATE '2004-06-11', 'F', '8890123478', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128009, 'aarush Kumar', DATE '2003-11-29', 'M', '8901234589', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23105128010, 'muskan Kumari', DATE '2004-04-17', 'F', '9012345690', 105);

1 row created.

SQL> SELECT * FROM STUDENT;

STUDENT_ID NAME                                               DATE_OF_B G CONTACT_NO        DEPT_ID
---------- -------------------------------------------------- --------- - ------------- ----------
2.3101E+10 radhika Kaumari                                    12-MAY-04 F 8347265910            101
2.3101E+10 Reetik Raj                                         20-AUG-04 M 9124587036            101
2.3101E+10 meenakshi Kaumari                                  10-SEP-03 F 9685021473            101
2.3101E+10 raha Kaumari                                       25-DEC-02 F 8932147506            101
2.3101E+10 Uvika Kaumari                                      14-JUN-04 F 7815942603            101
2.3101E+10 anubhav Kumar                                      30-OCT-03 M 9326087451            101
2.3101E+10 satya Kumar                                        18-JAN-04 M 7458961230            101
2.3102E+10 Aarav sharma                                       14-FEB-04 M 9123456781            102
2.3102E+10 rishav kumar                                       08-NOV-03 M 9234567812            102
2.3102E+10 aaditya chaudhari                                  19-JUN-04 M 9345678123            102
2.3102E+10 amritesh kumar                                     27-SEP-03 M 9456781234            102
2.3102E+10 Akhil raj                                          10-JAN-04 M 9567812345            102
2.3102E+10 raushan kumar                                      05-DEC-03 M 9678123456            102
2.3102E+10 ankush kumar                                       22-APR-04 M 9781234567            102
2.3102E+10 rahul Kumar                                        16-AUG-03 M 9892345678            102
2.3102E+10 aniket Kumar                                       30-MAY-04 M 9012345679            102
2.3102E+10 ravi Kumar                                         11-OCT-03 M 9123987654            102
2.3105E+10 nancy kumari                                       18-MAR-04 F 8123456701            105
2.3105E+10 geetanjli thakur                                   07-DEC-03 M 8234567812            105
2.3105E+10 ridhi singh                                        25-JAN-04 F 8345678923            105
2.3105E+10 prince Kumar                                       14-OCT-03 M 8456789034            105
2.3105E+10 reet singh                                         09-MAY-04 M 8567890145            105
2.3105E+10 arvi Kumari                                        21-AUG-03 F 8678901256            105
2.3105E+10 aayesha Kumari                                     11-JUN-04 F 8890123478            105
2.3105E+10 aarush Kumar                                       29-NOV-03 M 8901234589            105
2.3105E+10 muskan Kumari                                      17-APR-04 F 9012345690            105

26 rows selected.

SQL> --EEE
SQL> INSERT INTO Student VALUES (23110128001, 'aarushi Singh', DATE '2003-09-18', 'F', '9128475601', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128002, 'neha Kumari', DATE '2003-12-11', 'F', '9236584712', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128004, 'ankit Kumar', DATE '2003-07-25', 'M', '9458706934', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128005, 'nikhil Kumar', DATE '2004-01-14', 'M', '9569817045', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128007, 'anuradha chaudhri', DATE '2004-06-19', 'F', '9670928156', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128008, 'ram kumar', DATE '2003-10-03', 'M', '9781039267', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128009, 'sachita kumari', DATE '2003-08-28', 'M', '9892140378', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128010, 'priti Kumari', DATE '2004-02-22', 'F', '9013251489', 110);

1 row created.

SQL> INSERT INTO Student VALUES (23110128011, 'sumit kumar', DATE '2003-11-30', 'F', '9124362590', 110);

1 row created.

SQL> SELECT * FROM STUDENT;

STUDENT_ID NAME                                               DATE_OF_B G CONTACT_NO        DEPT_ID
---------- -------------------------------------------------- --------- - ------------- ----------
2.3101E+10 radhika Kaumari                                    12-MAY-04 F 8347265910            101
2.3101E+10 Reetik Raj                                         20-AUG-04 M 9124587036            101
2.3101E+10 meenakshi Kaumari                                  10-SEP-03 F 9685021473            101
2.3101E+10 raha Kaumari                                       25-DEC-02 F 8932147506            101
2.3101E+10 Uvika Kaumari                                      14-JUN-04 F 7815942603            101
2.3101E+10 anubhav Kumar                                      30-OCT-03 M 9326087451            101
2.3101E+10 satya Kumar                                        18-JAN-04 M 7458961230            101
2.3102E+10 Aarav sharma                                       14-FEB-04 M 9123456781            102
2.3102E+10 rishav kumar                                       08-NOV-03 M 9234567812            102
2.3102E+10 aaditya chaudhari                                  19-JUN-04 M 9345678123            102
2.3102E+10 amritesh kumar                                     27-SEP-03 M 9456781234            102
2.3102E+10 Akhil raj                                          10-JAN-04 M 9567812345            102
2.3102E+10 raushan kumar                                      05-DEC-03 M 9678123456            102
2.3102E+10 ankush kumar                                       22-APR-04 M 9781234567            102
2.3102E+10 rahul Kumar                                        16-AUG-03 M 9892345678            102
2.3102E+10 aniket Kumar                                       30-MAY-04 M 9012345679            102
2.3102E+10 ravi Kumar                                         11-OCT-03 M 9123987654            102
2.3105E+10 nancy kumari                                       18-MAR-04 F 8123456701            105
2.3105E+10 geetanjli thakur                                   07-DEC-03 M 8234567812            105
2.3105E+10 ridhi singh                                        25-JAN-04 F 8345678923            105
2.3105E+10 prince Kumar                                       14-OCT-03 M 8456789034            105
2.3105E+10 reet singh                                         09-MAY-04 M 8567890145            105
2.3105E+10 arvi Kumari                                        21-AUG-03 F 8678901256            105
2.3105E+10 aayesha Kumari                                     11-JUN-04 F 8890123478            105
2.3105E+10 aarush Kumar                                       29-NOV-03 M 8901234589            105
2.3105E+10 muskan Kumari                                      17-APR-04 F 9012345690            105
2.3110E+10 aarushi Singh                                      18-SEP-03 F 9128475601            110
2.3110E+10 neha Kumari                                        11-DEC-03 F 9236584712            110
2.3110E+10 ankit Kumar                                        25-JUL-03 M 9458706934            110
2.3110E+10 nikhil Kumar                                       14-JAN-04 M 9569817045            110
2.3110E+10 anuradha chaudhri                                  19-JUN-04 F 9670928156            110
2.3110E+10 ram kumar                                          03-OCT-03 M 9781039267            110
2.3110E+10 sachita kumari                                     28-AUG-03 M 9892140378            110
2.3110E+10 priti Kumari                                       22-FEB-04 F 9013251489            110
2.3110E+10 sumit kumar                                        30-NOV-03 F 9124362590            110

35 rows selected.

SQL> --3DAG
SQL> INSERT INTO Student VALUES (23118128001, 'rahul raj', DATE '2004-01-12', 'M', '9123400011', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128002, 'ankit Kumar', DATE '2003-11-25', 'M', '9123400022', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128003, 'aasu Kumar', DATE '2004-03-08', 'M', '9123400033', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128004, 'rishav Kumar', DATE '2003-09-19', 'M', '9123400044', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128005, 'rahul kumar', DATE '2004-02-14', 'M', '9123400055', 118);

1 row created.


SQL> INSERT INTO Student VALUES (23118128006, 'chhotu kumar', DATE '2003-12-01', 'M', '9123400066', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128007, 'krish raj', DATE '2004-05-22', 'M', '9123400077', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128008, 'ankush patel', DATE '2003-08-30', 'M', '9123400088', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23118128009, 'ankit raj', DATE'2004-04-10', 'M', '9123400099', 118);

1 row created.

SQL> --CECA
SQL> INSERT INTO Student VALUES (23119128001, 'rohit Kumar ', DATE '2003-09-15', 'M', '9125600011', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128004, 'vivek Kumar', DATE '2004-01-22', 'M', '9125600022', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128007, 'prerna Kumari', DATE '2004-05-18', 'F', '9125600044', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128008, 'muskan Kumari', DATE '2004-03-27', 'F', '9125600055', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128009, 'param Kumar', DATE '2003-10-11', 'M', '9125600066', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128010, 'rahul Kumar', DATE '2004-02-06', 'M', '9125600077', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128011, 'Shanu Kumar', DATE '2003-08-29', 'M', '9125600088', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23119128013, 'ankush patel', DATE '2004-04-09', 'M', '9125600100', 119);

1 row created.

SQL> --CSE AiMl
SQL> INSERT INTO Student VALUES (23157128001, 'Simran Kumari', DATE '2004-03-12', 'F', '9126700011', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128002, 'ankita mishra', DATE '2003-11-05', 'F', '9126700022', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128003, 'prince kumar', DATE '2004-01-18', 'M', '9126700033', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128006, 'Priya Kumari', DATE '2004-05-09', 'F', '9126700044', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128007, 'Shalini Shreya', DATE '2003-09-27', 'F', '9126700055', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128009, 'Priyanshu Kumari', DATE '2004-02-14', 'F', '9126700066', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128010, 'Puja Kumari', DATE '2003-12-03', 'F', '9126700077', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128011, 'vivek kumar', DATE '2004-04-21', 'M', '9126700088', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128012, 'Khushi Kumari', DATE '2003-10-16', 'F', '9126700099', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128014, 'pooja kumari', DATE '2003-08-29', 'F', '9126700111', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23157128016, 'priyanka kumari', DATE '2003-11-19', 'F', '9126700133', 157);

1 row created.

SQL> SELECT * FROM STUDENT;

STUDENT_ID NAME                                               DATE_OF_B G CONTACT_NO         DEPT_ID
---------- -------------------------------------------------- --------- - ------------- ----------
2.3101E+10 radhika Kaumari                                    12-MAY-04 F 8347265910             101
2.3101E+10 Reetik Raj                                         20-AUG-04 M 9124587036             101
2.3101E+10 meenakshi Kaumari                                  10-SEP-03 F 9685021473             101
2.3101E+10 raha Kaumari                                       25-DEC-02 F 8932147506             101
2.3101E+10 Uvika Kaumari                                      14-JUN-04 F 7815942603             101
2.3101E+10 anubhav Kumar                                      30-OCT-03 M 9326087451             101
2.3101E+10 satya Kumar                                        18-JAN-04 M 7458961230             101
2.3102E+10 Aarav sharma                                       14-FEB-04 M 9123456781             102
2.3102E+10 rishav kumar                                       08-NOV-03 M 9234567812             102
2.3102E+10 aaditya chaudhari                                  19-JUN-04 M 9345678123             102
2.3102E+10 amritesh kumar                                     27-SEP-03 M 9456781234             102
2.3102E+10 Akhil raj                                          10-JAN-04 M 9567812345             102
2.3102E+10 raushan kumar                                      05-DEC-03 M 9678123456             102
2.3102E+10 ankush kumar                                       22-APR-04 M 9781234567             102
2.3102E+10 rahul Kumar                                        16-AUG-03 M 9892345678             102
2.3102E+10 aniket Kumar                                       30-MAY-04 M 9012345679             102
2.3102E+10 ravi Kumar                                         11-OCT-03 M 9123987654             102
2.3105E+10 nancy kumari                                       18-MAR-04 F 8123456701             105
2.3105E+10 geetanjli thakur                                   07-DEC-03 M 8234567812             105
2.3105E+10 ridhi singh                                        25-JAN-04 F 8345678923             105
2.3105E+10 prince Kumar                                       14-OCT-03 M 8456789034             105
2.3105E+10 reet singh                                         09-MAY-04 M 8567890145             105
2.3105E+10 arvi Kumari                                        21-AUG-03 F 8678901256             105
2.3105E+10 aayesha Kumari                                     11-JUN-04 F 8890123478             105
2.3105E+10 aarush Kumar                                       29-NOV-03 M 8901234589             105
2.3105E+10 muskan Kumari                                      17-APR-04 F 9012345690             105
2.3110E+10 aarushi Singh                                      18-SEP-03 F 9128475601             110
2.3110E+10 neha Kumari                                        11-DEC-03 F 9236584712             110
2.3110E+10 ankit Kumar                                        25-JUL-03 M 9458706934             110
2.3110E+10 nikhil Kumar                                       14-JAN-04 M 9569817045             110
2.3110E+10 anuradha chaudhri                                  19-JUN-04 F 9670928156             110
2.3110E+10 ram kumar                                          03-OCT-03 M 9781039267             110
2.3110E+10 sachita kumari                                     28-AUG-03 M 9892140378             110
2.3110E+10 priti Kumari                                       22-FEB-04 F 9013251489             110
2.3110E+10 sumit kumar                                        30-NOV-03 F 9124362590             110
2.3118E+10 rahul raj                                          12-JAN-04 M 9123400011             118
2.3118E+10 ankit Kumar                                        25-NOV-03 M 9123400022             118
2.3118E+10 aasu Kumar                                         08-MAR-04 M 9123400033             118
2.3118E+10 rishav Kumar                                       19-SEP-03 M 9123400044             118
2.3118E+10 rahul kumar                                        14-FEB-04 M 9123400055             118
2.3118E+10 chhotu kumar                                       01-DEC-03 M 9123400066             118
2.3118E+10 krish raj                                          22-MAY-04 M 9123400077             118
2.3118E+10 ankush patel                                       30-AUG-03 M 9123400088             118
2.3118E+10 ankit raj                                          10-APR-04 M 9123400099             118
2.3119E+10 rohit Kumar                                        15-SEP-03 M 9125600011             119
2.3119E+10 vivek Kumar                                        22-JAN-04 M 9125600022             119
2.3119E+10 prerna Kumari                                      18-MAY-04 F 9125600044             119
2.3119E+10 muskan Kumari                                      27-MAR-04 F 9125600055             119
2.3119E+10 param Kumar                                        11-OCT-03 M 9125600066             119
2.3119E+10 rahul Kumar                                        06-FEB-04 M 9125600077             119
2.3119E+10 Shanu Kumar                                        29-AUG-03 M 9125600088             119
2.3119E+10 ankush patel                                       09-APR-04 M 9125600100             119
2.3157E+10 Simran Kumari                                      12-MAR-04 F 9126700011             157
2.3157E+10 ankita mishra                                      05-NOV-03 F 9126700022             157
2.3157E+10 prince kumar                                       18-JAN-04 M 9126700033             157
2.3157E+10 Priya Kumari                                       09-MAY-04 F 9126700044             157
2.3157E+10 Shalini Shreya                                     27-SEP-03 F 9126700055             157
2.3157E+10 Priyanshu Kumari                                   14-FEB-04 F 9126700066             157
2.3157E+10 Puja Kumari                                        03-DEC-03 F 9126700077             157
2.3157E+10 vivek kumar                                        21-APR-04 M 9126700088             157
2.3157E+10 Khushi Kumari                                      16-OCT-03 F 9126700099             157
2.3157E+10 pooja kumari                                       29-AUG-03 F 9126700111             157
2.3157E+10 priyanka kumari                                    19-NOV-03 F 9126700133             157

63 rows selected.

SQL> --Values of Faculty
SQL> INSERT INTO Faculty VALUES (501, 'Kunal Kumar', 'Associate Professor', 'kunal1989kumar@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (502, 'Akhilesh Kumar', 'Associate Professor', 'akhileshkumar3804@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (503, 'Raushan Anand', 'Associate Professor', 'raushanbpmc@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (504, 'Pankaj Kumar', 'Associate Professor', 'pankajkumarpk8888@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (505, 'Nishikant Kumar', 'Associate Professor', 'nishikantbpmce32@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (506, 'Rupesh Kumar', 'Associate Professor', 'rupesh.kumar@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (507, 'Bablu Das', 'Associate Professor', 'bkmech78@gmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (508, 'Firoz Akhtar', 'Associate Professor', ' firozakhtar1581@gmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (509, 'Rahul Ranjan Bharti', 'Associate Professor', '15rahulbharti@gmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (510, 'Uttam Kumar', 'Associate Professor', 'uttamiitp1@gmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (511, 'Ajay Giri', 'Assistant Professor', 'ajay_giri05@rediffmail.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (518, 'E. Haque', 'Associate Professor', 'ehtasham47@gmail.com', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (519, 'Md. Izhar', 'Associate Professor', 'mdizhar1996@gmail.com', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (520, 'Prity Kumari Choudhary', 'Associate Professor', 'prity.choudhary@gmail.com', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (521, 'Sujeet Kumar', 'Associate Professor', 'ksujeet.cs@gmail.com', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (522, 'Murlidhar Prasad Singh', 'Associate Professor', 'singhmurlidhar@gmail.com', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (512, 'Hare Krishna Mishra', 'Professor', 'hare.dbit@gmail.com', 110);

1 row created.

SQL> INSERT INTO Faculty VALUES (513, 'Bhavesh Nandan', 'Associate Professor', 'bhavesh.nandan@gmail.com', 110);

1 row created.

SQL> INSERT INTO Faculty VALUES (514, 'Abhimanyu Mandal', 'Associate Professor', 'mandal.abhimanyu225@gmail.com', 110);

1 row created.

SQL> INSERT INTO Faculty VALUES (515, 'Nitish Kumar', 'Associate Professor', 'nitianj@gmail.com', 110);

1 row created.

SQL> INSERT INTO Faculty VALUES (516, 'Ashish Kumar Suman', 'Professor', 'sumanashish.rkt@gmail.com', 110);

1 row created.

SQL> INSERT INTO Faculty VALUES (517, 'Mitesh Kumar', 'Associate Professor', 'mitesh.sva@gmail.com', 110);

1 row created.

SQL> INSERT INTO Faculty VALUES (526, 'Manisha Kumari Singh', 'Associate Professor', 'manisha.ks241@gmail.com', 118);

1 row created.

SQL> INSERT INTO Faculty VALUES (527, 'Abhishek Kumar', 'Associate Professor', 'abhishek.kumar@gmail.com', 118);

1 row created.

SQL> INSERT INTO Faculty VALUES (525, 'N. Kumar', 'Associate Professor', 'n.kumar@gmail.com', 119);

1 row created.

SQL> INSERT INTO Faculty VALUES (523, 'Praveen Kumar', 'Assistant Professor', 'praveenkumaryadav782@gmail.com', 157);

1 row created.

SQL> SELECT * FROM FACULTY;
rows will be truncated


FACULTY_ID NAME                                               DESIGNATION
           EMAIL
---------- -------------------------------------------------- -------------------- -----------------
       501 Kunal Kumar                                        Associate Professor  kunal1989kumar@gm
       502 Akhilesh Kumar                                     Associate Professor  akhileshkumar3804
       503 Raushan Anand                                      Associate Professor  raushanbpmc@gmail
       504 Pankaj Kumar                                       Associate Professor  pankajkumarpk8888
       505 Nishikant Kumar                                    Associate Professor  nishikantbpmce32@
       506 Rupesh Kumar                                       Associate Professor  rupesh.kumar@gmai
       507 Bablu Das                                          Associate Professor  bkmech78@gmail.co
       508 Firoz Akhtar                                       Associate Professor   firozakhtar1581@
       509 Rahul Ranjan Bharti                                Associate Professor  15rahulbharti@gma
       510 Uttam Kumar                                        Associate Professor  uttamiitp1@gmail.
       511 Ajay Giri                                          Assistant Professor  ajay_giri05@redif
       518 E. Haque                                           Associate Professor  ehtasham47@gmail.
       519 Md. Izhar                                          Associate Professor  mdizhar1996@gmail
       520 Prity Kumari Choudhary                             Associate Professor  prity.choudhary@g
       521 Sujeet Kumar                                       Associate Professor  ksujeet.cs@gmail.
       522 Murlidhar Prasad Singh                             Associate Professor  singhmurlidhar@gm
       512 Hare Krishna Mishra                                Professor
           hare.dbit@gmail.c
       513 Bhavesh Nandan                                     Associate Professor  bhavesh.nandan@gm
       514 Abhimanyu Mandal                                   Associate Professor  mandal.abhimanyu2
       515 Nitish Kumar                                       Associate Professor  nitianj@gmail.com
       516 Ashish Kumar Suman                                 Professor
           sumanashish.rkt@g
       517 Mitesh Kumar                                       Associate Professor  mitesh.sva@gmail.
       526 Manisha Kumari Singh                               Associate Professor  manisha.ks241@gma
       527 Abhishek Kumar                                     Associate Professor  abhishek.kumar@gm
       525 N. Kumar                                           Associate Professor  n.kumar@gmail.com
       523 Praveen Kumar                                      Assistant Professor  praveenkumaryadav

26 rows selected.

SQL> --Values of Course
SQL> --CE
SQL> INSERT INTO Course VALUES (101503, 'Geotechnical Engineering I', 4, 101, 506);

1 row created.

SQL> INSERT INTO Course VALUES (101507, 'Transportation Engineering', 4, 101, 507);

1 row created.

SQL> INSERT INTO Course VALUES (101505, 'Hydraulic Engineering', 4, 101, 509);

1 row created.

SQL> INSERT INTO Course VALUES (101502, 'Environmental Engineering I', 4, 101, 509);

1 row created.

SQL> INSERT INTO Course VALUES (101506, 'Mechanics of Materials', 4, 101, 508);

1 row created.

SQL> INSERT INTO Course VALUES (101504, 'Hydrology and Water Resources', 4, 101, 508);

1 row created.

SQL> SELECT * FROM CE;
SELECT * FROM CE
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> --ME
SQL> INSERT INTO Course VALUES (102501, 'Fluid Machinery', 4, 102, 501);

1 row created.

SQL> INSERT INTO Course VALUES (102502, 'Heat Transfer', 4, 102, 505);

1 row created.

SQL> INSERT INTO Course VALUES (102503, 'Manufacturing Processes', 4, 102, 502);

1 row created.

SQL> INSERT INTO Course VALUES (102504, 'Kinematics of Machinery', 4, 102, 503);

1 row created.

SQL> --CSE
SQL> INSERT INTO Course VALUES (105501, 'Artificial Intelligence', 4, 105, 518);

1 row created.

SQL> INSERT INTO Course VALUES (105502, 'Database Management Systems', 4, 105, 519);

1 row created.

SQL> INSERT INTO Course VALUES (100508, 'Professional Skill Development', 2, 105, 520);

1 row created.

SQL> --EEE
SQL> INSERT INTO Course VALUES (100506, 'Power Electronics', 4, 110, 516);

1 row created.

SQL> INSERT INTO Course VALUES (100506, 'Power Electronics', 4, 110, 516);
INSERT INTO Course VALUES (100506, 'Power Electronics', 4, 110, 516)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008333) violated


SQL> INSERT INTO Course VALUES (100507, 'Power Systems I', 4, 110, 515);

1 row created.

SQL> INSERT INTO Course VALUES (100502, 'Control Systems', 4, 110, 514);

1 row created.

SQL> --3D
SQL> INSERT INTO Course VALUES (118501, '3D Modelling', 4, 118, 526);

1 row created.

SQL> INSERT INTO Course VALUES (118503, '3D Texturing', 4, 118, 526);

1 row created.

SQL> INSERT INTO Course VALUES (118502, '3D Character Design', 4, 118, 526);

1 row created.

SQL> INSERT INTO Course VALUES (100512, 'Design Thinking', 3, 118, 527);

1 row created.

SQL> --CECA
SQL> INSERT INTO Course VALUES (119501, 'Machine Learning', 4, 119, 525);

1 row created.

SQL> INSERT INTO Course VALUES (119504, 'Geotechnical Engineering I', 4, 119, 506);

1 row created.

SQL> INSERT INTO Course VALUES (119507, 'Transportation Engineering', 4, 119, 507);

1 row created.

SQL> INSERT INTO Course VALUES (119502, 'Hydraulic Engineering', 4, 119, 509);

1 row created.

SQL> INSERT INTO Course VALUES (119506, 'Environmental Engineering I', 4, 119, 509);

1 row created.

SQL> INSERT INTO Course VALUES (119505, 'Hydrology and Water Resources', 4, 119, 508);

1 row created.

SQL> --CSE AiMl
SQL> INSERT INTO Course VALUES (621, 'Machine Learning', 4, 157, 523);

1 row created.

SQL> INSERT INTO Course VALUES (622, 'Computer Networks', 4, 157, 523);

1 row created.

SQL> INSERT INTO Course VALUES (623, 'Artificial Intelligence', 4, 157, 523);

1 row created.

SQL> SELECT * FROM COURSE;

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
    101503 Geotechnical Engineering I              4        101        506
    101507 Transportation Engineering              4        101        507
    101505 Hydraulic Engineering                   4        101        509
    101502 Environmental Engineering I             4        101        509
    101506 Mechanics of Materials                  4        101        508
    101504 Hydrology and Water Resources           4        101        508
    102501 Fluid Machinery                         4        102        501
    102502 Heat Transfer                           4        102        505
    102503 Manufacturing Processes                 4        102        502
    102504 Kinematics of Machinery                 4        102        503
    105501 Artificial Intelligence                 4        105        518
    105502 Database Management Systems             4        105        519
    100508 Professional Skill Development          2        105        520
    100506 Power Electronics                       4        110        516
    100507 Power Systems I                         4        110        515
    100502 Control Systems                         4        110        514
    118501 3D Modelling                            4        118        526
    118503 3D Texturing                            4        118        526
    118502 3D Character Design                     4        118        526
    100512 Design Thinking                         3        118        527
    119501 Machine Learning                        4        119        525
    119504 Geotechnical Engineering I              4        119        506
    119507 Transportation Engineering              4        119        507
    119502 Hydraulic Engineering                   4        119        509
    119506 Environmental Engineering I             4        119        509
    119505 Hydrology and Water Resources           4        119        508
       621 Machine Learning                        4        157        523
       622 Computer Networks                       4        157        523
       623 Artificial Intelligence                 4        157        523

29 rows selected.

SQL> --Values of Enrollment
SQL> --CSE
SQL> -- Student 23105128001
SQL> INSERT INTO Enrollment VALUES (1201, '5th', 'A', 23105128001, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1202, '5th', 'A-', 23105128001, 105502);

1 row created.

SQL> -- Student 23105128002
SQL> INSERT INTO Enrollment VALUES (1206, '5th', 'B+', 23105128002, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1207, '5th', 'A', 23105128002, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1210, '5th', 'A', 23105128002, 100508);

1 row created.

SQL> -- Student 23105128003
SQL> INSERT INTO Enrollment VALUES (1211, '5th', 'A', 23105128003, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1212, '5th', 'B+', 23105128003, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1215, '5th', 'A', 23105128003, 100508);

1 row created.

SQL> -- Student 23105128004
SQL> INSERT INTO Enrollment VALUES (1216, '5th', 'A-', 23105128004, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1217, '5th', 'A', 23105128004, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1220, '5th', 'A', 23105128004, 100508);

1 row created.

SQL> -- Student 23105128005
SQL> INSERT INTO Enrollment VALUES (1221, '5th', 'B+', 23105128005, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1222, '5th', 'A-', 23105128005, 105502);

1 row created.

SQL> -- Student 23105128006
SQL> INSERT INTO Enrollment VALUES (1226, '5th', 'A', 23105128006, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1227, '5th', 'B+', 23105128006, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1230, '5th', 'A', 23105128006, 100508);

1 row created.

SQL> -- Student 23105128008
SQL> INSERT INTO Enrollment VALUES (1236, '5th', 'B', 23105128008, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1237, '5th', 'A-', 23105128008, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1240, '5th', 'A', 23105128008, 100508);

1 row created.

SQL> -- Student 23105128009
SQL> INSERT INTO Enrollment VALUES (1241, '5th', 'A', 23105128009, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1242, '5th', 'B+', 23105128009, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1245, '5th', 'A', 23105128009, 100508);

1 row created.

SQL> -- Student 23105128010
SQL> INSERT INTO Enrollment VALUES (1246, '5th', 'A-', 23105128010, 105501);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1247, '5th', 'A', 23105128010, 105502);

1 row created.

SQL> INSERT INTO Enrollment VALUES (1250, '5th', 'A', 23105128010, 100508);

1 row created.

SQL> SELECT * FROM ENROLLMENT;

ENROLLMENT_ID SEMESTER   GR STUDENT_ID  COURSE_ID
------------- ---------- -- ---------- ----------
         1201 5th        A  2.3105E+10     105501
         1202 5th        A- 2.3105E+10     105502
         1206 5th        B+ 2.3105E+10     105501
         1207 5th        A  2.3105E+10     105502
         1210 5th        A  2.3105E+10     100508
         1211 5th        A  2.3105E+10     105501
         1212 5th        B+ 2.3105E+10     105502
         1215 5th        A  2.3105E+10     100508
         1216 5th        A- 2.3105E+10     105501
         1217 5th        A  2.3105E+10     105502
         1220 5th        A  2.3105E+10     100508
         1221 5th        B+ 2.3105E+10     105501
         1222 5th        A- 2.3105E+10     105502
         1226 5th        A  2.3105E+10     105501
         1227 5th        B+ 2.3105E+10     105502
         1230 5th        A  2.3105E+10     100508
         1236 5th        B  2.3105E+10     105501
         1237 5th        A- 2.3105E+10     105502
         1240 5th        A  2.3105E+10     100508
         1241 5th        A  2.3105E+10     105501
         1242 5th        B+ 2.3105E+10     105502
         1245 5th        A  2.3105E+10     100508
         1246 5th        A- 2.3105E+10     105501
         1247 5th        A  2.3105E+10     105502
         1250 5th        A  2.3105E+10     100508

25 rows selected.

