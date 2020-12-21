ALTER PROCEDURE productsInCategory(@category_name AS VARCHAR(255))
AS
BEGIN
	SELECT
		category_name,
		product_name,
		brand_name
	FROM 
		production.products p
	INNER JOIN production.categories c ON c.category_id = p.category_id
	INNER JOIN production.brands b ON b.brand_id = p.brand_id
	WHERE
		category_name = @category_name
	ORDER BY
		product_name
END;