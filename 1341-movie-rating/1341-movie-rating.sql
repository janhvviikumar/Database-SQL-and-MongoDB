# Write your MySQL query statement below
(select u.name as results from users u,movierating r
where u.user_id=r.user_id group by u.user_id order by count(r.movie_id) desc,u.name asc limit 1)
union all
(select m.title as results from movies m,movierating r where m.movie_id=r.movie_id
and r.created_at between "2020-02-01" and "2020-02-29" group by r.movie_id order by 
avg(r.rating) desc,m.title asc limit 1); 
