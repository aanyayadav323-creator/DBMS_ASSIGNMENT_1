## Q.01

 SELECT Name
    FROM Student
    WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Student
    WHERE Student_ID = 'S401'
    );


## Q.02

 SELECT Name
    FROM Student
    WHERE Gender = (
        SELECT Gender
        FROM Student
        WHERE Student_ID = 'S402'
    );



## Q.03

 SELECT Name
    FROM Student
    WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Student
    WHERE Student_ID = 'S403'
    );



## Q.04

 SELECT Name
    FROM Student
    WHERE Dept_ID IN (
    SELECT Dept_ID
    FROM Student
    WHERE Gender = 'Female'
    );



## Q.05

 SELECT *
    FROM Student
    WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
    );



## Q.06

 SELECT Name
    FROM Student S
    WHERE EXISTS (
        SELECT 1
        FROM Enrollment E
        WHERE S.Student_ID = E.Student_ID
    );



## Q.07

 SELECT Course_Name
    FROM Course
    WHERE Credits > (
        SELECT AVG(Credits)
        FROM Course
    );



## Q.08

 SELECT *
    FROM Student
    WHERE TO_NUMBER(SUBSTR(Student_ID,2)) >(
    SELECT AVG(TO_NUMBER(SUBSTR(Student_ID,2)))
    FROM Student
    );



## Q.09

 SELECT Dept_ID
    FROM Student
    GROUP BY Dept_ID
    HAVING COUNT(*) > (
        SELECT AVG(COUNT(*))
        FROM Student
        GROUP BY Dept_ID
    );

## Q.10

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);


## Q.11

  SELECT *
    FROM Student
    WHERE Dept_ID IN (
    SELECT Dept_ID
    FROM Department
    );



## Q.12

 SELECT Course_Name
    FROM Course
    WHERE Course_ID IN (
    SELECT Course_ID
    FROM Enrollment
    );



## Q.13

 SELECT Course_Name
    FROM Course
    WHERE Credits = (
         SELECT MAX(Credits)
         FROM Course
    );



## Q.14

 SELECT Student_ID
    FROM Enrollment
    GROUP BY Student_ID
    HAVING COUNT(Course_ID) > 1;


## Q.15

 SELECT Dept_ID
    FROM Student
    GROUP BY Dept_ID
    HAVING COUNT(*) = (
    SELECT MAX(COUNT(*))
    FROM Student
    GROUP BY Dept_ID
    );


## Q.16

 SELECT Name
    FROM Student
       WHERE Student_ID IN (
       SELECT Student_ID
       FROM Enrollment
       WHERE Course_ID IN (
           SELECT Course_ID
           FROM Enrollment
           WHERE Student_ID = 'S401'
      )
   )
   AND Student_ID <> 'S401';


## Q.17

 SELECT Name
    FROM Student
    WHERE Student_ID NOT IN (
        SELECT Student_ID
        FROM Enrollment
    );


## Q.18

 SELECT Course_Name
    FROM Course
    WHERE Course_ID NOT IN (
        SELECT Course_ID
        FROM Enrollment
    );



