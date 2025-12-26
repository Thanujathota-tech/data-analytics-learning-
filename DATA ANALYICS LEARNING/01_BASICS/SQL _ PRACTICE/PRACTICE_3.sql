select * from class9;
select id,percentage from class9;
select * from class9 where percentage>90;
select id,name,percentage from class9 where percentage>=50 and percentage<=70;

select name,email,percentage from class9 order by percentage ASC;
select name,email,percentage from class9 order by percentage desc;

select * from class9 limit 6;
select distinct percentage,id from class9;

select id,percentage,school_name from class9 where percentage in(57,90,98,45,68,77);
select id,name,percentage from class9 where percentage not in(54,90,99,42,65,76);

select * from class9 where id between 2 and 8;

select * from class9 where email like 's%'; -- starts with
select * from class9 where email like '%m'; -- ends with
select * from class9 where email like '%sa%'; -- contains

select max(percentage) from class9; 
select min(percentage) from class9; 
select sum(id) from class9; 
select avg(percentage) from class9; 
select count(*) from class9; 
select count(school_name) from class9; 








