/*
Question: What are the top paying data analyst jobs?
- Identify the top highest-paying data analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
- why? highlight the top-paying opportunities for data analysts, offering insights into employment
*/

select
    job_id
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
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