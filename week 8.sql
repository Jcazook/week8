select count(employees.birth_date), titles.title From titiles
inner join employees on titles.emp_no = employees.emp_no
group by titles.title having count(employees.birth_date) > "1965-01-01";

select avg(salaries.salary), titles.title from titles
inner join salaries on titles.emp_no = salaries.emp_no
group by titles.title;

select sum(salaries.salary) as "Sum of salary", dept_emp_no as "Department Number" from salaries
inner join dept_emp on dept_emp.emo_no = salaries.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where dept_name = "Marketing" and salaries.from_date > "1990-01-01" and salaries.to_date < "1992-01-01"
group by departments.dept_name;