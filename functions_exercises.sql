USE employees;

SELECT COUNT (gender)
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY gender;


SELECT CONCAT(first_name, ' ' , last_name)
FROM employees 
WHERE last_name LIKE 'E%e';


SELECT first_name, last_name, DATEDIFF(CURDATE(), hire_date)
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25';


-- SELECT *
-- FROM employees
-- WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
-- ORDER BY first_name ASC;


-- SELECT *
-- FROM employees
-- WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
-- ORDER BY first_name ASC, last_name ASC;


-- SELECT *
-- FROM employees
-- WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
-- ORDER BY last_name ASC, first_name ASC;

-- SELECT *
-- FROM employees 
-- WHERE last_name LIKE '%e%'
-- ORDER BY emp_no;

-- SELECT *
-- FROM employees 
-- WHERE last_name LIKE '%e%' 
-- ORDER BY emp_no DESC;

-- SELECT *
-- FROM employees 
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
-- AND birth_date LIKE '%-12-25'
-- ORDER BY birth_date ASC, hire_date DESC;






-- SELECT *
-- FROM employees
-- WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

-- SELECT emp_no, first_name, last_name, hire_date
-- FROM employees 
-- WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- SELECT emp_no, first_name, last_name, hire_date
-- FROM employees 
-- WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- SELECT emp_no, first_name, last_name, hire_date
-- FROM employees 
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
-- AND birth_date LIKE '%-12-25';


-- SELECT *
-- FROM employees 
-- WHERE last_name LIKE '%e%'
-- ORDER BY emp_no;



-- SELECT emp_no, first_name, last_name, hire_date
-- FROM employees 
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';


-- SELECT emp_no, first_name, last_name, birth_date
-- FROM employees
-- WHERE birth_date LIKE '%-12-25';  


-- SELECT emp_no, first_name, last_name, hire_date
-- FROM employees 
-- WHERE last_name LIKE '%q%';