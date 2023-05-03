SELECT * FROM rgm.student_2;
select student_name ,marks from student_2 order by marks desc limit 1,1;
select student_name ,marks from student_2 order by marks desc limit 2,1;
select student_name ,marks from student_2 order by marks desc limit 0,1;

create table orders(orderId int,customerId int,orderDate date);
create table customer(customerId int,customerName varchar(30),contactName varchar(30),country varchar(30));
insert into orders values(101,201,"2023-05-4");
insert into orders values(102,202,"2023-05-5"),(103,203,"2023-05-6"),(104,204,"2023-05-7"),(105,205,"2023-05-08"),(106,206,"2023-05-9");
select * from customer;
insert into customer values(201,"Deeksha","teju","india"),(202,"shashi","charan","usa"),(200,"shiva","pranu","australia"),(205,"aruna","deepthi","africa");
select * from customer;
select orders.orderId,customer.customerName,orders.orderDate from orders INNER JOIN customer on orders.customerId=customer.customerId;

create table staff(id int,name varchar(30),age int,package int);
create table payment(payint int,date_ date,sid int,amount int);
insert into staff values(101 ,"Deeksha",19,2000),(102,"dee",20,3000),(103,"teju",25,4000);
insert into payment values(201,"2023-05-4",101,1000),(202,"2023-05-6",102,5000),(203,"2023-05-3",100,300);
select id,name,age,amount from payment p,staff s where p.sid=s.id;
select id,name,age,amount from payment ,staff where payment.sid=staff.id;
alter table orders add column shippingId int;
update orders set shippingId = 300 where orderId = 101;
update orders set shippingId = 700 where orderId = 106;
create table shipping(s_id int,shipping_name varchar(30));
insert into shipping values(300,"ABC"),(400,"xyz"),(500,"abc"),(600,"def"),(700,"dee");
select* from shipping;
select * from orders;
select * from customer;
SELECT ORDERS.ORDERID,CUSTOMER.CUStomerNAME,SHIPPING.shipping_NAME FROM 
((ORDERS INNER JOIN CUSTOMER ON ORDERS.CUSTOMERID= CUSTOMER.CUStomerID)
INNER JOIN SHIPPING ON ORDERS.ShippingID = SHIPPING.S_ID);
select customer.customername,orders.orderId from customer LEFT JOIN  orders on customer.customerid=orders.customerid;
select customername,country,orderDate from customer right Join orders on customer.customerid=orders.customerid;
select customername ,orders.orderId from orders FULL JOIN customer on customerid=orders.customerId; 
