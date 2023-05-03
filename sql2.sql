SELECT * FROM rgm.rgm;
select * from rgm where address = "Nandyal"  limit  3;
select * from rgm  where address = "Nandyal" order by ContactNumber ;
select * from rgm order by Name desc ;
alter table rgm add column date1 date;
update rgm set date1 = "2023-05-4" where name = "teju";
show databases;
create table test1(Name varchar(30),college varchar(80),session varchar(30),contactnumber varchar(40),Address varchar(30),date1 date);
insert into test1 select * from rgm;
select * from test1;
select Address from test1;
alter table test1 rename column Address to address1;
rename table test1 to test2;
select * from  test2;
alter table test2 rename to test3;
select * from test3;
delete  from test3 where name = "Deepthi" or date1 = "2023-05-04";
truncate table test3;
drop table test3;
desc rgm;
alter table rgm modify column Address varchar(50);
alter table rgm modify column ContactNumber varchar(30);
alter table rgm drop column date1;




 

 