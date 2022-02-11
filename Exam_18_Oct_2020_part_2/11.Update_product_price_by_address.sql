DELIMITER $$
CREATE PROCEDURE udp_update_product_price (address_name VARCHAR (50))
BEGIN
	UPDATE products AS p
        JOIN
    products_stores AS ps ON ps.product_id = p.id
		JOIN
	stores AS s ON s.id = ps.store_id
		JOIN
	addresses AS a ON a.id = s.address_id
		SET p.price = 
        (IF (a.name LIKE '0%', p.price + 100, p.price + 200))
        WHERE a.name = address_name;
END $$
DELIMITER 



CALL udp_update_product_price('1 Cody Pass');
SELECT name, price FROM products WHERE id = 17;