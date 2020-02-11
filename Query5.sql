# List all employees whose first name is "Hercules" and last names begin with "B."

SELECT
d.dept_no,
d.dept_name,
e.emp_no,
de.from_date,
de.to_date,
e.birth_date,
e.first_name,
e.last_name,
e.gender,
e.hire_date,
t.title,
s.salary

FROM public.employees AS e
LEFT JOIN public.salaries AS s ON s.emp_no = e.emp_no
LEFT JOIN public.titles AS t ON t.emp_no = e.emp_no
LEFT JOIN public.dept_emp AS de ON de.emp_no = e.emp_no
LEFT JOIN public.dept_manager AS dm ON dm.emp_no = e.emp_no
LEFT JOIN public.departments AS d ON (dm.dept_no = d.dept_no OR de.dept_no = d.dept_no)

WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%'