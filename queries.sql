--listing employees details: number, last name, first name, 
--sex, and salary.  Jjoining tables on the employees number.
Select employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
From employees
left join salaries
on employees.emp_no = salaries.emp_no
Order by emp_no

--List employees hires in 1986
Select first_name, last_name, hire_date, emp_no
from employees
where hire_date like '%1986'
order by emp_no;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no,
employees.last_name, employees.first_name
From dept_manager
Join departments on dept_manager.dept_no = departments.dept_no
Join employees on dept_manager.emp_no = employees.emp_no;

--List the department of each employee wit the following>
--emp_no, last and first name, department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join dept_emp on employees.emp_no =dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no;

--List first, last name and sex of employees whose first name
--is Hercules and work in the sales department

Select employees.last_name, employees.first_name, employees.sex
From employees
Where first_name = 'Hercules'and last_name Like '%B';

Select * from departments

--sales department is d007
--List first, last name and number of all employees in the sales department

Select employees.last_name, employees.first_name, employees.emp_no,
departments.dept_name
From employees
Join dept_emp on employees.emp_no = dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no
Where departments.dept_no ='d007';

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

select employees.last_name, employees.first_name, employees.emp_no,
departments.dept_name
From employees
Join dept_emp on employees.emp_no = dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no
Where departments.dept_no ='d007' or departments.dept_no ='d005';

--in descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select employees.last_name, count(last_name) as "Frecuency count"
from employees
Group by last_name
order by "Frecuency count" Desc;
