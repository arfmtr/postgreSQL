SELECT a.order_line, a.order_id, a.order_date, a.ship_mode, a.customer_id, 
a.product_id, a.sales, a.quantity, a.discount, a.profit, b.name, b.age, c.product_name, c.category
FROM sales AS a
LEFT JOIN (SELECT customer_id, customer_name AS name, age AS age FROM customer GROUP BY customer_id) AS b
ON a.customer_id = b.customer_id
INNER JOIN (SELECT product_id, product_name, category FROM product GROUP BY product_id) AS c
ON a.product_id = c.product_id;
