/* What are the top skills based on salary?

*/


SELECT 
    skills,
    round(avg(salary_year_avg),0) as avg_salary
from job_postings_fact j
inner join skills_job_dim on j.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where
    job_title_short = 'Data Analyst' 
    and salary_year_avg is not null
    AND job_location = 'New York'
group by 
    skills
order by 
    avg_salary desc
LIMIT 25;