# Write your MySQL query statement below
select distinct pe1.email from person pe1,person p2
where pe1.email=p2.email and pe1.id!=p2.id;