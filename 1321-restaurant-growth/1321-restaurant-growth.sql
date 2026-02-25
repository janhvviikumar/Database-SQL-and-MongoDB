# Write your MySQL query statement below
select visited_on,amt as amount,round(amt/7,2) as average_amount 
from (select distinct visited_on, sum(amount) over(order by visited_on 
range between interval '6' day preceding and current row) as amt,
dense_rank() over (order by visited_on) as days from customer)t where days>=7
 order by visited_on;
