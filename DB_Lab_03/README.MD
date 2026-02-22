College Database Management System – Data Collection & Data Insertion (DB Lab–3)
 Project Overview

This project demonstrates real-world data collection and SQL data insertion into a relational database system.

The database schema was designed in Lab–2 (ER Diagram & Table Creation) and is now populated with authentic institutional data.

All data corresponds to B.P. Mandal College of Engineering, Madhepura, Bihar, as per assignment guidelines 

DB-Lab-3

 Institution Reference

Institution: B.P. Mandal College of Engineering

Location: Madhepura, Bihar

Database System Used: Oracle SQL / SQL Plus

Project Type: Academic Database Lab Assignment

 Objective

To understand:

Practical data collection from authentic sources

Data normalization and relational integrity

Writing structured INSERT INTO SQL queries

Maintaining primary and foreign key constraints

Verifying data insertion using SELECT queries

(As specified in the official assignment instructions) 

DB-Lab-3

 Database Schema

The following relational tables are included:

1. Department

Department_ID (Primary Key)

Department_Name

Office_Block

2. Faculty

Faculty_ID (Primary Key)

Faculty_Name

Designation

Official_Email

Department_ID (Foreign Key)

3. Course

Course_ID (Primary Key)

Course_Name

Credits

Department_ID (Foreign Key)

Faculty_ID (Foreign Key)

4. Student

Student_ID (Primary Key)

Student_Name

Date_of_Birth

Gender

Contact_Number (Dummy format used as instructed)

Department_ID (Foreign Key)

5. Enrollment

Student_ID (Foreign Key)

Course_ID (Foreign Key)

Semester

Grade

 Data Collection Methodology

Data was collected strictly from authentic institutional sources:

Official college website

Department webpages

Academic timetable

Academic notices / syllabus 

DB-Lab-3

 Tasks Performed
 Part A – Data Insertion

SQL INSERT INTO statements written for all tables

Minimum 10 records inserted in:

Student

Course

Enrollment

No primary key duplication

Foreign key relationships maintained

 Part B – Verification

Executed:

SELECT * FROM table_name;

Screenshots of successful insertion included

 Repository Structure
College-Database-DBLab3/
│
├── insert_queries.sql
├── screenshots/
│   ├── department_output.png
│   ├── faculty_output.png
│   ├── student_output.png
│   └── enrollment_output.png
└── README.md
 How to Execute

Open Oracle SQL Plus

Connect to your database

Run:

@insert_queries.sql

Verify using:

SELECT * FROM table_name;
 Key Learning Outcomes

Real-world data modeling

SQL data insertion practices

Relational database integrity

Handling primary & foreign keys

Database verification techniques

 Submitted By

Name: PUSHPAM
Course: Database Management System Lab
Institution: B.P. Mandal College of Engineering
Semester: 5th