# Write your MySQL query statement below
select r.contest_id,round(count(distinct u.user_id)*100/(select count(u.user_id) from users u),2) "percentage" from users u,register r
where u.user_id=r.user_id
group by r.contest_id
order by percentage desc,contest_id; 