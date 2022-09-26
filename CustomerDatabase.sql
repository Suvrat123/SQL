show databases;

create database customer;
use customer;

create table customer(ID int ,NAME varchar(20) not null,ADDRESS varchar(40) not null,primary key (ID));
desc customer;
insert into customer values (101,'Ramesh','New Delhi');
insert into customer values (102,'Sohan','Mumbai');
insert into customer values (103,'Reema','Kolkata');
select *  from customer;  

create table placeOrder(ORDER_ID int,DATE date not null,ID int,primary key (ORDER_ID),foreign key (ID) REFERENCES 
customer(ID));
desc placeOrder;
insert into placeOrder values (201,'2022-09-12',102);
insert into placeOrder values (202,'2021-08-23',102);
insert into placeOrder values (203,'2021-06-09',103);
select *  from placeOrder;

create table product(CODE_ID int,PRODUCT_NAME varchar(20) not null,SID int not null,SUPPLIER_NAME varchar(25) 
not null,PHONE varchar(10) not null,primary key (CODE_ID));
desc product;
insert into product values (301,'Sunglasses',401,'Mayank','9825413614');
insert into product values (302,'Watch',401,'Mayank','8245179635');
insert into product values (303,'Mobile',402,'Rohan','7514857925');
select *  from product;

create table include (ORDER_ID int,CODE_ID int,QUANTITY int not null,primary key(ORDER_ID,CODE_ID),foreign key
(ORDER_ID) REFERENCES placeOrder(ORDER_ID),foreign key (CODE_ID) REFERENCES product(CODE_ID));
desc include;
insert into include values (201,301,35);
insert into include values (201,302,45);
insert into include values (202,303,37); 
select * from include;