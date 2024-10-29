CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    Name VARCHAR(50),
    LecturerName VARCHAR(50)
);


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);





INSERT INTO Courses (CourseID, Name, LecturerName)
VALUES 
(1, 'Web Development', 'M.M. Herath'),
(2, 'Graphic Design', 'J.S.V. Piyasena'),
(3, 'Mobile App Development', 'K.K.S. Dias'),
(4, 'Java', 'U.H.S. Perera');


INSERT INTO Students (StudentID, Name, City, CourseID)
VALUES
(1, 'Kasun Gamage', 'Kandy', 2),
(2, 'Daniel Sam', 'Jaffna', 3),
(3, 'Hansi Silva', 'Colombo', 1),
(4, 'Ranidu Heath', 'Matara', 3),
(5, 'Praneeth Wijesinghe', 'Kandy', 4),
(6, 'Nuwani Herath', 'Rathnapura', 1);








SELECT * FROM Students;


SELECT StudentID, Name, City 
FROM Students
WHERE City = 'Kandy';


UPDATE Students
SET City = 'Galle'
WHERE StudentID = 4;


SELECT Students.StudentID, Students.Name, Students.City, Courses.Name AS CourseName
FROM Students
JOIN Courses ON Students.CourseID = Courses.CourseID;

