show databases;

use employees;

select * from employees;
select * from departments;

#1
SELECT 
    department_id, AVG(salary) average_salary
FROM
    employees
GROUP BY department_id
HAVING AVG(salary) > 7000;




#2
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE 'S%';





#3
SELECT 
    e.employee_id, e.first_name, e.last_name, d.department_name
FROM
    employees e
        INNER JOIN
    departments d ON e.employee_id = d.manager_id;





#4
SELECT 
    employee_id, first_name, last_name
FROM
    employees
WHERE
    manager_id IS NULL;




#5
SELECT 
    e.employee_id, e.first_name, e.last_name, d.department_name
FROM
    employees e
        LEFT JOIN
    departments d ON e.department_id = d.department_id;




#6
SELECT 
    YEAR(hire_date) hire_date, COUNT(employee_id) employee_count
FROM
    employees
GROUP BY YEAR(hire_date)
ORDER BY hire_date;

#7
SELECT 
    job_id, COUNT(employee_id) employee_count
FROM
    employees
GROUP BY job_id;



#8
SELECT 
    employee_id, first_name, last_name, salary
FROM
    employees
ORDER BY salary DESC
LIMIT 5;






#9
SELECT 
    employee_id, first_name, last_name, salary
FROM
    employees
WHERE
    MOD(salary, 2) = 0
ORDER BY salary;


#10
SELECT DISTINCT
    d.department_name
FROM
    departments d
        INNER JOIN
    employees e ON d.department_id = e.department_id
ORDER BY d.department_name;

#11
SELECT 
    employee_id, first_name, last_name, hire_date
FROM
    employees
WHERE
    DAY(hire_date) % 2 = 1
ORDER BY hire_date;


#12
SELECT DISTINCT
    department_name
FROM
    departments;

#13
SELECT 
    e.employee_id AS employee_id,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.employee_id AS manager_id,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM
    employees e
        LEFT JOIN
    employees m ON e.manager_id = m.employee_id;


#14
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    e.department_id
FROM
    employees e
        JOIN
    (SELECT 
        department_id, AVG(salary) AS avg_salary
    FROM
        employees
    GROUP BY department_id) d_avg ON e.department_id = d_avg.department_id
WHERE
    e.salary > d_avg.avg_salary;



#15
SELECT 
    d.department_name, COUNT(e.employee_id) AS employee_count
FROM
    departments d
        LEFT JOIN
    employees e ON d.department_id = e.department_id
GROUP BY d.department_name;


#16  #i create a view as you can see i update a query.
create view ss as
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    e.department_id
FROM
    employees e
        JOIN
    (SELECT 
        department_id, AVG(salary) AS avg_salary
    FROM
        employees
    GROUP BY department_id) d_avg ON e.department_id = d_avg.department_id
WHERE
    e.salary > d_avg.avg_salary;
select * from ss;


















































































