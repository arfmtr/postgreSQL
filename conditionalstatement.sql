SELECT customer_name, age, CASE
			WHEN age < 30 THEN 'Young'
			WHEN age > 60 THEN 'Old'
			ELSE 'Middle'
			END AS AgeCategory
FROM public.customer;
