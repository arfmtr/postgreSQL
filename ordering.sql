--1. Retrieve all orders where 'discount' value is greater than zero ordered in descending order basis 'discount' value
SELECT order_id FROM public.sales
WHERE discount >= 0
ORDER BY order_id DESC;

--2. Limit the number of results in above query to top 10
SELECT order_id FROM public.sales
WHERE discount >= 0
ORDER BY order_id DESC
LIMIT 10;
