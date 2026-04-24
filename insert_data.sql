
INSERT INTO Department VALUES 
(1, 'CSE'),
(2, 'ECE'),
(3, 'MECH'),
(4, 'IT');
INSERT INTO Student VALUES 
(1, 'Aashima', 'aashima@gmail.com', '9000000001', 1, 8.9),
(2, 'Varnit', 'varnit@gmail.com', '9000000002', 1, 8.5),
(3, 'Rahul', 'rahul@gmail.com', '9000000003', 2, 7.2),
(4, 'Priya', 'priya@gmail.com', '9000000004', 3, 6.8),
(5, 'Arjun', 'arjun@gmail.com', '9000000005', 1, 9.1),
(6, 'Sneha', 'sneha@gmail.com', '9000000006', 2, 5.5),
(7, 'Karan', 'karan@gmail.com', '9000000007', 1, 7.8),
(8, 'Megha', 'megha@gmail.com', '9000000008', 4, 8.2),
(9, 'Rohit', 'rohit@gmail.com', '9000000009', 2, 6.5),
(10, 'Simran', 'simran@gmail.com', '9000000010', 3, 7.0),
(11, 'Ankit', 'ankit@gmail.com', '9000000011', 4, 8.7),
(12, 'Neha', 'neha@gmail.com', '9000000012', 1, 9.3),
(13, 'Aman', 'aman@gmail.com', '9000000013', 2, 6.9),
(14, 'Pooja', 'pooja@gmail.com', '9000000014', 3, 7.5),
(15, 'Yash', 'yash@gmail.com', '9000000015', 4, 8.0);


INSERT INTO Company VALUES 
(1, 'Google', 'Bangalore'),
(2, 'Microsoft', 'Hyderabad'),
(3, 'Amazon', 'Chennai'),
(4, 'Infosys', 'Pune'),
(5, 'TCS', 'Mumbai'),
(6, 'Wipro', 'Delhi');


INSERT INTO Internship VALUES 
(1, 'Software Intern', 50000, 1),
(2, 'Data Analyst Intern', 40000, 2),
(3, 'Cloud Intern', 45000, 3),
(4, 'Testing Intern', 20000, 4),
(5, 'Backend Intern', 35000, 5),
(6, 'Frontend Intern', 30000, 6),
(7, 'AI Intern', 60000, 1),
(8, 'Cybersecurity Intern', 55000, 2);


INSERT INTO Application VALUES 
(1, 1, 1, 'Selected'),
(2, 2, 2, 'Pending'),
(3, 3, 3, 'Rejected'),
(4, 4, 4, 'Selected'),
(5, 5, 5, 'Pending'),
(6, 6, 1, 'Pending'),
(7, 7, 2, 'Selected'),
(8, 8, 3, 'Selected'),
(9, 9, 4, 'Rejected'),
(10, 10, 5, 'Pending'),
(11, 11, 6, 'Selected'),
(12, 12, 7, 'Selected'),
(13, 13, 8, 'Pending'),
(14, 14, 1, 'Selected'),
(15, 15, 2, 'Pending');


INSERT INTO Mentor VALUES 
(1, 'Rahul Sharma', 1),
(2, 'Anita Verma', 2),
(3, 'Karan Mehta', 3),
(4, 'Riya Kapoor', 4),
(5, 'Amit Singh', 5),
(6, 'Neeraj Kumar', 6);


INSERT INTO InternshipRecord VALUES 
(1, 1, 1, 6, 'Completed'),
(2, 4, 2, 4, 'Ongoing'),
(3, 7, 3, 6, 'Completed'),
(4, 8, 4, 3, 'Ongoing'),
(5, 11, 5, 6, 'Completed'),
(6, 12, 6, 6, 'Completed'),
(7, 14, 1, 5, 'Completed'),
(8, 2, 2, 2, 'Ongoing'),
(9, 5, 3, 4, 'Ongoing'),
(10, 10, 4, 3, 'Completed');


INSERT INTO Feedback VALUES 
(1, 1, 5, 'Excellent performance'),
(2, 2, 4, 'Good work'),
(3, 3, 5, 'Outstanding'),
(4, 4, 3, 'Needs improvement'),
(5, 5, 4, 'Very good'),
(6, 6, 5, 'Excellent'),
(7, 7, 4, 'Nice job'),
(8, 8, 3, 'Average'),
(9, 9, 4, 'Good effort'),
(10, 10, 5, 'Top performer');