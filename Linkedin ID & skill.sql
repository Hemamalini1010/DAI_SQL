SELECT candidate_id  FROM candidates 
WHERE skill in ('Python' , 'Tableau' , 'PostgreSQL') 
group by candidate_id having count(candidate_id) = 3
order by candidate_id ;