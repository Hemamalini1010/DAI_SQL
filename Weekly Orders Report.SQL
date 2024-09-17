select week, sum(quantity) as total_orders from orders_analysis 
WHERE 
    week >= '2023-01-01' 
    AND week < '2023-04-01'
group by week