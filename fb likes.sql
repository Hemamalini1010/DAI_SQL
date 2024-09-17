soln1 :

SELECT page_id FROM pages where page_id not in (select page_id from page_likes);

Soln2 :
SELECT a.page_id , count(b.liked_date) FROM pages a left join page_likes B 
ON a.page_id = b.page_id 
GROUP BY  a.page_id 
Having count(b.liked_date) <1