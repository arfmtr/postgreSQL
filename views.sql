CREATE VIEW Daybill AS
SELECT a.order_id, a.product_id, a.sales, a.discount, a.order_date
FROM sales AS a
INNER JOIN (SELECT product_id, MIN(order_date) AS first_order
		   FROM sales
		   GROUP BY product_id) AS b
ON a.product_id = b.product_id AND a.order_date = b.first_order;

DROP VIEW Daybill;
