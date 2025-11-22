# Write your MySQL query state
select max(num) num from mynumbers n where
num in (select num from mynumbers group by num having count(*)=1);