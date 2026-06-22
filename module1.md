# Модуль 1. ER-диаграмма

Сайт:

https://dbdiagram.io

1. Нажать New Diagram

2. Нажать Ctrl+A

3. Нажать Delete

4. Вставить код:

```sql
Table Customers {

customer_id int [pk]

name varchar

inn varchar

address varchar

phone varchar

salesman boolean

buyer boolean

}

Table Products {

product_id int [pk]

product_code varchar

product_name varchar

price decimal

unit varchar

manufacturer varchar

}

Table Materials {

material_id int [pk]

material_code varchar

material_name varchar

price decimal

unit varchar

}

Table Specifications {

specification_id int [pk]

product_id int

material_id int

quantity decimal

}

Table Orders {

order_id int [pk]

customer_id int

order_date date

executor varchar

}

Table OrderItems {

order_item_id int [pk]

order_id int

product_id int

quantity int

price decimal

total decimal

}

Table Production {

production_id int [pk]

production_date date

product_id int

quantity int

}

Ref: Orders.customer_id > Customers.customer_id

Ref: OrderItems.order_id > Orders.order_id

Ref: OrderItems.product_id > Products.product_id

Ref: Specifications.product_id > Products.product_id

Ref: Specifications.material_id > Materials.material_id

Ref: Production.product_id > Products.product_id
```
