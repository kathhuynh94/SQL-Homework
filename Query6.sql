# List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT
d.dept_name,
e.emp_no,
e.first_name,
e.last_name


FROM public.employees AS e
LEFT JOIN public.salaries AS s ON s.emp_no = e.emp_no
LEFT JOIN public.titles AS t ON t.emp_no = e.emp_no
LEFT JOIN public.dept_emp AS de ON de.emp_no = e.emp_no
LEFT JOIN public.dept_manager AS dm ON dm.emp_no = e.emp_no
LEFT JOIN public.departments AS d ON (dm.dept_no = d.dept_no OR de.dept_no = d.dept_no)

WHERE dept_name = 'Sales'