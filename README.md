# 🎓 Internship Management System — DBMS Project

## 📍 VIT Chennai — Database Management Systems

This project is a **relational database system** developed to manage internship processes including student applications, company listings, internship tracking, and performance evaluation.

---

## 📌 Features

* Student registration and department management
* Company and internship listings
* Internship application system
* Selection and rejection tracking
* Internship progress monitoring
* Mentor assignment and feedback system

---

## 🧱 Database Design

The database is designed using **Third Normal Form (3NF)** to ensure:

* No redundancy
* Data consistency
* Efficient storage

### 📊 Tables Used

* Department
* Student
* Company
* Internship
* Application
* Mentor
* InternshipRecord
* Feedback

---

## 🔗 Relationships

* Student → Application (1:M)
* Company → Internship (1:M)
* Internship → Application (1:M)
* Student → InternshipRecord (1:1)
* Mentor → InternshipRecord (1:M)

---

## ⚙️ Technologies Used

* MySQL
* SQL (DDL, DML, Joins, Subqueries)
* MySQL Workbench

---

## 📊 Key Queries Implemented

* Selected students with company details
* Pending applications
* Top paying internships
* Number of students per department
* Average CGPA per department
* Internship with highest stipend
* Average feedback rating

---

## 🔥 Advanced Concepts Used

* Joins (Inner, Left Join)
* Aggregate Functions (COUNT, AVG, SUM)
* Group By & Having
* Subqueries
* Views
* Stored Procedures
* Triggers
* Indexes

---

## 📂 Project Structure

Internship-Management-System/
│
├── README.md
├── schema.sql
├── insert_data.sql
├── queries.sql
├── procedures.sql
├── triggers.sql
├── views.sql
├── indexes.sql
└── docs/
└── Project_Report.pdf

---

## 🚀 How to Run

1. Run `schema.sql`
2. Run `insert_data.sql`
3. Execute `queries.sql`
4. Run procedures, triggers, views, and indexes
5. Test using SELECT and CALL statements

---

## 🧪 Sample Commands

SELECT * FROM Student;

CALL GetSelectedStudents();

SELECT * FROM SelectedStudents;

---

## 👥 Team Members

* Aashima Singla — Database Design & Documentation
* Teammate — SQL Implementation & Testing

---

## 🎯 Conclusion

This project demonstrates a **complete DBMS solution** for managing internships with proper normalization, efficient queries, and automation using triggers and procedures.

---

⭐ DBMS Project — Internship Management System
