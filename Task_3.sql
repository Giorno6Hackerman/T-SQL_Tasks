SELECT
	store_name,
	sta.first_name + ' ' + sta.last_name AS staff_name,
	m.first_name + ' ' + m.last_name AS manager_name
FROM
	sales.stores sto
INNER JOIN sales.staffs sta ON sta.store_id = sto.store_id
LEFT JOIN sales.staffs m ON m.staff_id = sta.manager_id
WHERE 
	store_name = 'Baldwin Bikes'
