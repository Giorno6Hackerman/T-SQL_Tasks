SELECT
	first_name + ' ' + last_name AS 'Customer',
	shipped_date,
	product_name,
	quantity,
	p.list_price
FROM 
	sales.customers c
INNER JOIN sales.orders o ON o.customer_id = c.customer_id
INNER JOIN sales.order_items i ON i.order_id = o.order_id
INNER JOIN production.products p ON p.product_id = i.product_id
WHERE 
	last_name = 'Todd' AND first_name = 'Kasha' AND
	YEAR(shipped_date) = YEAR('2017')