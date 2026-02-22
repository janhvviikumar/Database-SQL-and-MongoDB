# Write your MySQL query statement below
select t.department,t.employee,t.salary from (select d.name "department",e.name "employee",e.salary "salary",
max(e.salary) over(partition by e.departmentId) as max_sal from
employee e inner join department d on e.departmentId=d.id)t where t.salary=max_Sal;