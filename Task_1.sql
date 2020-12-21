SELECT
	category_name,
	product_name,
	brand_name
FROM 
	production.products p
INNER JOIN production.categories c ON c.category_id = p.category_id
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE
	category_name = 'Children Bicycles'
ORDER BY
	product_name