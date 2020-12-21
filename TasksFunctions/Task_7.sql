CREATE PROCEDURE rankStoresBySellings(@date_from AS DATE, @date_to AS DATE)
AS
BEGIN
	SELECT
		store_name,
		SUM(quantity) AS products_sold
	FROM
		sales.stores ss
	INNER JOIN sales.orders so ON so.store_id = ss.store_id
	INNER JOIN sales.order_items soi ON soi.order_id = so.order_id
	WHERE
		shipped_date BETWEEN @date_from AND @date_to
	GROUP BY 
		store_name
	ORDER BY
		products_sold DESC
END;