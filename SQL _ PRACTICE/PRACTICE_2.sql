alter table class9 add class varchar(10);
alter table class9 modify email varchar(40) not null;
alter table class9 drop class;

rename table class9 to class10;

update class9 set school_name="ZPHS" where id=4;
update class9 set percentage=100,email="thanujathota123@gmail.com" where name="B";

delete from class9 where percentage=95;
delete from class9;

select * from class9;
select * from class10;

truncate table class9;
drop table class9;
drop database college;
