

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


/*
[
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "visual basic"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "oracle"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "cognos"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "alteryx"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "sql"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "visual basic"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "oracle"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "cognos"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "alteryx"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "sql"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "python"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "visual basic"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "sql server"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "oracle"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "hadoop"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "excel"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "tableau"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "python"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "nosql"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "r"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "matlab"
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "salary_year_avg": "73100.0",
    "company_name": "Knoxville Utilities Board",
    "skills": "sql"
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "salary_year_avg": "73100.0",
    "company_name": "Knoxville Utilities Board",
    "skills": "python"
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "salary_year_avg": "73100.0",
    "company_name": "Knoxville Utilities Board",
    "skills": "power bi"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "sql"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "python"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "excel"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "tableau"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "looker"
  },
  {
    "job_id": 1795958,
    "job_title": "Data analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Montefiore Medical Center",
    "skills": "excel"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "sql"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "python"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "r"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "tableau"
  }
]
*/