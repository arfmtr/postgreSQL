--1. Find the total sales done in every state from customer and sales table
SELECT SUM(b.sales) as total, a.state
FROM customer as a
INNER JOIN sales as b ON a.customer_id = b.customer_id
GROUP BY a.state;

--2. Get data containing Product_id, product name, category, total sales of value of that product and total quantity sold
SELECT a.product_id, b.product_name, b.category, SUM(sales), SUM(quantity)
FROM sales as a
INNER JOIN product as b ON a.product_id = b.product_id
GROUP BY b.product_name, a.product_id, b.category;
