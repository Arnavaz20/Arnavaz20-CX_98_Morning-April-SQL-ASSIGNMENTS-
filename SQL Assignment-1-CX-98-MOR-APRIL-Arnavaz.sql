create table Employeedetails1 (employee_id int, Frist_name varchar(max),last_name varchar(max),salary int, dpt_name
varchar(max),gender varchar(max))

create table projectdetails(Project_id int, employee_id int, Project_name varchar(max))

select*from Employeedetails1
select*from projectdetails

---Q1
SELECT Employeedetails1.Frist_name,projectdetails.Project_name FROM Employeedetails1
INNER JOIN projectdetails
ON Employeedetails1.employee_id=projectdetails.employee_id
order by Employeedetails1.Frist_name

---Q2

SELECT Employeedetails1.Frist_name,projectdetails.Project_name FROM Employeedetails1
left JOIN projectdetails
ON Employeedetails1.employee_id=projectdetails.employee_id
order by Employeedetails1.Frist_name

---Q3
select Employeedetails1.employee_id,projectdetails.Project_name from Employeedetails1
right join projectdetails
ON Employeedetails1.employee_id=projectdetails.Project_id
ORDER BY Employeedetails1.Frist_name

select*from Employeedetails1
select*from projectdetails
----Q4

SELECT Employeedetails1.Frist_name,projectdetails.Project_name FROM Employeedetails1
FULL JOIN projectdetails
ON Employeedetails1.employee_id=projectdetails.employee_id