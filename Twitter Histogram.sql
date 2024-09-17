WITH twt as 
(SELECT user_id, COUNT(tweet_id) over (partition by user_id) as tweet_ct  
FROM tweets 
WHERE EXTRACT(Year from tweet_date) = 2022)
SELECT  tweet_ct as tweet_bucket , count(user_id) as users_num 
FROM twt 
GROUP BY tweet_ct ;