ALTER PROCEDURE listStoresByProductAndCustomerCity(@product_name AS VARCHAR(255), 
													@first_name AS VARCHAR(255), @last_name AS VARCHAR(255))
AS
BEGIN
	SELECT
		store_name
	FROM
		production.products pp
	INNER JOIN production.stocks ps ON ps.product_id = pp.product_id
	INNER JOIN sales.stores ss ON ss.store_id = ps.store_id
	INNER JOIN sales.customers sc ON sc.city = ss.city
	WHERE
		product_name = @product_name AND
		first_name = @first_name AND last_name = @last_name
	GROUP BY 
		store_name
END;