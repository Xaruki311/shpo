Открыть:

+ New SQL Tab


SELECT

o.order_id,

c.name AS customer_name,

p.product_name,

oi.quantity,

SUM(

oi.quantity

*

s.quantity

*

m.price

)

AS total_order_cost

FROM Orders o

JOIN Customers c

ON o.customer_id = c.customer_id

JOIN OrderItems oi

ON o.order_id = oi.order_id

JOIN Products p

ON oi.product_id = p.product_id

JOIN Specifications s

ON p.product_id = s.product_id

JOIN Materials m

ON s.material_id = m.material_id

GROUP BY

o.order_id,

c.name,

p.product_name,

oi.quantity;



Нажать:

⚡ Execute

или

Ctrl + Shift + Enter
