# Employee-Department-sql-project

# **Project Overview**:
* The Employee Department SQL Project focuses on analyzing employee and department data using SQL. The goal is to derive meaningful business insights such as department-wise employee distribution, average salaries, hiring trends, and performance analysis. The project simulates a real-world HR database scenario, allowing for hands-on practice with SQL queries including joins, aggregations, filtering, subqueries, and data transformations.


# **Dataset Description**:
* The project uses a simulated relational database with the following key tables:

## **Employees Table**

- employee_id (INT): Unique identifier for each employee

- name (VARCHAR): Full name of the employee

- gender (CHAR): Gender of the employee

- hire_date (DATE): Date of joining

- salary (DECIMAL): Employee’s current salary

- department_id (INT): Department the employee belongs to
## **Departments Table**

- department_id (INT): Unique ID for each department

- department_name (VARCHAR): Name of the department

- manager_id (INT): ID of the department manager


# 🔍 **Key Insights and Findings**
1. **High-Paying Departments Identified**
Departments such as [e.g., IT, Finance] have an average salary above ₹7,000, indicating these roles may demand higher qualifications or critical business functions.

2. **Top Talent Recognition**
The top 5 highest-paid employees were identified, providing insights into salary distribution and helping recognize high-value contributors.

3. **Managerial Structure Overview**
A detailed view of employees who are managers and those without any manager helped uncover structural gaps and potential areas for leadership development.

4. **Workforce Distribution**
Some departments have a high number of employees, such as [e.g., Sales], while others are leaner, showing possible department prioritization.

5. **Hiring Trends Analysis**
By extracting the number of employees hired each year, the organization can analyze hiring spikes or drops — helpful for workforce planning.

6. **Job Role Distribution**
There is a diverse range of job titles and job IDs, and job roles with higher employee counts indicate areas with larger teams or operational focus.

7. **Even Salary Trends**
A noticeable number of employees earn even-numbered salaries, showing possible standardized pay structures or rounding practices in payroll systems.

8. **Employee-Department Relationship**
A full outer join showed some employees are not assigned to any department, suggesting possible data entry gaps or onboarding process issues.

9. **Departmental Salary Outliers**
Specific employees were found earning more than the average salary of their department, indicating top performers, seniority, or special roles.

10. **Odd Hire Date Patterns**
A fun yet insightful pattern—many employees were hired on odd-numbered days, possibly due to organizational hiring or onboarding patterns.



# 🛠 **Tools and Technologies Used**
## **SQL (Structured Query Language)**
- Core language used for querying and analyzing the relational database.

- Techniques used: JOIN, GROUP BY, HAVING, ORDER BY, subqueries, aggregate functions.

## **Database Management System (DBMS)**

- MySQL 

- Used to create, manage, and query the employee and department tables.
