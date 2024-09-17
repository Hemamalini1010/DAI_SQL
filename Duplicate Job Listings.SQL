with com as 
(SELECT  company_id ,title, description, count(*) FROM job_listings group by company_id ,title, description  having  count(*) > 1 order by company_id)

SELECT count(*) as duplicate_companies from com

