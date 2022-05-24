--1. Case: Supermarket DB
Get the list of all cities where the region is north or east without any duplicates, using IN statement
SELECT DISTINCT city FROM public.customer
WHERE region IN ('North','East');

Get the list of all orders where the 'Sales' values is between 100 and 500 using the BETWEEN operator
SELECT order_id FROM public.sales
WHERE sales BETWEEN 100 and 200;

Get the list of customers whose last name contains only 4 characters using LIKE
SELECT customer_name FROM public.customer
WHERE customer_name LIKE '____%';
