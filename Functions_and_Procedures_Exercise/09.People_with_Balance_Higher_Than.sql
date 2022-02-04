DELIMITER $ $ CREATE PROCEDURE usp_get_holders_with_balance_higher_than(money DOUBLE(19, 4)) BEGIN
SELECT
    ah.first_name,
    ah.last_name
FROM
    account_holders AS ah
    RIGHT JOIN accounts AS a ON a.account_holder_id = ah.id
GROUP BY
    ah.id
HAVING
    SUM(a.balance) > money
ORDER BY
    ah.id;

END $ $ DELIMITER;

CALL usp_get_holders_with_balance_higher_than(7000);