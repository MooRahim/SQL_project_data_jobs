/*
Question: What are the skills required for these top-paying Data Analyst roles?
- Use the results from the previous query (top 10 highest-paying data analyst jobs) to find the top skills.
- Identify the top 10 skills for these roles.
- Why? Provide insights into the skills that are in demand for high-paying data analyst positions, 
helping job seekers and professionals align their skillsets with market needs.
*/

SELECT
  skills_dim.skills,
  COUNT(*) AS frequency_count
FROM skills_dim
INNER JOIN skills_job_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
  skills_job_dim.job_id IN (
    SELECT
      job_id
    FROM 
      job_postings_fact
    WHERE 
      job_title_short = 'Data Analyst' AND
      job_location = 'Anywhere' AND
      salary_year_avg IS NOT NULL
    ORDER BY 
      salary_year_avg DESC
    LIMIT 10
  )
GROUP BY
  skills_dim.skills
ORDER BY
  frequency_count DESC
LIMIT 10;

/*
Insights:
1. SQL, Python, Tableau form the “Big 3”
  - SQL (8 mentions) → still the #1 skill for high-paying jobs.
  - Python (7 mentions) → critical for data manipulation and advanced analytics.
  - Tableau (6 mentions) → top visualization skill in high-salary roles.

2. Snowflake & Pandas add strong technical value
  - Snowflake (3 mentions) → reflects demand for cloud-based data warehousing.
  - Pandas (3 mentions) → Python’s main data library, showing employers expect not just Python but hands-on data wrangling.

3. Specialized/Niche skills still appear
  - R, Looker, Atlassian (2–4 mentions) → less common, but they still give an edge in specific high-paying environments.
  - These skills are complementary rather than core, but they boost competitiveness.

[
  {
    "skills": "sql",
    "frequency_count": "8"
  },
  {
    "skills": "python",
    "frequency_count": "7"
  },
  {
    "skills": "tableau",
    "frequency_count": "6"
  },
  {
    "skills": "r",
    "frequency_count": "4"
  },
  {
    "skills": "snowflake",
    "frequency_count": "3"
  },
  {
    "skills": "pandas",
    "frequency_count": "3"
  },
  {
    "skills": "excel",
    "frequency_count": "3"
  },
  {
    "skills": "atlassian",
    "frequency_count": "2"
  },
  {
    "skills": "azure",
    "frequency_count": "2"
  },
  {
    "skills": "jira",
    "frequency_count": "2"
  }
]
*/