/* Question: What are the most in-demand skills for data analysts?
- join job postings to inner join table similar to query 2
- identify the top 5 in deamnd skills for a data analyst
- focus on all job postings
- Why? retrieves the top 5 skills withtthe highest demand in the market,
providing insights into the most valuable skills for job seekers.
*/

With top_paying_jobs AS (
select
    job_id,
    job_title,
    salary_year_avg,
    name as company_name
From
    job_postings_fact j
left join company_dim c on c.company_id = j.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'New York' AND
    salary_year_avg is not null
order BY  
    salary_year_avg DESC
limit 10
)

Select 
    top_paying_jobs.*,
    skills
from top_paying_jobs
inner join skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
order BY
    salary_year_avg desc




SELECT 
    skills,
    count(skills_job_dim.job_id) as demand_count
from job_postings_fact j
inner join skills_job_dim on j.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where
    job_title_short = 'Data Analyst' AND
    job_location = 'New York'
group by skills
order by 
    demand_count desc
LIMIT 5;



