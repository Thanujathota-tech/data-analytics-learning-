create table Employee(
Emp_id int auto_increment primary key,
first_name varchar(20),
last_name varchar(30) not null,
hire_date date not null,
salary_annual_lpa decimal(10,2) not null,
email varchar(30) unique,
location varchar(20) not null,
company_name varchar(20) default 'Cognizant');

insert into Employee(first_name,last_name,hire_date,salary_annual_lpa,email,location) 
values("Thota","Thanuja",'2026-10-01',15.5,'thanujathota123@gmail.com',"Hyderabad"),
("Ravi","Kumar",'2024-06-15',8.2,'ravikumar@gmail.com',"Bangalore"),
("Ananya","Reddy",'2025-01-10',12.0,'ananyareddy@gmail.com',"Hyderabad"),
("Suresh","Naik",'2023-09-01',6.5,'sureshnaik@gmail.com',"Pune"),
("Meghana","Patel",'2024-03-20',9.8,'meghanapatel@gmail.com',"Ahmedabad"),
("Arjun","Singh",'2022-11-05',14.0,'arjunsingh@gmail.com',"Delhi"),
("Kavya","Sharma",'2023-07-18',7.5,'kavyasharma@gmail.com',"Jaipur"),
("Vikram","Rao",'2021-12-01',18.2,'vikramrao@gmail.com',"Chennai"),
("Neha","Verma",'2025-04-25',10.0,'nehaverma@gmail.com',"Noida"),
("Prakash","Iyer",'2020-08-14',20.5,'prakashiyer@gmail.com',"Bangalore"),
("Divya","Nair",'2022-02-09',11.3,'divyanair@gmail.com',"Kochi"),
("Amit","Gupta",'2023-05-30',13.7,'amitgupta@gmail.com',"Indore"),
("Pooja","Joshi",'2024-10-12',9.0,'poojajoshi@gmail.com',"Mumbai");


select * from Employee;
select * from Employee limit 5;

alter table employee add column working_hours int;
alter table employee modify last_name text(50);
rename table employee to employee_india;
alter table employee_india drop working_hours;

update employee_india set location="Andhra_adda" where salary_annual_lpa>12.0;
delete from employee_india where location="pune";

drop table employee_india;
drop table employee;

select * from Employee_india;
select * from Employee_india where salary_annual_lpa>12.0;
truncate employee_india;

select sum(salary_annual_lpa) from employee;
select min(salary_annual_lpa) from employee;
select max(salary_annual_lpa) from employee;
select avg(salary_annual_lpa) from employee;
select count(salary_annual_lpa) from employee;

select * from employee where last_name like '%a';
select * from employee where first_name like 'T%';
select * from employee where email like '%as%';

select * from employee where email like '%a%' and salary_annual_lpa>10.0;
select * from employee where location="Hyderabad" or year(hire_date)=2025;
select * from employee where not location="kochi";

select * from employee order by salary_annual_lpa asc;
select * from employee order by salary_annual_lpa desc;

select * from employee where hire_date between'2023-10-15'and '2025-05-20';




