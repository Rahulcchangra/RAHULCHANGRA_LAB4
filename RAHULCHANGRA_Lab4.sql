create database Ecommerce_DB;
create table supplier (SUPP_NAME VARCHAR(50) NOT NULL ,SUPP_CITY VARCHAR (50) NOT NULL, SUPP_PHONE varchar (50) NOT NULL);
create table customer (CUS_NAME VARCHAR (50) NOT NULL , CUS_PHONE varchar (50) NOT NULL, CUS_CITY VARCHAR (50) NOT NULL, CUS_GENDER char);
create table category (CAT_ID INT, CAT_NAME VARCHAR (20) NOT NULL);
create table product ( PRO_ID INT primary KEY, PRO_NAME VARCHAR (20) NOT NULL DEFAULT "DUMMY", PRO_DESC VARCHAR (60), CAT_ID INT);
CREATE TABLE supplier_pricing ( PRICING_ID INT PRIMARY KEY, PRO_ID INT ,SUPPLY_ID INT,  FOREIGN KEY (SUPPLY_ID) references supplier_pricing (PRICING_ID), SUPP_PRICE INT DEFAULT 0);
create table order_det (ORDER_ID INT PRIMARY KEY, ORD_AMT INT NOT null, CUS_ID int, foreign key (CUS_ID) references customer (ORDER_ID),PRICING_ID INT, foreign key (PRICING_ID) references order_det (ORDER_ID)); 