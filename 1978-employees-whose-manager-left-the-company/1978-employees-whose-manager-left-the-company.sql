# Write your MySQL query statement below
select employee_id from employees where salary<30000 and employee_id not in
(select e.employee_id from employees e,employees m where e.salary<30000
and e.manager_id=m.employee_id or e.manager_id is null) order by employee_id;