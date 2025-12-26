use college;
create table if not exists class9(
id int auto_increment primary key,
name varchar(50) not null,
school_name varchar(20) default 'Sri Chaitanya',
percentage tinyint check (percentage >=60),
email varchar(50) unique not null
);

insert into class9(name,percentage,email) values('A',95,'angel123@gmail.com'),
('B', 88, 'rahul567@gmail.com'),
('C', 76, 'sneha.kumar21@yahoo.com'),
('D', 92, 'john.peter09@gmail.com'),
('E', 81, 'megha_star44@hotmail.com'),
('F', 69, 'arjun.varma33@gmail.com'),
('G', 97, 'lisa.fernandes12@gmail.com'),
('H', 73, 'vijaycool87@yahoo.com'),
('I', 85, 'priya.sharma55@gmail.com'),
('J', 90, 'kevin.mathew77@gmail.com'),
('K', 79, 'tanuja.redy04@gmail.com');

select * from class9;
truncate table class9;
drop table class9;
