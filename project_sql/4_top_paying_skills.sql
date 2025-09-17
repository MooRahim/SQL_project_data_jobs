/*
Question: What are the top skills based on salary for Data Analyst roles?
- Use the average salary to find the top paying skills for Data Analyst roles.
- Identify the top 5 skills for these roles.
- Why? Provide insights into the skills that are in top paying data analyst positions, 
    helping job seekers and professionals align their skillsets with market needs.
*/

SELECT
    sd.skills,
    ROUND(AVG(jpf.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact jpf 
inner join skills_job_dim sjd on jpf.job_id = sjd.job_id
inner join skills_dim sd on sjd.skill_id = sd.skill_id
WHERE 
    jpf.job_title_short = 'Data Analyst' AND
    jpf.salary_year_avg IS NOT NULL
GROUP BY
    sd.skills
ORDER BY
    avg_salary DESC
LIMIT 25;

/* 
Insights:
1. Extreme Outlier – SVN
    - Highest salary listed: $400,000.
    - This is far above market norms → likely a data outlier or a niche executive-level listing. Should be treated cautiously.

2. Specialized/Niche Tools Dominate Top Salaries
    - After SVN, the highest-paying skills are Solidity ($179k), Couchbase ($160k), DataRobot ($155k), Golang ($155k).
    - These are emerging technologies (blockchain, AI automation, NoSQL, modern programming). While not core analyst tools, they are highly rewarded when demanded.

3. Market Benchmark
    - Average salary across the table: ~$145k.
    - Median salary: ~$130k.
    - The “floor” of top 25 is around $115k (Scala), showing that even the lowest in this top list are still well above the standard analyst salary (~$90–100k).

[
  {
    "skills": "svn",
    "avg_salary": "400000"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "golang",
    "avg_salary": "155000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500"
  },
  {
    "skills": "terraform",
    "avg_salary": "146734"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820"
  },
  {
    "skills": "keras",
    "avg_salary": "127013"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226"
  },
  {
    "skills": "perl",
    "avg_salary": "124686"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120647"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118407"
  },
  {
    "skills": "notion",
    "avg_salary": "118092"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117966"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116712"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387"
  },
  {
    "skills": "scala",
    "avg_salary": "115480"
  }
]
*/