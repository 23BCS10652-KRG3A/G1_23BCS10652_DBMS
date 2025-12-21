--23BCS10652
--Khushi Khemka
--WWC1
SELECT 
    d.deptname AS department_name,
    COUNT(e.empid) AS total_employees,
    (AVG(e.salary)::Numeric(20)) AS average_salary,
    
    CASE 
        WHEN COUNT(e.empid) = 0 THEN 'No Employees'
        WHEN AVG(e.salary) >= 60000 THEN 'High Avg'
        WHEN AVG(e.salary) BETWEEN 50000 AND 59999 THEN 'Medium Avg'
        ELSE 'Low Avg'
    END AS salary_category

FROM Departments d
LEFT JOIN Employees e 
    ON d.deptid = e.deptid

GROUP BY d.deptid, d.deptname
