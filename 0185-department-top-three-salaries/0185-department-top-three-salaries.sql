# Write your MySQL query statement below
select t.department,
       t.employee,
       t.salary from (select d.name "department",e.name "employee",e.salary "salary",
dense_rank() over(partition by d.name order by e.salary desc) as rnk 
FROM employee AS e
    inner JOIN department AS d on e.departmentId=d.id)t where rnk<4;