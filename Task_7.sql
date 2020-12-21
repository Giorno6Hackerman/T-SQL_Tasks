SELECT
	store_name,
	SUM(soi.list_price * quantity * (1 - discount)) AS products_sold
FROM
	sales.stores ss
INNER JOIN sales.orders so ON so.store_id = ss.store_id
INNER JOIN sales.order_items soi ON soi.order_id = so.order_id
WHERE
	shipped_date BETWEEN '2016-01-01' AND '2020-01-01'
GROUP BY 
	store_name
ORDER BY
	products_sold DESC