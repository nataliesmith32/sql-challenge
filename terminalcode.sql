\COPY employee_data(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) from '/Users/nataliesmith/Desktop/sql-challenge-hw/sql-challenge/EmployeeSQL/employees.csv' DELIMITERS ',' CSV HEADER;

\COPY titles(title_id, title) from '/Users/nataliesmith/Desktop/sql-challenge-hw/sql-challenge/EmployeeSQL/titles.csv' DELIMITERS ',' CSV HEADER;

\COPY departments(dept_no, dept_name) from '/Users/nataliesmith/Desktop/sql-challenge-hw/sql-challenge/EmployeeSQL/departments.csv' DELIMITERS ',' CSV HEADER;

\COPY manager(dept_no, emp_no) from '/Users/nataliesmith/Desktop/sql-challenge-hw/sql-challenge/EmployeeSQL/manager.csv' DELIMITERS ',' CSV HEADER;

\COPY emp_to_dept(emp_no, dept_no) from '/Users/nataliesmith/Desktop/sql-challenge-hw/sql-challenge/EmployeeSQL/emp.csv' DELIMITERS ',' CSV HEADER;

\COPY salaries(emp_no, salary) from '/Users/nataliesmith/Desktop/sql-challenge-hw/sql-challenge/EmployeeSQL/salaries.csv' DELIMITERS ',' CSV HEADER;





