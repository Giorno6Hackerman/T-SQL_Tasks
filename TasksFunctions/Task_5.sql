ALTER PROCEDURE top3BrandsByProductsSold
AS
BEGIN
	SELECT  TOP 3
		brand_name,
		SUM(oi.list_price * quantity * (1 - discount)) AS products_sold
	FROM 
		sales.orders o
	INNER JOIN sales.order_items oi ON oi.order_id = o.order_id
	INNER JOIN production.products pp ON pp.product_id = oi.product_id
	INNER JOIN production.brands pb ON pb.brand_id = pp.brand_id
	WHERE
		order_status = 4
	GROUP BY 
		brand_name
	ORDER BY 
		products_sold DESC
END;