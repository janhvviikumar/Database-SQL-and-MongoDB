# Write your MySQL query statement below

select name "Customers"
from customers cust where not exists 
(select 1 from orders o where o.customerid=cust.id);