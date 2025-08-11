-- Create table Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50)
);

-- Insert sample data into Students
INSERT INTO Students (StudentID, Name, Age, Course) VALUES
(1, 'Alice', 20, 'Computer Science'),
(2, 'Bob', 22, 'Mechanical Engineering'),
(3, 'Charlie', 19, 'Electrical Engineering'),
(4, 'Diana', 21, 'Civil Engineering');

-- Query 1: Select all students older than 20
SELECT * FROM Students WHERE Age > 20;

-- Query 2: Count how many students are in each course
SELECT Course, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY Course;

-- Create a simple view showing student names and courses
CREATE VIEW StudentCourseView AS
SELECT Name, Course
FROM Students;

-- Query the view
SELECT * FROM StudentCourseView;

-- Create a stored procedure to get students by course
DELIMITER //
CREATE PROCEDURE GetStudentsByCourse(IN courseName VARCHAR(50))
BEGIN
    SELECT * FROM Students WHERE Course = courseName;
END //
DELIMITER ;

-- To call the stored procedure:
-- CALL GetStudentsByCourse('Computer Science');
