CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(19, 4)) BEGIN START TRANSACTION;

IF (
    (
        SELECT
            balance
        FROM
            accounts
        WHERE
            id = account_id
    ) <= money_amount
) THEN ROLLBACK;

ELSEIF(money_amount <= 0) THEN ROLLBACK;

ELSE
UPDATE
    accounts
SET
    balance = balance - money_amount
where
    id = account_id;

END IF;

END