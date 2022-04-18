select count(e.birth_date) as "Count", t.title as "Title" from employees e
INNER JOIN titles t on e.emp_no = t.emp_no
where e.birth_date > '19650101'
group by t.title;

select avg(s.salary) as "Average Salary", t.title as "Title" from salaries s 
INNER JOIN titles t on s.emp_no = t.emp_no
group by t.title;

select sum(s.salary) as "Total Salary Expenditure", s.from_date as "From Date", s.to_date as "To Date", d.dept_name as "Department Name" from departments d 
INNER JOIN dept_emp de on d.dept_no = de.dept_no 
INNER JOIN salaries s on de.emp_no = s.emp_no
WHERE d.dept_name = "Marketing" AND s.from_date > '19900101' AND s.to_date < '19921231';




