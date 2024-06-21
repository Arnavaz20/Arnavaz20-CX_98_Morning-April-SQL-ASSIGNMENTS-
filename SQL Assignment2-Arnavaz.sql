create table empdetails( EMPLOYEE_ID int, FIRST_NAME varchar(max),LAST_NAME varchar(max),EMAIl varchar(max),
PHONE_NUMBER varchar(max),HIRE_DATE varchar(max), JOB_ID varchar(max),SALARY int,	COMMISSION_PCT varchar(max),MANAGER_ID int,DEPARTMENT_ID int)

create table Department( DEPARTMENT_ID int,DEPARTMENT_NAME  varchar(max), MANAGER_ID int,LOCATION_ID int)

create table Location1(LOCATION_ID int,STREET_ADDRESS varchar(max),POSTAL_CODE varchar(max),CITY  varchar(max), STATE_PROVINCE varchar(max),COUNTRY_ID varchar(max))	

create table Jobgrade(GRADE_LEVEL varchar(max),	LOWEST_SAL	int,HIGHEST_SAL int)

select*from empdetails
select*from Department
select*from Location1
select*from Jobgrade

---Q1
select empdetails.FIRST_NAME,empdetails.LAST_NAME,empdetails.DEPARTMENT_ID,Department.DEPARTMENT_NAME from empdetails
join Department on empdetails.DEPARTMENT_ID=Department.DEPARTMENT_ID


----Q2
select empdetails.FIRST_NAME,empdetails.LAST_NAME,Department.DEPARTMENT_NAME,Location1.CITY,Location1.STATE_PROVINCE from empdetails
Inner join Department on empdetails.DEPARTMENT_ID=Department.DEPARTMENT_ID
Inner join Location1 on empdetails.EMPLOYEE_ID=Location1.LOCATION_ID

---Q3
select empdetails.FIRST_NAME,empdetails.LAST_NAME,empdetails.SALARY,Jobgrade.GRADE_LEVEL from empdetails
inner join Jobgrade on empdetails.EMPLOYEE_ID=Jobgrade.HIGHEST_SAL

----Q4
SELECT empdetails.FIRST_NAME,empdetails.LAST_NAME,empdetails.DEPARTMENT_ID,Department.DEPARTMENT_NAME FROM empdetails
JOIN Department ON empdetails.EMPLOYEE_ID=Department.DEPARTMENT_ID 
WHERE Department.DEPARTMENT_ID IN (80)
