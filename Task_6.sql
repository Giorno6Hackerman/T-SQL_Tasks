SELECT  TOP 10
	product_name,
	SUM(quantity) AS products_sold
FROM 
	sales.orders o
INNER JOIN sales.order_items oi ON oi.order_id = o.order_id
INNER JOIN production.products pp ON pp.product_id = oi.product_id
WHERE
	order_status = 4
GROUP BY 
	product_name
ORDER BY 
	products_sold DESC