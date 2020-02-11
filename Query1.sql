# List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM public.employees AS e
INNER JOIN public.salaries as s ON s.emp_no = e.emp_no