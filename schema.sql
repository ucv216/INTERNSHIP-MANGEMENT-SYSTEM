CREATE DATABASE internship_db;
USE internship_db;

CREATE TABLE Department (
    DeptID INT AUTO_INCREMENT PRIMARY KEY,
    DeptName VARCHAR(100)
);

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    DeptID INT,
    CGPA DECIMAL(3,2),
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Company (
    CompanyID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Internship (
    InternshipID INT AUTO_INCREMENT PRIMARY KEY,
    Role VARCHAR(100),
    Stipend INT,
    CompanyID INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

CREATE TABLE Application (
    AppID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    InternshipID INT,
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (InternshipID) REFERENCES Internship(InternshipID)
);

CREATE TABLE Mentor (
    MentorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    CompanyID INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

CREATE TABLE InternshipRecord (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    MentorID INT,
    Duration INT,
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (MentorID) REFERENCES Mentor(MentorID)
);

CREATE TABLE Feedback (
    FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    RecordID INT,
    Rating INT,
    Comments TEXT,
    FOREIGN KEY (RecordID) REFERENCES InternshipRecord(RecordID)
);