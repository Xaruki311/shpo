Открыть:

MySQL Workbench

↓

Local instance MySQL80

↓

+ New SQL Tab


  

DROP DATABASE IF EXISTS ProductionDB;

CREATE DATABASE ProductionDB;

USE ProductionDB;

CREATE TABLE Customers (

customer_id INT PRIMARY KEY AUTO_INCREMENT,

name VARCHAR(255) NOT NULL,

inn VARCHAR(20),

address VARCHAR(255),

phone VARCHAR(30),

salesman BOOLEAN,

buyer BOOLEAN

);

CREATE TABLE Products (

product_id INT PRIMARY KEY AUTO_INCREMENT,

product_code VARCHAR(50),

product_name VARCHAR(255) NOT NULL,

price DECIMAL(10,2),

unit VARCHAR(20),

manufacturer VARCHAR(255)

);

CREATE TABLE Materials (

material_id INT PRIMARY KEY AUTO_INCREMENT,

material_code VARCHAR(50),

material_name VARCHAR(255) NOT NULL,

price DECIMAL(10,2),

unit VARCHAR(20)

);

CREATE TABLE Specifications (

specification_id INT PRIMARY KEY AUTO_INCREMENT,

product_id INT NOT NULL,

material_id INT NOT NULL,

quantity DECIMAL(10,3) NOT NULL,

FOREIGN KEY (product_id)

REFERENCES Products(product_id),

FOREIGN KEY (material_id)

REFERENCES Materials(material_id)

);

CREATE TABLE Orders (

order_id INT PRIMARY KEY AUTO_INCREMENT,

customer_id INT NOT NULL,

order_date DATE,

executor VARCHAR(255),

FOREIGN KEY (customer_id)

REFERENCES Customers(customer_id)

);

CREATE TABLE OrderItems (

order_item_id INT PRIMARY KEY AUTO_INCREMENT,

order_id INT NOT NULL,

product_id INT NOT NULL,

quantity INT NOT NULL,

price DECIMAL(10,2),

total DECIMAL(10,2),

FOREIGN KEY (order_id)

REFERENCES Orders(order_id),

FOREIGN KEY (product_id)

REFERENCES Products(product_id)

);

CREATE TABLE Production (

production_id INT PRIMARY KEY AUTO_INCREMENT,

production_date DATE,

product_id INT NOT NULL,

quantity INT NOT NULL,

FOREIGN KEY (product_id)

REFERENCES Products(product_id)

);








Нажать:

⚡ Execute

или

Ctrl + Shift + Enter
Импорт JSON

Нажать:

Server

↓

Table Data Import Wizard

↓

Заказчики.json

↓

Customers

↓

Finish
