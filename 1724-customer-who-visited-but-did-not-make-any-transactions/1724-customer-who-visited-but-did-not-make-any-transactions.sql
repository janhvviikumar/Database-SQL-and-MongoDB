# Write your MySQL query statement below  "count_no_trans"
select v.customer_id,count(v.customer_id) "count_no_trans" from visits v 
where v.visit_id not in(select v.visit_id from transactions t,visits v
where v.visit_id =t.visit_id
) group by v.customer_id;
