
 --Part A: Student-Enrollment Relationship
 --Display StudentID and Name from Student table along with CourseID from
 --Enrollment table.
 SELECT
    STUDENT.STUDENT_ID ,STUDENT.NAME,ENROLLMENT.COURSE_ID
    FROM STUDENT
    INNER JOIN ENROLLMENT
    ON STUDENT.STUDENT_ID = ENROLLMENT.STUDENT_ID;

STUDENT_ID NAME                                                COURSE_ID
---------- -------------------------------------------------- ----------
2.3105E+10 Shrishty Priya                                         105501
2.3105E+10 Shrishty Priya                                         105502
2.3105E+10 Shrishty Priya                                         105503

 --Display student Name and Semester for all enrolled students.
 SELECT
    STUDENT.NAME , ENROLLMENT.SEMESTER
    FROM STUDENT
    INNER JOIN ENROLLMENT
    ON STUDENT.STUDENT_ID = ENROLLMENT.STUDENT_ID;

NAME                                               SEMESTER
-------------------------------------------------- ----------
Shrishty Priya                                     5th
Shrishty Priya                                     5th
Shrishty Priya                                     5th

 --Display student Name and Grade obtained in each course.
 SELECT
    STUDENT.NAME , ENROLLMENT.GRADE
    FROM STUDENT
    INNER JOIN ENROLLMENT
    ON STUDENT.STUDENT_ID=ENROLLMENT.STUDENT_ID;

NAME                                               GR
-------------------------------------------------- --
Shrishty Priya                                     A
Shrishty Priya                                     A-
Shrishty Priya                                     B+

 --Course-Faculty Relationship
 --Display CourseName and Credits along with the Faculty Name who teaches
 --the course.
 SELECT
    COURSE.COURSE_NAME,COURSE.CREDITS,FACULTY.NAME
    FROM COURSE
    INNER JOIN FACULTY
    ON COURSE.FACULTY_ID=FACULTY.FACULTY_ID;

COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Geotechnical Engineering I              4
Rupesh Kumar

Transportation Engineering              4
Bablu Das

Hydraulic Engineering                   4
Rahul Ranjan Bharti


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Environmental Engineering I             4
Rahul Ranjan Bharti

Mechanics of Materials                  4
Firoz Akhtar

Hydrology and Water Resources           4
Firoz Akhtar


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Fluid Machinery                         4
Kunal Kumar

Heat Transfer                           4
Nishikant Kumar

Manufacturing Processes                 4
Akhilesh Kumar


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Kinematics of Machinery                 4
Raushan Anand

Artificial Intelligence                 4
E. Haque

Database Management Systems             4
Md. Izhar


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Formal Language and Automata            4
Praveen Kumar

Professional Skill Development          2
Prity Kumari Choudhary

3D Modelling                            4
Manisha Kumari Singh


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
3D Texturing                            4
Manisha Kumari Singh

3D Character Design                     4
Manisha Kumari Singh

Design Thinking                         3
Abhishek Kumar


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Machine Learning                        4
N. Kumar

Geotechnical Engineering I              4
Rupesh Kumar

Transportation Engineering              4
Bablu Das


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Hydraulic Engineering                   4
Rahul Ranjan Bharti

Environmental Engineering I             4
Rahul Ranjan Bharti

Machine Learning                        4
Praveen Kumar


COURSE_NAME                       CREDITS
------------------------------ ----------
NAME
--------------------------------------------------
Computer Networks                       4
Praveen Kumar

Artificial Intelligence                 4
Praveen Kumar


 --Display all courses taught by a faculty member whose FacultyID is 'F201'.
 SELECT
    COURSE.COURSE_NAME
    FROM COURSE
    INNER JOIN FACULTY
    ON FACULTY.FACULTY_ID = COURSE.FACULTY_ID
    WHERE FACULTY.FACULTY_ID =501;

COURSE_NAME
------------------------------
Fluid Machinery

 --Display faculty Name and Designation along with the CourseName they teach.
 SELECT
    FACULTY.NAME,FACULTY.DESIGNATION,COURSE.COURSE_NAME
    FROM FACULTY
    INNER JOIN COURSE
    ON FACULTY.FACULTY_ID=COURSE.FACULTY_ID;

NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Rupesh Kumar                                       Associate Professor
Geotechnical Engineering I

Bablu Das                                          Associate Professor
Transportation Engineering

Rahul Ranjan Bharti                                Associate Professor
Hydraulic Engineering


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Rahul Ranjan Bharti                                Associate Professor
Environmental Engineering I

Firoz Akhtar                                       Associate Professor
Mechanics of Materials

Firoz Akhtar                                       Associate Professor
Hydrology and Water Resources


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Kunal Kumar                                        Associate Professor
Fluid Machinery

Nishikant Kumar                                    Associate Professor
Heat Transfer

Akhilesh Kumar                                     Associate Professor
Manufacturing Processes


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Raushan Anand                                      Associate Professor
Kinematics of Machinery

E. Haque                                           Associate Professor
Artificial Intelligence

Md. Izhar                                          Associate Professor
Database Management Systems


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Praveen Kumar                                      Assistant Professor
Formal Language and Automata

Prity Kumari Choudhary                             Associate Professor
Professional Skill Development

Manisha Kumari Singh                               Associate Professor
3D Modelling


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Manisha Kumari Singh                               Associate Professor
3D Texturing

Manisha Kumari Singh                               Associate Professor
3D Character Design

Abhishek Kumar                                     Associate Professor
Design Thinking


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
N. Kumar                                           Associate Professor
Machine Learning

Rupesh Kumar                                       Associate Professor
Geotechnical Engineering I

Bablu Das                                          Associate Professor
Transportation Engineering


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Rahul Ranjan Bharti                                Associate Professor
Hydraulic Engineering

Rahul Ranjan Bharti                                Associate Professor
Environmental Engineering I

Praveen Kumar                                      Assistant Professor
Machine Learning


NAME                                               DESIGNATION
-------------------------------------------------- --------------------
COURSE_NAME
------------------------------
Praveen Kumar                                      Assistant Professor
Computer Networks

Praveen Kumar                                      Assistant Professor
Artificial Intelligence



 --Part C: Student-Course-Enrollment Relationship
 --Display student Name along with CourseName for all enrollments.
 SELECT
    S.NAME,C.COURSE_NAME
    FROM STUDENT  S
    INNER JOIN ENROLLMENT  E
    ON S.STUDENT_ID = E.STUDENT_ID
    INNER JOIN COURSE  C
    ON E.COURSE_ID = C.COURSE_ID;

NAME
--------------------------------------------------
COURSE_NAME
------------------------------
Shrishty Priya
Artificial Intelligence

Shrishty Priya
Database Management Systems

Shrishty Priya
Formal Language and Automata


 --Display student Name, CourseName, and Semester.
 SELECT
    S.NAME,C.COURSE_NAME,E.SEMESTER
    FROM STUDENT  S
    INNER JOIN ENROLLMENT  E
    ON S.STUDENT_ID = E.STUDENT_ID
    INNER JOIN COURSE  C
    ON E.COURSE_ID = C.COURSE_ID;

NAME
--------------------------------------------------
COURSE_NAME                    SEMESTER
------------------------------ ----------
Shrishty Priya
Artificial Intelligence        5th

Shrishty Priya
Database Management Systems    5th

Shrishty Priya
Formal Language and Automata   5th


 --Display student Name, CourseName, and Grade for Semester 4 only.
 SELECT
    S.NAME,C.COURSE_NAME,E.GRADE
    FROM STUDENT  S
    INNER JOIN ENROLLMENT  E
    ON S.STUDENT_ID = E.STUDENT_ID
    INNER JOIN COURSE  C
    ON E.COURSE_ID = C.COURSE_ID
    WHERE E.SEMESTER='4th';


 SELECT * FROM ENROLLMENT;

ENROLLMENT_ID SEMESTER   GR STUDENT_ID  COURSE_ID
------------- ---------- -- ---------- ----------
         1201 5th        A  2.3105E+10     105501
         1202 5th        A- 2.3105E+10     105502
         1203 5th        B+ 2.3105E+10     105503



 --Display student Name, CourseName, and Grade for Semester 4 only.
 SELECT
    S.NAME,C.COURSE_NAME,E.GRADE
    FROM STUDENT  S
    INNER JOIN ENROLLMENT  E
    ON S.STUDENT_ID = E.STUDENT_ID
    INNER JOIN COURSE  C
    ON E.COURSE_ID = C.COURSE_ID
    WHERE E.SEMESTER='5th';

NAME
--------------------------------------------------
COURSE_NAME                    GR
------------------------------ --
Shrishty Priya
Artificial Intelligence        A

Shrishty Priya
Database Management Systems    A-

Shrishty Priya
Formal Language and Automata   B+


 --Display all courses taken by a student whose StudentID is 'S401'
 SELECT
    C.COURSE_NAME
    FROM STUDENT  S
    INNER JOIN ENROLLMENT  E
    ON S.STUDENT_ID = E.STUDENT_ID
    INNER JOIN COURSE  C
    ON E.COURSE_ID = C.COURSE_ID
    WHERE S.STUDENT_ID=23105128001;

COURSE_NAME
------------------------------
Artificial Intelligence
Database Management Systems
Formal Language and Automata


 --Part D: Department-Based JOIN Queries
 SELECT
        S.NAME,
        S.DEPT_ID,
        C.COURSE_NAME
    FROM STUDENT S
    JOIN ENROLLMENT E
    ON S.STUDENT_ID = E.STUDENT_ID
    JOIN COURSE C
    ON E.COURSE_ID = C.COURSE_ID;

NAME                                                  DEPT_ID
-------------------------------------------------- ----------
COURSE_NAME
------------------------------
Shrishty Priya                                            105
Artificial Intelligence

Shrishty Priya                                            105
Database Management Systems

Shrishty Priya                                            105
Formal Language and Automata


 --Display department-wise list of courses using DepartmentID.
 SELECT
        D.DEPT_ID,
        C.COURSE_NAME
    FROM DEPARTMENT D
    JOIN COURSE C
    ON D.DEPT_ID = C.DEPT_ID
    ORDER BY D.DEPT_ID;

   DEPT_ID COURSE_NAME
---------- ------------------------------
       101 Transportation Engineering
       101 Geotechnical Engineering I
       101 Hydraulic Engineering
       101 Environmental Engineering I
       101 Mechanics of Materials
       101 Hydrology and Water Resources
       102 Fluid Machinery
       102 Heat Transfer
       102 Manufacturing Processes
       102 Kinematics of Machinery
       105 Database Management Systems

   DEPT_ID COURSE_NAME
---------- ------------------------------
       105 Artificial Intelligence
       105 Formal Language and Automata
       105 Professional Skill Development
       118 3D Modelling
       118 3D Texturing
       118 3D Character Design
       118 Design Thinking
       119 Machine Learning
       119 Geotechnical Engineering I
       119 Environmental Engineering I
       119 Hydraulic Engineering

   DEPT_ID COURSE_NAME
---------- ------------------------------
       119 Transportation Engineering
       157 Machine Learning
       157 Computer Networks
       157 Artificial Intelligence


 --Display faculty Name along with department name they belong to.
 SELECT
        F.NAME,
        D.DEPT_NAME
    FROM FACULTY F
    JOIN DEPARTMENT D
    ON F.DEPT_ID = D.DEPT_ID;

NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Kunal Kumar
Civil Engineering

Akhilesh Kumar
Civil Engineering

Raushan Anand
Civil Engineering


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Pankaj Kumar
Civil Engineering

Nishikant Kumar
Civil Engineering

Rupesh Kumar
Civil Engineering


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Bablu Das
Mechanical Engineering

Firoz Akhtar
Mechanical Engineering

Rahul Ranjan Bharti
Mechanical Engineering


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Uttam Kumar
Mechanical Engineering

Ajay Giri
Mechanical Engineering

E. Haque
Computer Science and Engineering


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Md. Izhar
Computer Science and Engineering

Prity Kumari Choudhary
Computer Science and Engineering

Sujeet Kumar
Computer Science and Engineering


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Murlidhar Prasad Singh
Computer Science and Engineering

Hare Krishna Mishra
Electrical and Electronics Engineering

Bhavesh Nandan
Electrical and Electronics Engineering


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Abhimanyu Mandal
Electrical and Electronics Engineering

Mitesh Kumar
Electrical and Electronics Engineering

Manisha Kumari Singh
3D Animation and Graphics


NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------
Abhishek Kumar
3D Animation and Graphics

N. Kumar
Civil Engineering with Computer Application

Praveen Kumar
Computer Science and Engineering (AIML)


 --Part E: JOIN with Filtering and Sorting
 --Display student Name and CourseName for students belonging to Department
 --'D101'.
 SELECT
        S.NAME,
        C.COURSE_NAME
    FROM STUDENT S
    JOIN ENROLLMENT E
    ON S.STUDENT_ID = E.STUDENT_ID
    JOIN COURSE C
    ON E.COURSE_ID = C.COURSE_ID
    ORDER BY S.NAME ASC;

NAME
--------------------------------------------------
COURSE_NAME
------------------------------
Shrishty Priya
Artificial Intelligence

Shrishty Priya
Formal Language and Automata

Shrishty Priya
Database Management Systems


 --Display faculty Name and CourseName sorted by course credits in descending
 --order.
 SELECT
        F.NAME,
        C.COURSE_NAME,
        C.CREDITS
    FROM FACULTY F
    JOIN COURSE C
    ON F.FACULTY_ID = C.FACULTY_ID
    ORDER BY C.CREDITS DESC;

NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Rupesh Kumar
Geotechnical Engineering I              4

Praveen Kumar
Artificial Intelligence                 4

Rahul Ranjan Bharti
Hydraulic Engineering                   4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Rahul Ranjan Bharti
Environmental Engineering I             4

Firoz Akhtar
Mechanics of Materials                  4

Firoz Akhtar
Hydrology and Water Resources           4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Kunal Kumar
Fluid Machinery                         4

Nishikant Kumar
Heat Transfer                           4

Akhilesh Kumar
Manufacturing Processes                 4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Raushan Anand
Kinematics of Machinery                 4

E. Haque
Artificial Intelligence                 4

Md. Izhar
Database Management Systems             4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Praveen Kumar
Formal Language and Automata            4

Bablu Das
Transportation Engineering              4

Praveen Kumar
Computer Networks                       4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Manisha Kumari Singh
3D Modelling                            4

Manisha Kumari Singh
3D Texturing                            4

Manisha Kumari Singh
3D Character Design                     4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
N. Kumar
Machine Learning                        4

Rupesh Kumar
Geotechnical Engineering I              4

Bablu Das
Transportation Engineering              4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Rahul Ranjan Bharti
Hydraulic Engineering                   4

Rahul Ranjan Bharti
Environmental Engineering I             4

Praveen Kumar
Machine Learning                        4


NAME
--------------------------------------------------
COURSE_NAME                       CREDITS
------------------------------ ----------
Abhishek Kumar
Design Thinking                         3

Prity Kumari Choudhary
Professional Skill Development          2

 --Part F: Analytical JOIN Queries
 --Display number of students enrolled in each course.
 SELECT
        C.COURSE_NAME,
        COUNT(E.STUDENT_ID) AS TOTAL_STUDENTS
    FROM COURSE C
    JOIN ENROLLMENT E
    ON C.COURSE_ID = E.COURSE_ID
    GROUP BY C.COURSE_NAME;

COURSE_NAME                    TOTAL_STUDENTS
------------------------------ --------------
Artificial Intelligence                     1
Database Management Systems                 1
Formal Language and Automata                1

 --Display number of courses taught by each faculty member.
 SELECT
        F.NAME,
        COUNT(C.COURSE_ID) AS TOTAL_COURSES
    FROM FACULTY F
    JOIN COURSE C
    ON F.FACULTY_ID = C.FACULTY_ID
    GROUP BY F.NAME;

NAME                                               TOTAL_COURSES
-------------------------------------------------- -------------
Rupesh Kumar                                                   2
Bablu Das                                                      2
Rahul Ranjan Bharti                                            4
Firoz Akhtar                                                   2
Kunal Kumar                                                    1
Nishikant Kumar                                                1
Akhilesh Kumar                                                 1
Raushan Anand                                                  1
E. Haque                                                       1
Md. Izhar                                                      1
Praveen Kumar                                                  4

NAME                                               TOTAL_COURSES
-------------------------------------------------- -------------
Prity Kumari Choudhary                                         1
Manisha Kumari Singh                                           3
Abhishek Kumar                                                 1
N. Kumar                                                       1

 --Display department-wise count of students.
 SELECT
        D.DEPT_NAME,
        COUNT(S.STUDENT_ID) AS TOTAL_STUDENTS
    FROM DEPARTMENT D
    JOIN STUDENT S
    ON D.DEPT_ID = S.DEPT_ID
    GROUP BY D.DEPT_NAME;

DEPT_NAME                                          TOTAL_STUDENTS
-------------------------------------------------- --------------
Mechanical Engineering                                          1
Computer Science and Engineering                                1
Electrical and Electronics Engineering                          1
3D Animation and Graphics                                       1
Civil Engineering with Computer Application                     1
Computer Science and Engineering (AIML)                         1


 --Display course name along with maximum grade awarded in that course.
 SELECT
        C.COURSE_NAME,
        MAX(E.GRADE) AS MAX_GRADE
    FROM COURSE C
    JOIN ENROLLMENT E
    ON C.COURSE_ID = E.COURSE_ID
    GROUP BY C.COURSE_NAME;

COURSE_NAME                    MA
------------------------------ --
Artificial Intelligence        A
Database Management Systems    A-
Formal Language and Automata   B+

