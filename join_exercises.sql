USE employees;


SELECT 
d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date > now();


SELECT 
d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F';


SELECT
t.title AS 'Title', COUNT(e.emp_no) As 'Number of Employees with Title'
FROM departments AS d
JOIN dept_emp AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN titles AS t ON e.emp_no = t.emp_no
WHERE d.dept_name = 'Customer Service'
AND de.to_date > NOW()
AND t.to_date > NOW()
GROUP BY t.title;

SELECT 
d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
s.salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS m ON dm.emp_no = m.emp_no
WHERE t.to_date > NOW()
AND de.to_date > NOW()
AND dm.to_date > NOW();