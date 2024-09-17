
  SELECT user_id, (MAX(DATE(post_date))  -  MIN(DATE(post_date))) as days_between
  FROM posts
  where DATE_PART('year', post_date) = 2021  group by user_id 
  Having Count(user_id) >1
