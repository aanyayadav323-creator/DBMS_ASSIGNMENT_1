 --Part A: Basic Aggregate Queries
--Display the total number of students in the Student table
 SELECT COUNT(*) AS TOTAL_STUDENTS
    FROM STUDENT;

TOTAL_STUDENTS
--------------
             6

 --Display the total number of faculty members in the Faculty table.
 SELECT COUNT(*) AS TOTAL_FACULTYS
    FROM FACULTY;

TOTAL_FACULTYS
--------------
            24
 --Display the total number of courses available in the Course table.
 SELECT COUNT(*) AS TOTAL_COURSES
    FROM COURSE;

TOTAL_COURSES
-------------
           26

 --Display the maximum credits among all courses
 SELECT MAX(CREDITS) AS MAX_CREDITS
   FROM COURSE;

MAX_CREDITS
-----------
          4

 --Display the minimum credits offered by any course.
 SELECT MIN(CREDITS) AS MIN_CREDITS
    FROM COURSE;

MIN_CREDITS
-----------
          2

--Part B: GROUP BY on Single Tables
--Display the number of students in each DepartmentID from the Student table
 SELECT DEPT_ID,COUNT(*) AS TOTAL_STUDENTS
    FROM STUDENT
    GROUP BY (DEPT_ID);

   DEPT_ID TOTAL_STUDENTS
---------- --------------
       102              1
       105              1
       110              1
       118              1
       119              1
       157              1

 --Display the number of faculty members in each DepartmentID from the Faculty table
 SELECT DEPT_ID,COUNT(*) AS TOTAL_FACULTYS
    FROM FACULTY
    GROUP BY (DEPT_ID);

   DEPT_ID TOTAL_FACULTYS
---------- --------------
       101              6
       102              5
       105              5
       110              4
       118              2
       119              1
       157              1


 --Display the number of courses offered by each DepartmentID from the Course table.
 SELECT COUNT(*) AS TOTAL_COURSES
    FROM COURSE
    GROUP BY (DEPT_ID);

TOTAL_COURSES
-------------
            6
            4
            4
            4
            5
            3


 --Display the number of enrollments in each Semester from the Enrollment table.
 SELECT SEMESTER ,COUNT(*) AS TOTAL_STUDENT
    FROM ENROLLMENT
    GROUP BY (SEMESTER);

SEMESTER   TOTAL_STUDENT
---------- -------------
5th                    3

 --Display the number of students for each Grade in the Enrollment table
 SELECT GRADE,COUNT(*) AS TOTAL_STUDENT
    FROM ENROLLMENT
    GROUP BY (GRADE);

GR TOTAL_STUDENT
-- -------------
A              1
A-             1
B+             1

 --Part C: GROUP BY with HAVING
 --Display departments having more than 3 students.
 SELECT DEPT_ID , COUNT(*) AS TOTAL_STUDENT
    FROM STUDENT
    GROUP BY (DEPT_ID)
    HAVING COUNT(*)>3;


 --Display semesters where more than 2 enrollments exist.
 SELECT SEMESTER , COUNT(*) AS TOTAL_STUDENT
    FROM ENROLLMENT
    GROUP BY (SEMESTER)
    HAVING COUNT(*)>2;

SEMESTER   TOTAL_STUDENT
---------- -------------
5th                    3

 --Display grades that are assigned to more than one student
 SELECT GRADE , COUNT(*) AS TOTAL_STUDENT
    FROM ENROLLMENT
    GROUP BY (GRADE)
    HAVING COUNT(*)>1;


 --Display DepartmentIDs where more than one course is offered.
 SELECT DEPT_ID,COUNT (*) AS TOTAL_COURSE
    FROM COURSE
    GROUP BY (DEPT_ID)
    HAVING COUNT(*)>1;

   DEPT_ID TOTAL_COURSE
---------- ------------
       101            6
       102            4
       105            4
       118            4
       119            5
       157            3


 --Part D: Aggregation with JOIN
 --Display the number of students enrolled in each CourseID
 SELECT COURSE_ID , COUNT(*) AS ENROLLED_STUDENT
    FROM ENROLLMENT
    GROUP BY COURSE_ID;

 COURSE_ID ENROLLED_STUDENT
---------- ----------------
    105501                1
    105502                1
    105503                1

 --Display CourseName and number of students enrolled in that course.
 SELECT C.COURSE_NAME , COUNT(E.STUDENT_ID) AS ENROLLED_STUDENT
    FROM COURSE C
    INNER JOIN ENROLLMENT E
    ON C.COURSE_ID = E.COURSE_ID
    GROUP BY C.COURSE_NAME;

COURSE_NAME                    ENROLLED_STUDENT
------------------------------ ----------------
Artificial Intelligence                       1
Database Management Systems                   1
Formal Language and Automata                  1

 --Display DepartmentID and number of students belonging to that department.
 SELECT DEPT_ID , COUNT(STUDENT_ID) AS ENROLLED_STUDENT
    FROM STUDENT
    GROUP BY DEPT_ID;

   DEPT_ID ENROLLED_STUDENT
---------- ----------------
       102                1
       105                1
       110                1
       118                1
       119                1
       157                1



 -- Display Faculty Name and number of courses taught by each faculty member.
 SELECT F.NAME , COUNT(C.COURSE_ID) AS TAUGHT
    FROM COURSE C
    JOIN FACULTY F
    ON F.FACULTY_ID = C.FACULTY_ID
    GROUP BY F.NAME;

NAME                                                   TAUGHT
-------------------------------------------------- ----------
Rupesh Kumar                                                2
Bablu Das                                                   2
Rahul Ranjan Bharti                                         4
Firoz Akhtar                                                2
Kunal Kumar                                                 1
Nishikant Kumar                                             1
Akhilesh Kumar                                              1
Raushan Anand                                               1
E. Haque                                                    1
Md. Izhar                                                   1
Praveen Kumar                                               4

NAME                                                   TAUGHT
-------------------------------------------------- ----------
Prity Kumari Choudhary                                      1
Manisha Kumari Singh                                        3
Abhishek Kumar                                              1
N. Kumar                                                    1



 --Part E: Analytical Queries
 -- Display CourseName and maximum grade obtained in that course
 SELECT C.COURSE_NAME , MAX(E.GRADE) AS MAX_GRADE
    FROM COURSE C
    JOIN ENROLLMENT E
    ON E.COURSE_ID = C.COURSE_ID
    GROUP BY C.COURSE_NAME;

COURSE_NAME                    MA
------------------------------ --
Artificial Intelligence        A
Database Management Systems    A-
Formal Language and Automata   B+

 SELECT
        C.COURSE_NAME,
        MAX(
            CASE E.GRADE
                WHEN 'A+' THEN 5
                WHEN 'A'  THEN 4
                WHEN 'B+' THEN 3
                WHEN 'B'  THEN 2
                WHEN 'C'  THEN 1
                  END
                   ) AS MAX_GRADE
   FROM COURSE C
   JOIN ENROLLMENT E
   ON C.COURSE_ID = E.COURSE_ID
   GROUP BY C.COURSE_NAME;

COURSE_NAME                     MAX_GRADE
------------------------------ ----------
Artificial Intelligence                 4
Database Management Systems
Formal Language and Automata            3 

 -- Display DepartmentID and total number of courses offered in that department.
 SELECT DEPT_ID , COUNT(COURSE_ID) AS OFFERED_COURSE
    FROM COURSE
    GROUP BY DEPT_ID;

   DEPT_ID OFFERED_COURSE
---------- --------------
       101              6
       102              4
       105              4
       118              4
       119              5
       157              3


 -- Display Semester and total number of students enrolled in that semester.
 SELECT SEMESTER , COUNT(STUDENT_ID) AS STUDENT_ENROLLED
    FROM ENROLLMENT
    GROUP BY SEMESTER;

SEMESTER   STUDENT_ENROLLED
---------- ----------------
5th                       3

 --Display courses that have more than 2 students enrolled
 SELECT C.COURSE_NAME , COUNT(E.STUDENT_ID) AS ENROLLED_STUDENT
    FROM COURSE C
    JOIN ENROLLMENT E
    ON C.COURSE_ID = E.COURSE_ID
    GROUP BY C.COURSE_NAME
    HAVING COUNT(E.STUDENT_ID)>2;



