--Создание базы данных "Складской учет"
--create database "Inventory_control";

--Создание таблицы "Товары"
create table "Products"
(
	"ID" INT primary key
   ,"Article" INT not null
   ,"Name" VARCHAR (30) not null
   ,"Order_ID" INT not null
   ,"Warehouse_ID" INT not null
   ,"Counterparty_ID" INT not null
)

--Создание таблицы "Контрагенты"
create table "Counterparties"
(
	"ID" INT primary key
   ,"Name" VARCHAR (30) not null
   ,"Address" VARCHAR (30) not null
   ,"Counterparty_type" INT not null
)

--Создание таблицы "Склады"
create table "Warehouses"
(
	"ID" INT primary key
   ,"Name" VARCHAR (30) not null
   ,"Address" VARCHAR (30) not null
)

--Создание таблицы "Ячейки"
create table "Cells"
(
	"ID" INT primary key
   ,"Cell_number" INT unique not null
   ,"Warehouse_ID" INT not null

)

--Создание таблицы "Заказы"
create table "Orders"
(
	"ID" INT primary key
   ,"Number" VARCHAR (16) unique not null
   ,"Status" INT not null
   ,"Product_ID" INT not null
   ,"Counterparty_ID" INT not null
)

--Создание таблицы "Скидки"
create table "Discounts"
(
	 "ID" INT primary key
	,"Counterparty_ID" INT not null
	,"DateStart" DATE not null
	,"DateEnd" DATE not null
	,"Discount_amount" INT not null
)
