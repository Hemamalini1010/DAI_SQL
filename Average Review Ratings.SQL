SELECT Date_part('month',submit_date) as mnth , product_id, Round(AVG(stars),2) as avg_strs  FROM reviews
group by product_id, Date_part('month',submit_date)
order by Date_part('month',submit_date)  , product_id