/*
Question: What are the most in-demand skills for Data Analyst roles?
- Identify the top 5 skills that are most frequently listed in data analyst job postings.
- Focus on all job postings with the title 'Data Analyst'.
- Why? Highlight the key skills that employers are looking for in data analyst candidates, 
    providing insights into the competencies that are essential for success in this field.
*/

SELECT
    sd.skills,
    COUNT(jpf.*) AS frequency_count
FROM job_postings_fact jpf 
inner join skills_job_dim sjd on jpf.job_id = sjd.job_id
inner join skills_dim sd on sjd.skill_id = sd.skill_id
WHERE 
  jpf.job_title_short = 'Data Analyst'
GROUP BY
    sd.skills
ORDER BY
    frequency_count DESC
LIMIT 5;

/*
Insights:
1. SQL is the clear leader
    - Most demanded skill with 92,628 mentions.
    - Core requirement for nearly all data analyst roles → baseline for employability.

2. Excel and Python are highly complementary
    - Excel: 67,031 mentions, still dominant for business reporting.
    - Python: 57,326 mentions, showing strong demand for automation, data cleaning, and advanced analysis.
    - Together, they show the balance between traditional analysis and modern data workflows.

3- Visualization is essential
    - Tableau (46,554) and Power BI (39,468) are heavily requested.
    - Confirms that companies expect analysts to not only process data but also communicate insights visually.

[
  {
    "skills": "sql",
    "frequency_count": "92628"
  },
  {
    "skills": "excel",
    "frequency_count": "67031"
  },
  {
    "skills": "python",
    "frequency_count": "57326"
  },
  {
    "skills": "tableau",
    "frequency_count": "46554"
  },
  {
    "skills": "power bi",
    "frequency_count": "39468"
  }
]
*/