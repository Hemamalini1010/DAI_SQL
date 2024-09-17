 
with device as (SELECT
CASE WHEN device_type = 'laptop' THEN count(user_id) ELSE 0 END as laptop_views,
CASE WHEN device_type in ( 'tablet' , 'phone') THEN count(user_id)  ELSE 0 END as mobile_views 
FROM viewership group by device_type)

SELECT sum(laptop_views) as laptop_views , sum(mobile_views) as mobile_views 
FROM device;