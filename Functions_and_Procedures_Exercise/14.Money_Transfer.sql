CREATE PROCEDURE usp_transfer_money(
    from_account_id INT,
    to_account_id INT,
    amount DECIMAL(19, 4)
) BEGIN START TRANSACTION;

IF from_account_id NOT IN(
    SELECT
        id
    FROM
        accounts
) THEN ROLLBACK;

ELSEIF to_account_id NOT IN (
    SELECT
        id
    FROM
        accounts
) THEN ROLLBACK;

ELSEIF from_account_id = to_account_id THEN ROLLBACK;

ELSEIF amount <= 0 THEN ROLLBACK;

ELSEIF (
    SELECT
        balance
    FROM
        accounts
    WHERE
        from_account_id = id
) < amount THEN ROLLBACK;

ELSE
UPDATE
    accounts
SET
    balance = balance - amount
where
    id = from_account_id;

UPDATE
    accounts
SET
    balance = balance + amount
where
    id = to_account_id;

END IF;

COMMIT;

END