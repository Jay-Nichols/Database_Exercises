USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (	
	SELECT hire_date
	FROM employees
	WHERE emp_no = '101010'
	);

SELECT title 
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod');

SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'F'
AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
);


SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_emp
	WHERE emp_no IN(
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
		AND emp_no IN (
			SELECT emp_no
			FROM dept_manager
)));


SELECT AVG(salaries.salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE gender = 'F'
); 


SELECT AVG(salaries.salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE gender = 'M'
);


SELECT AVG(salaries.salary)
FROM salaries
WHERE to_date = '9999-01-01' 
AND emp_no IN (
	SELECT emp_no 
	FROM employees
	WHERE gender = 'F'
);

SELECT AVG(salaries.salary)
FROM salaries
WHERE to_date = '9999-01-01' 
AND emp_no IN (
	SELECT emp_no 
	FROM employees
	WHERE gender = 'M'
);


SELECT AVG(salaries.salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
	FROM employees 
	WHERE gender = 'F'
	AND emp_no IN (
		SELECT emp_no 
		FROM dept_manager
));

SELECT AVG(salaries.salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
	FROM employees 
	WHERE gender = 'M'
	AND emp_no IN (
		SELECT emp_no 
		FROM dept_manager
));

SELECT AVG(salaries.salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
	FROM employees 
	WHERE gender = 'F'
	AND emp_no IN (
		SELECT emp_no 
		FROM dept_manager
		WHERE to_date = '9999-01-01'
));

SELECT AVG(salaries.salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
	FROM employees 
	WHERE gender = 'M'
	AND emp_no IN (
		SELECT emp_no 
		FROM dept_manager
		WHERE to_date = '9999-01-01'
));



 




