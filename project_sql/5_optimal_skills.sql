/*
Question: What are the most optimal skills to learn (aka it's in high demand and a high-paying skill)?
- Identify skills that are frequently requested in job postings and are associated with higher salaries.
- Concentrates on remote jobs.
- Whey? Target skills that are both in demand and financially rewarding for job seekers.
offering strategic insights for individuals aiming to enhance their skill set for better career opportunities.
*/

SELECT
    s.skills skill_name,
    COUNT(jp.*) skill_demand,
    ROUND(AVG(jp.salary_year_avg), 0) avg_salary
FROM job_postings_fact jp
INNER JOIN skills_job_dim sj ON jp.job_id = sj.job_id
INNER JOIN skills_dim s ON sj.skill_id = s.skill_id
WHERE 
    jp.job_work_from_home = 'True' AND
    jp.salary_year_avg IS NOT NULL AND
    jp.job_title_short = 'Data Analyst'
GROUP BY s.skills
HAVING COUNT(jp.*) > 10
ORDER BY 
    avg_salary DESC,
    skill_demand DESC    
LIMIT 25;

/*
Main Insights:
1- Python dominates demand
    - Highest demand: 236 job listings.
    - Salary is strong ($101k) but not the top-paying skill.
    - This shows Python is essential for market entry.

2- Specialized tools pay the highest
    - Go has the highest average salary ($115k) but very low demand (27 jobs).
    - Niche tools like Confluence, Hadoop, Snowflake also pay well but are less demanded compared to Python/SQL.
    - These skills are lucrative for specialists but not mandatory for all analysts.

3- Overall market balance
    - The average salary across all skills is ~$104k.
    - Demand is concentrated in generalist skills (Python, SQL, Excel, Tableau, Power BI).
    - High salary “spikes” often appear in engineering/infra-oriented skills like Go, Hadoop, or Azure.

[
  {
    "skill_name": "go",
    "skill_demand": "27",
    "avg_salary": "115320"
  },
  {
    "skill_name": "confluence",
    "skill_demand": "11",
    "avg_salary": "114210"
  },
  {
    "skill_name": "hadoop",
    "skill_demand": "22",
    "avg_salary": "113193"
  },
  {
    "skill_name": "snowflake",
    "skill_demand": "37",
    "avg_salary": "112948"
  },
  {
    "skill_name": "azure",
    "skill_demand": "34",
    "avg_salary": "111225"
  },
  {
    "skill_name": "bigquery",
    "skill_demand": "13",
    "avg_salary": "109654"
  },
  {
    "skill_name": "aws",
    "skill_demand": "32",
    "avg_salary": "108317"
  },
  {
    "skill_name": "java",
    "skill_demand": "17",
    "avg_salary": "106906"
  },
  {
    "skill_name": "ssis",
    "skill_demand": "12",
    "avg_salary": "106683"
  },
  {
    "skill_name": "jira",
    "skill_demand": "20",
    "avg_salary": "104918"
  },
  {
    "skill_name": "oracle",
    "skill_demand": "37",
    "avg_salary": "104534"
  },
  {
    "skill_name": "looker",
    "skill_demand": "49",
    "avg_salary": "103795"
  },
  {
    "skill_name": "nosql",
    "skill_demand": "13",
    "avg_salary": "101414"
  },
  {
    "skill_name": "python",
    "skill_demand": "236",
    "avg_salary": "101397"
  },
  {
    "skill_name": "r",
    "skill_demand": "148",
    "avg_salary": "100499"
  },
  {
    "skill_name": "redshift",
    "skill_demand": "16",
    "avg_salary": "99936"
  },
  {
    "skill_name": "qlik",
    "skill_demand": "13",
    "avg_salary": "99631"
  },
  {
    "skill_name": "tableau",
    "skill_demand": "230",
    "avg_salary": "99288"
  },
  {
    "skill_name": "ssrs",
    "skill_demand": "14",
    "avg_salary": "99171"
  },
  {
    "skill_name": "spark",
    "skill_demand": "13",
    "avg_salary": "99077"
  },
  {
    "skill_name": "c++",
    "skill_demand": "11",
    "avg_salary": "98958"
  },
  {
    "skill_name": "sas",
    "skill_demand": "126",
    "avg_salary": "98902"
  },
  {
    "skill_name": "sql server",
    "skill_demand": "35",
    "avg_salary": "97786"
  },
  {
    "skill_name": "javascript",
    "skill_demand": "20",
    "avg_salary": "97587"
  },
  {
    "skill_name": "power bi",
    "skill_demand": "110",
    "avg_salary": "97431"
  }
]
*/
