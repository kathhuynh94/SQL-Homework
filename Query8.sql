# In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT
e.last_name,
COUNT(e.last_name)

FROM public.employees AS e
LEFT JOIN public.salaries AS s ON s.emp_no = e.emp_no
LEFT JOIN public.titles AS t ON t.emp_no = e.emp_no
LEFT JOIN public.dept_emp AS de ON de.emp_no = e.emp_no
LEFT JOIN public.dept_manager AS dm ON dm.emp_no = e.emp_no
LEFT JOIN public.departments AS d ON (dm.dept_no = d.dept_no OR de.dept_no = d.dept_no)

GROUP BY last_name
ORDER BY COUNT DESC