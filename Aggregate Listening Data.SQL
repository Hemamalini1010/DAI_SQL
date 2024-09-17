SELECT user_id , count(distinct song_id) as songcount , ROUND(sum(listen_duration)/60) as listen_duration 
from listening_habits 
GROUP BY user_id