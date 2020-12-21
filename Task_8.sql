SELECT
	store_name
FROM
	production.products pp
INNER JOIN production.stocks ps ON ps.product_id = pp.product_id
INNER JOIN sales.stores ss ON ss.store_id = ps.store_id
INNER JOIN sales.customers sc ON sc.city = ss.city
WHERE
	product_name = 'Trek 820 - 2016' AND
	first_name = 'Lashawna' AND last_name = 'Richardson'
GROUP BY 
	store_name
