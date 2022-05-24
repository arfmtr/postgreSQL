--1. Make a dashboard showing the following figures for each product ID
Total sales orderby this column in descending 
SELECT product_id, SUM(sales) AS total_sales
FROM public.sales
GROUP BY product_id
ORDER BY total_sales DESC;

Total sales quantity
SELECT product_id, SUM(quantity) AS total_quantity
FROM public.sales
GROUP BY product_id;

Number of orders
SELECT product_id, COUNT(order_id) AS total
FROM public.sales
GROUP BY product_id;

Max sales values
SELECT product_id, MAX(sales) AS Maksimum_sales
FROM public.sales
GROUP BY product_id;

Min sales values
SELECT product_id, MIN(sales) AS Minimum_sales
FROM public.sales
GROUP BY product_id;

Average sales values
SELECT product_id, AVG(sales) AS Average_sales
FROM public.sales
GROUP BY product_id;

--2. Get the list of product ID where the quantity of product sold is greater than 10
SELECT product_id FROM public.sales
GROUP BY product_id
HAVING COUNT(quantity) > 10;
