# Write your MySQL query statement below
select today.id from weather yesterday,weather today where
today.temperature>yesterday.temperature and datediff(today.recordDate,yesterday.recordDate)=1;