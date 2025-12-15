--23BCS10652
--KHUSHI KHEMKA
-- DCPD_WWC1
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);


CREATE TABLE Enrollments (
    student_id INT,
    course_id INT
);


INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eva');


INSERT INTO Enrollments (student_id, course_id) VALUES
(1, 101),
(2, 102),
(3, 103);  

SELECT s.student_id, s.student_name
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);
