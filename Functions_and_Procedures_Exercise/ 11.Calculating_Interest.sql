CREATE FUNCTION ufn_calculate_future_value(
    initial_sum DECIMAL(19, 4),
    yearly_int_rate DECIMAL(19, 4),
    number_of_years INT
) RETURNS DECIMAL(19, 4) DETERMINISTIC BEGIN RETURN initial_sum * POW(1 + yearly_int_rate, number_of_years);

END;

CREATE PROCEDURE usp_calculate_future_value_for_account(acc_id INT, int_rate DECIMAL(19, 4)) BEGIN
SELECT
    a.id AS account_id,
    ah.first_name,
    ah.last_name,
    a.balance AS current_balance,
    ufn_calculate_future_value(a.balance, int_rate, 5) AS balance_in_5_years
FROM
    account_holders AS ah
    JOIN accounts AS a ON a.account_holder_id = ah.id
WHERE
    a.id = acc_id;

END;