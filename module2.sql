Нажимаем:

Local instance MySQL80
  
Нажимаем:

+ New SQL Tab

-- МОДУЛЬ 2

DROP DATABASE IF EXISTS ProductionDB;

CREATE DATABASE ProductionDB;

USE ProductionDB;

CREATE TABLE Customers (

customer_id VARCHAR(20) PRIMARY KEY,

name VARCHAR(255),

inn VARCHAR(20),

address VARCHAR(255),

phone VARCHAR(30),

salesman BOOLEAN,

buyer BOOLEAN

);

CREATE TABLE Products (

product_id INT PRIMARY KEY AUTO_INCREMENT,

product_name VARCHAR(255),

price DECIMAL(10,2)

);

CREATE TABLE Materials (

material_id INT PRIMARY KEY AUTO_INCREMENT,

material_name VARCHAR(255),

price DECIMAL(10,2)

);

CREATE TABLE Specifications (

specification_id INT PRIMARY KEY AUTO_INCREMENT,

product_id INT,

material_id INT,

quantity DECIMAL(10,3),

FOREIGN KEY(product_id)

REFERENCES Products(product_id),

FOREIGN KEY(material_id)

REFERENCES Materials(material_id)

);

CREATE TABLE Orders (

order_id INT PRIMARY KEY,

customer_id VARCHAR(20),

order_date DATE,

executor VARCHAR(255),

FOREIGN KEY(customer_id)

REFERENCES Customers(customer_id)

);

CREATE TABLE OrderItems (

order_item_id INT PRIMARY KEY AUTO_INCREMENT,

order_id INT,

product_id INT,

quantity INT,

price DECIMAL(10,2),

total DECIMAL(10,2),

FOREIGN KEY(order_id)

REFERENCES Orders(order_id),

FOREIGN KEY(product_id)

REFERENCES Products(product_id)

);


INSERT INTO Products

(product_name,price)

VALUES

('Пицца Пеперони 33см.',850);


INSERT INTO Materials

(material_name,price)

VALUES

('Куриное яйцо',85),

('Майонез',210),

('Бекон',200),

('Тесто',400),

('Сыр чеддер',960),

('Сыр пармезан',890),

('Томаты черри',350);


INSERT INTO Specifications

(product_id,material_id,quantity)

VALUES

(1,1,2),

(1,2,0.03),

(1,3,0.2),

(1,4,0.5),

(1,5,0.15),

(1,6,0.1),

(1,7,0.2);


⚡ Execute

или

Ctrl + Shift + Enter

Server

↓

Table Data Import Wizard

↓

Заказчики.json

↓

Customers

↓

Finish
