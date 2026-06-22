Открыть:

+ New SQL Tab


SELECT

'Пицца Пеперони 33см.' AS product_name,

(

2 * 85 +

0.03 * 210 +

0.2 * 200 +

0.5 * 400 +

0.15 * 960 +

0.1 * 890 +

0.2 * 350

)

AS one_pizza_cost,

4 AS quantity,

(

2 * 85 +

0.03 * 210 +

0.2 * 200 +

0.5 * 400 +

0.15 * 960 +

0.1 * 890 +

0.2 * 350

) * 4

AS total_order_cost;

⚡ Execute

или

Ctrl + Shift + Enter
