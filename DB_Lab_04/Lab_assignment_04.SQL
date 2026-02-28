

 --Part A: Basic Data Display (Using Aliases)
 --Display all columns from the Student table using suitable aliases for every column.
 SELECT
  2      Student_ID AS Roll_No,
  3      Name AS Student_Name,
  4      Date_of_Birth AS DOB,
  5      Gender AS Sex,
  6      Contact_No AS Contact,
  7      Dept_ID AS Department_ID
  8  FROM Student;

   ROLL_NO STUDENT_NAME                                       DOB       S
---------- -------------------------------------------------- --------- -
CONTACT       DEPARTMENT_ID
------------- -------------
2.3102E+10 Pravi Ranjan                                       08-NOV-03 M
9234567812              102

2.3105E+10 Shrishty Priya                                     18-MAR-04 F
8123456701              105

2.3110E+10 Priti Singh                                        18-SEP-03 F
9128475601              110


   ROLL_NO STUDENT_NAME                                       DOB       S
---------- -------------------------------------------------- --------- -
CONTACT       DEPARTMENT_ID
------------- -------------
2.3118E+10 Yousuf                                             12-JAN-04 M
9123400011              118

2.3119E+10 Abhishek Kumar                                     15-SEP-03 M
9125600011              119

2.3157E+10 Simran Kumari                                      12-MAR-04 F
9126700011              157


6 rows selected.

 --Display only StudentID, Name, and DepartmentID from the Student table, renaming
 --Display only StudentID, Name, and DepartmentID from the Student table, renaming
 --them as Roll_No, Student_Name, and Dept_ID.
 SELECT
  2      Student_ID AS Roll_No,
  3      Name AS Student_Name,
  4      Dept_ID AS Department_ID
  5  FROM Student;

   ROLL_NO STUDENT_NAME                                       DEPARTMENT_ID
---------- -------------------------------------------------- -------------
2.3102E+10 Pravi Ranjan                                                 102
2.3105E+10 Shrishty Priya                                               105
2.3110E+10 Priti Singh                                                  110
2.3118E+10 Yousuf                                                       118
2.3119E+10 Abhishek Kumar                                               119
2.3157E+10 Simran Kumari                                                157

6 rows selected.

 --Display FacultyID, Name, Designation, and Email from the Faculty table using
 --readable column names.
 SELECT
  2      Faculty_ID AS Faculty_ID,
  3      Name AS Faculty_Name,
  4      Designation AS Faculty_Designation,
  5      Email AS Faculty_Email
  6  FROM Faculty;

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       501 Kunal Kumar
Associate Professor  kunal1989kumar@gmail.com

       502 Akhilesh Kumar
Associate Professor  akhileshkumar3804@gmail.com

       503 Raushan Anand
Associate Professor  raushanbpmc@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       504 Pankaj Kumar
Associate Professor  pankajkumarpk8888@gmail.com

       505 Nishikant Kumar
Associate Professor  nishikantbpmce32@gmail.com

       506 Rupesh Kumar
Associate Professor  rupesh.kumar@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       507 Bablu Das
Associate Professor  bkmech78@gmail.com

       508 Firoz Akhtar
Associate Professor   firozakhtar1581@gmail.com

       509 Rahul Ranjan Bharti
Associate Professor  15rahulbharti@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       510 Uttam Kumar
Associate Professor  uttamiitp1@gmail.com

       511 Ajay Giri
Assistant Professor  ajay_giri05@rediffmail.com

       518 E. Haque
Associate Professor  ehtasham47@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       519 Md. Izhar
Associate Professor  mdizhar1996@gmail.com

       520 Prity Kumari Choudhary
Associate Professor  prity.choudhary@gmail.com

       521 Sujeet Kumar
Associate Professor  ksujeet.cs@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       522 Murlidhar Prasad Singh
Associate Professor  singhmurlidhar@gmail.com

       512 Hare Krishna Mishra
Professor            hare.dbit@gmail.com

       513 Bhavesh Nandan
Associate Professor  bhavesh.nandan@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       514 Abhimanyu Mandal
Associate Professor  mandal.abhimanyu225@gmail.com

       517 Mitesh Kumar
Associate Professor  mitesh.sva@gmail.com

       526 Manisha Kumari Singh
Associate Professor  manisha.ks241@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
FACULTY_DESIGNATION  FACULTY_EMAIL
-------------------- --------------------------------------------------
       527 Abhishek Kumar
Associate Professor  abhishek.kumar@gmail.com

       525 N. Kumar
Associate Professor  n.kumar@gmail.com

       523 Praveen Kumar
Assistant Professor  praveenkumaryadav782@gmail.com


24 rows selected.

 --Display all columns from the Course table with renamed column headers
 SELECT
  2      Course_ID AS ID,
  3      Course_Name AS Name,
  4      Credits AS Points,
  5      Dept_ID AS Department_ID,
  6      Faculty_ID AS Faculty_ID
  7  FROM COURSE;

        ID NAME                               POINTS DEPARTMENT_ID FACULTY_ID
---------- ------------------------------ ---------- ------------- ----------
    101503 Geotechnical Engineering I              4           101        506
    101507 Transportation Engineering              4           101        507
    101505 Hydraulic Engineering                   4           101        509
    101502 Environmental Engineering I             4           101        509
    101506 Mechanics of Materials                  4           101        508
    101504 Hydrology and Water Resources           4           101        508
    102501 Fluid Machinery                         4           102        501
    102502 Heat Transfer                           4           102        505
    102503 Manufacturing Processes                 4           102        502
    102504 Kinematics of Machinery                 4           102        503
    105501 Artificial Intelligence                 4           105        518

        ID NAME                               POINTS DEPARTMENT_ID FACULTY_ID
---------- ------------------------------ ---------- ------------- ----------
    105502 Database Management Systems             4           105        519
    105503 Formal Language and Automata            4           105        523
    100504 Professional Skill Development          2           105        520
    118501 3D Modelling                            4           118        526
    118503 3D Texturing                            4           118        526
    118502 3D Character Design                     4           118        526
    100512 Design Thinking                         3           118        527
    119501 Machine Learning                        4           119        525
    119504 Geotechnical Engineering I              4           119        506
    119507 Transportation Engineering              4           119        507
    119502 Hydraulic Engineering                   4           119        509

        ID NAME                               POINTS DEPARTMENT_ID FACULTY_ID
---------- ------------------------------ ---------- ------------- ----------
    119506 Environmental Engineering I             4           119        509
       621 Machine Learning                        4           157        523
       622 Computer Networks                       4           157        523
       623 Artificial Intelligence                 4           157        523

26 rows selected.

 --Display all columns from the Enrollment table with meaningful aliases.
 SELECT
  2      Enrollment_ID AS Enroll_ID,
  3      Semester AS Sem,
  4      Grade AS Marks,
  5      Student_ID AS Std_ID,
  6      Course_ID AS course_ID
  7  FROM ENROLLMENT;

 ENROLL_ID SEM        MA     STD_ID  COURSE_ID
---------- ---------- -- ---------- ----------
      1201 5th        A  2.3105E+10     105501
      1202 5th        A- 2.3105E+10     105502
      1203 5th        B+ 2.3105E+10     105503

 --Part B: Conditional Data Display (WHERE Clause)
 --Display all students whose DepartmentID is 'D101'.
 SELECT *
  2  FROM STUDENT
  3  WHERE DEPT_ID = 101;

no rows selected

 --Display all students whose Gender is 'Female'.
 SELECT *
  2  FROM STUDENT
  3  WHERE GENDER = 'F';

STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3105E+10 Shrishty Priya                                     18-MAR-04 F
8123456701           105

2.3110E+10 Priti Singh                                        18-SEP-03 F
9128475601           110

2.3157E+10 Simran Kumari                                      12-MAR-04 F
9126700011           157


 --Display faculty members whose Designation is 'Assistant Professor'.
 SELECT *
  2  FROM FACULTY
  3  WHERE DESIGNATION = 'Assistant Professor';

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       511 Ajay Giri
Assistant Professor  ajay_giri05@rediffmail.com
       102

       523 Praveen Kumar
Assistant Professor  praveenkumaryadav782@gmail.com
       157

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------


 --Display faculty members whose DepartmentID is 'D102'.
 SELECT *
  2  FROM FACULTY
  3  WHERE DEPT_ID = 102;

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       507 Bablu Das
Associate Professor  bkmech78@gmail.com
       102

       508 Firoz Akhtar
Associate Professor   firozakhtar1581@gmail.com
       102

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------

       509 Rahul Ranjan Bharti
Associate Professor  15rahulbharti@gmail.com
       102

       510 Uttam Kumar
Associate Professor  uttamiitp1@gmail.com

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       102

       511 Ajay Giri
Assistant Professor  ajay_giri05@rediffmail.com
       102


 -- Display courses whose Credits are greater than or equal to 4.
 SELECT *
  2  FROM COURSE
  3  WHERE CREDITS >= 4;

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

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
    105502 Database Management Systems             4        105        519
    105503 Formal Language and Automata            4        105        523
    118501 3D Modelling                            4        118        526
    118503 3D Texturing                            4        118        526
    118502 3D Character Design                     4        118        526
    119501 Machine Learning                        4        119        525
    119504 Geotechnical Engineering I              4        119        506
    119507 Transportation Engineering              4        119        507
    119502 Hydraulic Engineering                   4        119        509
    119506 Environmental Engineering I             4        119        509
       621 Machine Learning                        4        157        523

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
       622 Computer Networks                       4        157        523
       623 Artificial Intelligence                 4        157        523

24 rows selected.

SQL> --Display students born after 2003-01-01 using the DOB column.
SQL> SELECT *
  2  FROM STUDENT
  3  WHERE DATE_OF_BIRTH > DATE'2003-01-01';

STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3102E+10 Pravi Ranjan                                       08-NOV-03 M
9234567812           102

2.3105E+10 Shrishty Priya                                     18-MAR-04 F
8123456701           105

2.3110E+10 Priti Singh                                        18-SEP-03 F
9128475601           110


STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3118E+10 Yousuf                                             12-JAN-04 M
9123400011           118

2.3119E+10 Abhishek Kumar                                     15-SEP-03 M
9125600011           119

2.3157E+10 Simran Kumari                                      12-MAR-04 F
9126700011           157


6 rows selected.

 --Display enrollment records for students enrolled in Semester 4.
 SELECT *
  2  FROM ENROLLMENT
  3  WHERE SEMESTER = '4th';

no rows selected

 --Part C: Sorting and Limiting Results
 --Display student records sorted by Name in ascending order
 SELECT *
  2  FROM STUDENT
  3  ORDER BY NAME ASC;

STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3119E+10 Abhishek Kumar                                     15-SEP-03 M
9125600011           119

2.3102E+10 Pravi Ranjan                                       08-NOV-03 M
9234567812           102

2.3110E+10 Priti Singh                                        18-SEP-03 F
9128475601           110


STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3105E+10 Shrishty Priya                                     18-MAR-04 F
8123456701           105

2.3157E+10 Simran Kumari                                      12-MAR-04 F
9126700011           157

2.3118E+10 Yousuf                                             12-JAN-04 M
9123400011           118


6 rows selected.

 --Display student records sorted by DOB in descending order
 SELECT *
  2  FROM STUDENT
  3  ORDER BY DATE_OF_BIRTH DESC;

STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3105E+10 Shrishty Priya                                     18-MAR-04 F
8123456701           105

2.3157E+10 Simran Kumari                                      12-MAR-04 F
9126700011           157

2.3118E+10 Yousuf                                             12-JAN-04 M
9123400011           118


STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3102E+10 Pravi Ranjan                                       08-NOV-03 M
9234567812           102

2.3110E+10 Priti Singh                                        18-SEP-03 F
9128475601           110

2.3119E+10 Abhishek Kumar                                     15-SEP-03 M
9125600011           119


6 rows selected.

SQL> --Display faculty records sorted by Designation in ascending order.
SQL> SELECT *
  2  FROM FACULTY
  3  ORDER BY DESIGNATION ASC;

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       523 Praveen Kumar
Assistant Professor  praveenkumaryadav782@gmail.com
       157

       511 Ajay Giri
Assistant Professor  ajay_giri05@rediffmail.com
       102

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------

       504 Pankaj Kumar
Associate Professor  pankajkumarpk8888@gmail.com
       101

       505 Nishikant Kumar
Associate Professor  nishikantbpmce32@gmail.com

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       101

       506 Rupesh Kumar
Associate Professor  rupesh.kumar@gmail.com
       101

       507 Bablu Das

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
Associate Professor  bkmech78@gmail.com
       102

       508 Firoz Akhtar
Associate Professor   firozakhtar1581@gmail.com
       102


FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       509 Rahul Ranjan Bharti
Associate Professor  15rahulbharti@gmail.com
       102

       510 Uttam Kumar
Associate Professor  uttamiitp1@gmail.com
       102

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------

       518 E. Haque
Associate Professor  ehtasham47@gmail.com
       105

       519 Md. Izhar
Associate Professor  mdizhar1996@gmail.com

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       105

       520 Prity Kumari Choudhary
Associate Professor  prity.choudhary@gmail.com
       105

       521 Sujeet Kumar

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
Associate Professor  ksujeet.cs@gmail.com
       105

       522 Murlidhar Prasad Singh
Associate Professor  singhmurlidhar@gmail.com
       105


FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       503 Raushan Anand
Associate Professor  raushanbpmc@gmail.com
       101

       501 Kunal Kumar
Associate Professor  kunal1989kumar@gmail.com
       101

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------

       502 Akhilesh Kumar
Associate Professor  akhileshkumar3804@gmail.com
       101

       513 Bhavesh Nandan
Associate Professor  bhavesh.nandan@gmail.com

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       110

       514 Abhimanyu Mandal
Associate Professor  mandal.abhimanyu225@gmail.com
       110

       517 Mitesh Kumar

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
Associate Professor  mitesh.sva@gmail.com
       110

       526 Manisha Kumari Singh
Associate Professor  manisha.ks241@gmail.com
       118


FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------
       527 Abhishek Kumar
Associate Professor  abhishek.kumar@gmail.com
       118

       525 N. Kumar
Associate Professor  n.kumar@gmail.com
       119

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION          EMAIL
-------------------- --------------------------------------------------
   DEPT_ID
----------

       512 Hare Krishna Mishra
Professor            hare.dbit@gmail.com
       110


24 rows selected.
 --Display courses sorted by Credits in descending order.
 SELECT *
  2  FROM COURSE
  3  ORDER BY CREDITS DESC;

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
    101503 Geotechnical Engineering I              4        101        506
       623 Artificial Intelligence                 4        157        523
    101505 Hydraulic Engineering                   4        101        509
    101502 Environmental Engineering I             4        101        509
    101506 Mechanics of Materials                  4        101        508
    101504 Hydrology and Water Resources           4        101        508
    102501 Fluid Machinery                         4        102        501
    102502 Heat Transfer                           4        102        505
    102503 Manufacturing Processes                 4        102        502
    102504 Kinematics of Machinery                 4        102        503
    105501 Artificial Intelligence                 4        105        518

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
    105502 Database Management Systems             4        105        519
    105503 Formal Language and Automata            4        105        523
    101507 Transportation Engineering              4        101        507
       622 Computer Networks                       4        157        523
    118501 3D Modelling                            4        118        526
    118503 3D Texturing                            4        118        526
    118502 3D Character Design                     4        118        526
    119501 Machine Learning                        4        119        525
    119504 Geotechnical Engineering I              4        119        506
    119507 Transportation Engineering              4        119        507
    119502 Hydraulic Engineering                   4        119        509

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
    119506 Environmental Engineering I             4        119        509
       621 Machine Learning                        4        157        523
    100512 Design Thinking                         3        118        527
    100504 Professional Skill Development          2        105        520

26 rows selected.

-- Display only the first 3 student records.
 SELECT *
  2  FROM STUDENT
  3  FETCH FIRST 3 ROW ONLY;

STUDENT_ID NAME                                               DATE_OF_B G
---------- -------------------------------------------------- --------- -
CONTACT_NO       DEPT_ID
------------- ----------
2.3102E+10 Pravi Ranjan                                       08-NOV-03 M
9234567812           102

2.3105E+10 Shrishty Priya                                     18-MAR-04 F
8123456701           105

2.3110E+10 Priti Singh                                        18-SEP-03 F
9128475601           110

 --Display only the first 5 course records
 SELECT *
  2  FROM COURSE
  3  FETCH FIRST 5 ROW ONLY;

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
    101503 Geotechnical Engineering I              4        101        506
    101507 Transportation Engineering              4        101        507
    101505 Hydraulic Engineering                   4        101        509
    101502 Environmental Engineering I             4        101        509
    101506 Mechanics of Materials                  4        101        508

 --Part D: Derived / Computed Output (No Table Modification)
 --Display student Name along with their calculated Age using DOB.
 SELECT
  2      Name,
  3      EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM Date_of_birth) AS DOB
  4  FROM STUDENT;

NAME                                                      DOB
-------------------------------------------------- ----------
Pravi Ranjan                                               23
Shrishty Priya                                             22
Priti Singh                                                23
Yousuf                                                     22
Abhishek Kumar                                             23
Simran Kumari                                              22


 --Display course CourseName along with Credits + 1 as Updated_Credits.
SQL> SELECT
  2      COURSE_NAME ,
  3      CREDITS +1 AS UPDATED_CREDITS
  4  FROM COURSE;

COURSE_NAME                    UPDATED_CREDITS
------------------------------ ---------------
Geotechnical Engineering I                   5
Transportation Engineering                   5
Hydraulic Engineering                        5
Environmental Engineering I                  5
Mechanics of Materials                       5
Hydrology and Water Resources                5
Fluid Machinery                              5
Heat Transfer                                5
Manufacturing Processes                      5
Kinematics of Machinery                      5
Artificial Intelligence                      5

COURSE_NAME                    UPDATED_CREDITS
------------------------------ ---------------
Database Management Systems                  5
Formal Language and Automata                 5
Professional Skill Development               3
3D Modelling                                 5
3D Texturing                                 5
3D Character Design                          5
Design Thinking                              4
Machine Learning                             5
Geotechnical Engineering I                   5
Transportation Engineering                   5
Hydraulic Engineering                        5

COURSE_NAME                    UPDATED_CREDITS
------------------------------ ---------------
Environmental Engineering I                  5
Machine Learning                             5
Computer Networks                            5
Artificial Intelligence                      5

26 rows selected.

SQL> --Display enrollment details with column Grade shown as Final_Grade.
SQL> SELECT
  2      ENROLLMENT_ID,
  3      SEMESTER ,
  4      GRADE AS FINAL_GRADE,
  5      STUDENT_ID,
  6      COURSE_ID
  7  FROM ENROLLMENT;

ENROLLMENT_ID SEMESTER   FI STUDENT_ID  COURSE_ID
------------- ---------- -- ---------- ----------
         1201 5th        A  2.3105E+10     105501
         1202 5th        A- 2.3105E+10     105502
         1203 5th        B+ 2.3105E+10     105503

SQL> --Display student Name along with year of birth extracted from DOB.
SQL> SELECT
  2      NAME,
  3      EXTRACT(YEAR FROM DATE_OF_BIRTH) AS YEAR_OF_BIRTH
  4  FROM STUDENT;

NAME                                               YEAR_OF_BIRTH
-------------------------------------------------- -------------
Pravi Ranjan                                                2003
Shrishty Priya                                              2004
Priti Singh                                                 2003
Yousuf                                                      2004
Abhishek Kumar                                              2003
Simran Kumari                                               2004

6 rows selected.

 --Display faculty Name along with email domain extracted from Email.
 SELECT
  2      NAME,
  3      SUBSTR(EMAIL,INSTR(EMAIL , '@')+1) AS EMAIL_DOMAIN
  4  FROM FACULTY;

NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Kunal Kumar
gmail.com

Akhilesh Kumar
gmail.com

Raushan Anand
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Pankaj Kumar
gmail.com

Nishikant Kumar
gmail.com

Rupesh Kumar
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Bablu Das
gmail.com

Firoz Akhtar
gmail.com

Rahul Ranjan Bharti
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Uttam Kumar
gmail.com

Ajay Giri
rediffmail.com

E. Haque
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Md. Izhar
gmail.com

Prity Kumari Choudhary
gmail.com

Sujeet Kumar
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Murlidhar Prasad Singh
gmail.com

Hare Krishna Mishra
gmail.com

Bhavesh Nandan
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Abhimanyu Mandal
gmail.com

Mitesh Kumar
gmail.com

Manisha Kumari Singh
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Abhishek Kumar
gmail.com

N. Kumar
gmail.com

Praveen Kumar
gmail.com