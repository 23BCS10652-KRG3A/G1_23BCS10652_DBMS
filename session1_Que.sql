-- 23BCS10652, Khushi Khemka

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employee (emp_id, emp_name, department, salary) VALUES
(1, 'Amit', NULL, 50000),
(2, 'Riya', NULL, 60000),
(3, 'John', NULL, 45000),
(4, 'Sara', NULL, 75000),
(5, 'Mike', NULL, 60000),
(6, 'Neha', NULL, 90000);

CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, department, salary
FROM Employee;

CREATE ROLE Analyst;

GRANT SELECT ON Employee_View TO Analyst;

