# Q1. Write a SQL query to find the salaries of all employees
select first_name,last_name,salary from employees;


#Q2. Write a SQL query to find the unique designations of the employees. Return job name.
select distinct job_title as job_name from jobs  # using distinct function we are selecting unique job name


#Q3. write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars
select first_name, salary,  concat ('$',salary*1.15) as '15% increased_salary'  from employees # here concat function is uesd to join string and int


#Q4. Write a SQL query to list the employee's name and job name as a format of "Employee & Job"
SELECT 
 concat (first_name,' ',last_name) as 'Employee',job_title as 'job'
  FROM employees
   JOIN jobs
    USING (job_id);
    

#Q5. Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date
alter table employees
modify hire_date varchar(255) # converting datatype dateand time to varchar for hire date column.

select # this script is used to display the required output, note: this need to be executed sapparetly, do not combine withe data type convertion
employee_id,
concat (first_name,' ',last_name) as 'Employee Name',
salary,
 date_format(hire_date,'%M %d,%Y') hiredate from employees;
 
 
 
#Q6. Write a SQL query to count the number of characters except the spaces for each employee name. Return employee name length

SELECT CONCAT(first_name ,last_name ) as 'name without space' ,length(CONCAT(first_name ,last_name )) as 'Name length'
FROM employees;  # here length function is used to count the string

#Q7. Write a SQL query to find the employee ID, salary, and commission of all the employees.
select
first_name,
last_name,
employee_id,
salary,
commission_pct from employees


#Q8. Write a SQL query to find the unique department with jobs. Return department ID, Job name. 
select 
 DISTINCT department_id,job_title
  FROM employees
   JOIN jobs
    USING (job_id); # join is used to join two table where job_id column is common
    
#9. Write a SQL query to find those employees who joined before 1991. Return complete information about the employees.
    select  * from employees,departments,job_history,jobs,locations,regions,countries
        WHERE hire_date<('1991-1-1')
 
    
#Q10. Write a SQL query to compute the average salary of those employees who work as ‘shipping clerk’. Return average salary
SELECT avg(salary)
FROM employees
join jobs
using(job_id)
WHERE job_title = 'shipping clerk';