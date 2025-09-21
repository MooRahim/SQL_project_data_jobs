# ❓ What Are the Top-Paying & Most Demanded Skills for Data Analysts?
**A SQL-driven analysis of remote job postings to uncover salaries, in-demand skills, and the optimal skillset for aspiring data analysts.**

## Introduction 

This project explores the **Data Analyst job market** using SQL queries on a job postings dataset.
The focus is on remote roles, highlighting:
- Top-paying jobs.
- The most in-demand skills.
- The skills tht pay the most.
- The optimal skillset that combins demand with high salary.

## Background 
As part of my SQL learning journey, I analyzed real job postings to answer:
1. What are the top-paying Data Analyst jobs? (Remote)
2. What skills are required for these top-paying roles?
3. What are the most in-demand skills for Data Analyst roles?
4. What are the top skills by salary?
5. What are the optimal skills (high demand + high pay)?

## Tools I Used 
- **Postgres SQL** → queries & analysis  
- **Excel** → visualizing results  
- **Python** (Matplotlib via ChatGPT) → charts  
- **GitHub** → project portfolio  

## The Analysis 
### 1️⃣ Top-Paying Data Analyst Jobs (Remote) 
**To identify the highest-paying roles, I joined job postings with company data, filtering for remote jobs with valid salaries.**   

**📂 SQL Query:** [Top-paying jobs query](/project_sql/1_top_paying_jobs.sql)  
**📊 Table:** 
| job_title                                       | company_name                            | job_location   | job_schedule_type   |   salary_year_avg |
|:------------------------------------------------|:----------------------------------------|:---------------|:--------------------|------------------:|
| Data Analyst                                    | Mantys                                  | Anywhere       | Full-time           |            650000 |
| Director of Analytics                           | Meta                                    | Anywhere       | Full-time           |            336500 |
| Associate Director- Data Insights               | AT&T                                    | Anywhere       | Full-time           |            255830 |
| Data Analyst, Marketing                         | Pinterest Job Advertisements            | Anywhere       | Full-time           |            232423 |
| Data Analyst (Hybrid/Remote)                    | Uclahealthcareers                       | Anywhere       | Full-time           |            217000 |
| Principal Data Analyst (Remote)                 | SmartAsset                              | Anywhere       | Full-time           |            205000 |
| Director, Data Analyst - HYBRID                 | Inclusively                             | Anywhere       | Full-time           |            189309 |
| Principal Data Analyst, AV Performance Analysis | Motional                                | Anywhere       | Full-time           |            189000 |
| Principal Data Analyst                          | SmartAsset                              | Anywhere       | Full-time           |            186000 |
| ERM Data Analyst                                | Get It Recruit - Information Technology | Anywhere       | Full-time           |            184000 |

**📈 Chart:**  

![Top 10 paying Data Analyst remote jobs](/assets/top_paying_jobs_edited.png)

**Insight:**  
- Wide Salary Range; Salaries go from **$184K up to $650K** → showing big variance depending on company, seniority, and scope. This shows that salary scales significantly with **responsibility and leadership**.
- High-paying analyst roles are concentrated in **big tech and data-heavy industries**.
---

### 2️⃣ Skills for Top-Paying Roles
**To discover which skills drive higher salaries, I used the top-paying jobs query as a subquery and joined with the skills dataset.** 

**📂 SQL Query:** [Top 10 skills based on top-paying job posts - query](/project_sql/2_top_paying_job_skills.sql)  
**📊 Table:**  
| skills     |   frequency_count |
|:-----------|------------------:|
| sql        |                 8 |
| python     |                 7 |
| tableau    |                 6 |
| r          |                 4 |
| snowflake  |                 3 |
| pandas     |                 3 |
| excel      |                 3 |
| atlassian  |                 2 |
| azure      |                 2 |
| jira       |                 2 |

**📈 Chart**  

![The most important skills needed for remote data analyst jobs that pay the most.](/assets/top_paying_job_skills.png)

**Insight:**   
- SQL, Python, Tableau dominate the skillset of high-paying roles.
- Snowflake, Pandas, Azure show the value of cloud & modern data tools.
- Even traditional Excel remains relevant at the top level.

---

### 3️⃣ Most In-Demand Data Analyst Skills
**This query ranks skills by their frequency across job postings, showing what employers value most.**

**📂 SQL Query:** [The top 5 in demand skills for Data Analyst roles query](/project_sql/3_top_demanded_skills.sql)  
**📊 Table:** 
| skills   |   frequency_count |
|:---------|------------------:|
| sql      |             92628 |
| excel    |             67031 |
| python   |             57326 |
| tableau  |             46554 |
| power bi |             39468 |

**📈 Chart:**

![Top demanded Data analyst skills](/assets/top5_demanded_skills.png)  

**Insight:**   
- SQL is #1 (92K mentions) → essential baseline skill.
- Excel & Python are highly complementary (business + technical).
- Tableau & Power BI confirm visualization is core to analyst roles.
---

### 4️⃣ Top-Paying Skills for Data Analyst Role  
**This analysis identifies the skills linked with the highest average salaries.**  

**📂 SQL Query:** [Top paying Data Analyst skills query](/project_sql/4_top_paying_skills.sql)  
**📊 Table:**  
| skills     |   avg_salary |
|:-----------|-------------:|
| svn        |       400000 |
| solidity   |       179000 |
| couchbase  |       160515 |
| datarobot  |       155486 |
| golang     |       155000 |
| mxnet      |       149000 |
| dplyr      |       147633 |
| vmware     |       147500 |
| terraform  |       146734 |

**📈 Chart:**  

![Top paying skills](/assets/top_paying_skills.png)  

**Insight:**  
- Highest salary listed: $400,000. This is far above market norms → likely a data outlier or a niche executive-level listing.
- After SVN, the highest-paying skills are emerging technologies (blockchain, AI automation, NoSQL, modern programming). While not core analyst tools, they are highly rewarded when demanded.
- Salary insights:
    - Average salary across the table: ~$145k.
    - Median salary: ~$130k.
    - The “floor” of top 25 is around $115k (Scala), showing that even the lowest in this top list are still well above the standard analyst salary (~$90–100k).
---

### 5️⃣ Optimal Skills (High Salary + High Demand)
**By combining salary and demand data, I identified the “sweet spot” skills for career growth.**

**📂 SQL Query:** [Optimal skills for remotly Data Analyst roles query](/project_sql/5_optimal_skills.sql)

**📊 Chart:** 

![Optimal skills chart](/assets/Optimal_skills_excel_chart.png)

**Insight:**   
- Demand is concentrated in generalist skills (Python, SQL, Excel, Tableau, Power BI).
- Niche tools like Confluence, Hadoop, Snowflake add salary differentiation, but are less demanded compared to Python/SQL.
    - These skills are lucrative for specialists but not mandatory for all analysts.
- Best strategy = **Build foundations**: SQL + Python + Tableau/Power BI + one cloud/warehouse skill (Snowflake/Azure) **For advantage**.

---

## What I Learned
- SQL fundamentals: **DDL, DML, Aggregations, JOINs, CASE WHEN, CTEs, Subqueries, UNIONs.**
- Turning business questions into SQL queries.
- Creating visualizations from SQL outputs.
- Writing insightful, recruiter-ready data summaries.  
- Structuring a project into a portfolio-ready GitHub repo.
## Conclusions 
- **SQL is essential** for all analysts.
- **Excel + Python** balance business & technical analysis.
- **Tableau/Power BI** = must-have for communicating insights.
- **Snowflake/Azure** provide differentiation and higher salaries.
- **Career tip:** Build foundations, then add specialized tools.

## 📑 Credits
- Data Source: [datanerd.tech](datanerd.tech)
- Project inspired by Luke Baroussa's SQL course materials; all analysis and insights are my original work  
