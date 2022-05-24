--1. Find the sum of all 'Sales' values
SELECT SUM (sales) FROM public.sales;

--2. Find count of the number of customers in north region with age between 20 and 30
SELECT COUNT(*) FROM public.customer
WHERE region = 'North' AND age BETWEEN 20 AND 30;

--3. Find the average age of East region customers
SELECT AVG(age) FROM public.customer
WHERE region = 'East';

--4. Find the minimum and maximum aged customers from Philadelphia
SELECT MIN(age), MAX(age)
FROM public.customer
WHERE city = 'Philadelphia';
