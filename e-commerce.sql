drop database if exists ECOMMERCE;
create database ECOMMERCE;
use ECOMMERCE;
-- # 1
create table Supplier
(
    SUPP_ID    int primary key,
    SUPP_NAME  varchar(100),
    SUPP_CITY  varchar(50),
    SUPP_PHONE varchar(10)
);

create table Customer
(
    CUS_ID     int primary key,
    CUS_NAME   varchar(100),
    CUS_PHONE  varchar(10),
    CUS_CITY   varchar(50),
    CUS_GENDER varchar(1)
);

create table Category
(
    CAT_ID   int primary key,
    CAT_NAME varchar(100)
);

create table Product
(
    PRO_ID   int primary key,
    PRO_NAME varchar(100),
    PRO_DESC varchar(1000),
    CAT_ID   int,
    foreign key (CAT_ID) references Category (CAT_ID)
);

create table ProductDetails
(
    PROD_ID int primary key,
    PRO_ID  int,
    SUPP_ID int,
    PRICE   int,
    foreign key (PRO_ID) references Product (PRO_ID),
    foreign key (SUPP_ID) references Supplier (SUPP_ID)
);

create table Order
(
    ORD_ID     int primary key,
    ORD_AMOUNT int,
    ORD_DATE   date,
    CUS_ID     int,
    PRO_ID     int,
    foreign key (CUS_ID) references Customer (CUS_ID),
    foreign key (PRO_ID) references Product (PRO_ID)
);

create table Rating
(
    RAT_ID       int primary key,
    CUS_ID       int,
    SUPP_ID      int,
    RAT_RATSTARS int,
    foreign key (CUS_ID) references Customer (CUS_ID),
    foreign key (SUPP_ID) references Supplier (SUPP_ID)
);

-- # 2
insert into Supplier
VALUES (1, 'Rajesh Retails', 'Delhi', '1234567890'),
       (2, 'Appario Ltd.', 'Mumbai', '2589631470'),
       (3, 'Knome products', 'Banglore', '9785462315'),
       (4, 'Bansal Retails', 'Kochi', '8975463285'),
       (5, 'Mittal Ltd.', 'Lucknow', '7898456532');

insert into Customer
VALUES (1, 'AAKASH', '9999999999', 'DELHI', 'M'),
       (2, 'AMAN', '9785463215', 'NOIDA', 'M'),
       (3, 'NEHA', '9999999999', 'MUMBAI', 'F'),
       (4, 'MEGHA', '9994562399', 'KOLKATA', 'F'),
       (5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');

insert into Category
values (1, 'BOOKS'),
       (2, 'GAMES'),
       (3, 'GROCERIES'),
       (4, 'ELECTRONICS'),
       (5, 'CLOTHES');

insert into Product
VALUES (1, 'GTA V', 'DFJDJFDJFDJFDJFJF', 2),
       (2, 'TSHIRT', 'DFDFJDFJDKFD', 5),
       (3, 'ROG LAPTOP', 'DFNTTNTNTERND', 4),
       (4, 'OATS', 'REURENTBTOTH', 3),
       (5, 'HARRY POTTER', 'NBEMCTHTJTH', 1);

insert into ProductDetails
VALUES (1, 1, 2, 1500),
       (2, 3, 5, 30000),
       (3, 5, 1, 3000),
       (4, 2, 3, 2500),
       (5, 4, 1, 1000);

insert into Order
VALUES (20, 1500, '2021-10-12', 3, 5),
       (25, 30500, '2021-09-16', 5, 2),
       (26, 2000, '2021-10-05', 1, 1),
       (30, 3500, '2021-08-16', 4, 3),
       (50, 2000, '2021-10-06', 2, 1);

insert into Rating
VALUES (1, 2, 2, 4),
       (2, 3, 4, 3),
       (3, 5, 1, 5),
       (4, 1, 3, 2),
       (5, 4, 5, 4);

