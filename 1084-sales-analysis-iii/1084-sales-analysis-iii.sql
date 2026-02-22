# Write your MySQL query statement below
select p.product_id "product_id",p.product_name "product_name"
from product p natural join sales s group by  p.product_id,p.product_name
having
MIN(s.sale_date)>="2019-01-01" and MAX(s.sale_date)<="2019-03-31";

