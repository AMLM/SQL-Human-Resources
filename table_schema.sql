drop table if exists titles cascade
create table titles(
		title_id varchar primary key,
		title varchar not null
);

create table departments(
		dept_no varchar primary key,
		dept_name varchar
);

create table employees(
		emp_no int primary key,
		emp_title_id varchar not null,
		birth_date varchar not null,
		first_name varchar not null,
		last_name varchar not null,
		sex varchar not null,
		hire_date varchar not null,
		foreign key (emp_title_id) references titles(title_id)
);

drop table if exists dept_emp cascade
create table dept_emp(
		emp_no int not null,
		dept_no varchar not null,
		foreign key (emp_no) references employees(emp_no),
		foreign key (dept_no) references departments(dept_no) 
);

create table dept_manager(
		dept_no varchar not null,
		emp_no int not null,
		foreign key (emp_no) references employees(emp_no),
		foreign key (dept_no) references departments(dept_no)
);
select * from dept_manager;

drop table if exists salaries cascade
create table salaries(
		emp_no int not null,
		salary int not null,
	foreign key (emp_no) references employees(emp_no)
);
 select * from titles;
