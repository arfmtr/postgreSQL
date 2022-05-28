--LENGTH
SELECT customer_name, LENGTH(customer_name) as numchar
FROM customer;

--UPPER
SELECT upper ('PostgreSQL');

--LOWER
SELECT lower ('PostgreSQL');

--REPLACE
SELECT customer_name, country, replace(country,'United States','US') as newcountry
FROM customer;

--CONCATENATION
SELECT customer_name, city||','||state||','||country as address;
FROM customer;

--SUBSTRING
SELECT customer_id, customer_name, substring(customer_id for 2) as cust
FROM customer
WHERE substring(customer_id for 2) * 'AB';

--LIST AGGREGATION
SELECT order_id, string_agg(product_id, ',')
FROM sales
GROUP BY order_id
ORDER BY order_id ASC;
