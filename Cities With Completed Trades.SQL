SELECT b.city as city , count(a.order_id)  as total_orders FROM 
trades a inner join users b 
on a.user_id = b.user_id 
where a.status = 'Completed' 
group by b.city order by count(a.order_id)  desc limit 3;