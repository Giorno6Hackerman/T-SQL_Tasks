CREATE PROCEDURE listStockProductsFromStore(@store_name AS VARCHAR(255), @brand_name AS VARCHAR(255))
AS
BEGIN
	SELECT 
		store_name,
		brand_name,
		product_name
	FROM 
		sales.stores s
	INNER JOIN production.stocks ps ON ps.store_id = s.store_id
	INNER JOIN production.products pr ON pr.product_id = ps.product_id
	INNER JOIN production.brands br ON br.brand_id = pr.brand_id
	WHERE
		store_name = @store_name AND
		brand_name = @brand_name
END;