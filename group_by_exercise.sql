USE employees;

SELECT DISTINCT title 
FROM titles; 

SELECT DISTINCT title 
FROM titles
ORDER BY title ASC; 

SELECT DISTINCT last_name
FROM employees 
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name; 

SELECT DISTINCT last_name, first_name
FROM employees 
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT last_name
FROM employees 
WHERE last_name LIKE '%q%' AND last_name LIKE '%qu%'
GROUP BY last_name; 