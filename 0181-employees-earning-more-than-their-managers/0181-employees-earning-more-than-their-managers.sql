# Write your MySQL query statement below
select emp.name "Employee" from employee emp,employee mgr 
where mgr.salary<emp.salary and emp.managerid=mgr.id;