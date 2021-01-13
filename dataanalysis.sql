--Ability to view all tables
SELECT * FROM departments;
SELECT * FROM emp_to_dept;
SELECT * FROM employee_data;
SELECT * FROM manager;
SELECT * FROM salaries;
SELECT * FROM titles;

--"List the following details of each employee: employee number, last name, first name, sex, and salary"
SELECT employee_data.emp_no, employee_data.last_name, employee_data.first_name, employee_data.sex, salaries.salary
FROM employee_data JOIN salaries ON employee_data.emp_no = salaries.emp_no;

--"List first name, last name, and hire date for employees who were hired in 1986."
SELECT first_name, last_name, hire_date 
FROM employee_data WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--"List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name."
SELECT departments.dept_no, departments.dept_name, manager.emp_no, employee_data.last_name, employee_data.first_name 
FROM departments JOIN manager ON departments.dept_no = manager.dept_no
JOIN employee_data 
ON manager.emp_no = employee_data.emp_no;

--"List the department of each employee with the following information: employee number, last name, first name, and department name."
SELECT emp_to_dept.emp_no, employee_data.last_name, employee_data.first_name, departments.dept_name
FROM emp_to_dept JOIN employee_data ON emp_to_dept.emp_no = employee_data.emp_no
JOIN departments
ON emp_to_dept.dept_no = departments.dept_no;

--"List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employee_data
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--"List all employees in the Sales department, including their employee number, last name, first name, and department name."
SELECT emp_to_dept.emp_no, employee_data.last_name, employee_data.first_name, departments.dept_name
FROM emp_to_dept JOIN employee_data ON emp_to_dept.emp_no = employee_data.emp_no
JOIN departments ON emp_to_dept.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--"List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name."
SELECT emp_to_dept.emp_no, employee_data.last_name, employee_data.first_name, departments.dept_name
FROM emp_to_dept JOIN employee_data ON emp_to_dept.emp_no = employee_data.emp_no
JOIN departments ON emp_to_dept.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--"In descending order, list the frequency count of employee last names, i.e., how many employees share each last name."
SELECT last_name, COUNT(last_name) AS "frequency"
FROM employee_data GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

--BONUS

--""