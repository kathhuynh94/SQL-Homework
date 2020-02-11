# List employees who were hired in 1986.

SELECT * 
FROM employees
WHERE hire_date 
LIKE '1986%'
