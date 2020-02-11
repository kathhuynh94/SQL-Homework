#List the manager of each department with the following information: department number, department name, the manager's 
# employee number, last name, first name, and start and end employment dates.

SELECT
d.dept_no,
d.dept_name,
e.emp_no,
de.to_date,
e.first_name,
e.last_name,
e.hire_date

FROM public.employees AS e
LEFT JOIN public.salaries AS s ON s.emp_no = e.emp_no
LEFT JOIN public.titles AS t ON t.emp_no = e.emp_no
LEFT JOIN public.dept_emp AS de ON de.emp_no = e.emp_no
LEFT JOIN public.dept_manager AS dm ON dm.emp_no = e.emp_no
LEFT JOIN public.departments AS d ON (dm.dept_no = d.dept_no OR de.dept_no = d.dept_no)