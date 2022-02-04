CREATE TABLE `logs` (
    log_id int not null auto_increment PRIMARY KEY,
    account_id int not null,
    old_sum decimal(15, 4) not null,
    new_sum decimal(15, 4) not null,
    constraint fk_logs_accounts foreign key (account_id) references accounts(id)
);

CREATE TRIGGER tr_update_accounts
AFTER
UPDATE
    ON accounts FOR EACH ROW BEGIN
INSERT INTO
    logs(account_id, old_sum, new_sum)
values
    (old.id, old.balance, new.balance);

END;

CREATE TABLE notification_emails (
    `id` int not null auto_increment PRIMARY KEY,
    `recipient` int,
    `subject` varchar(50),
    `body` text
);

CREATE TRIGGER tr_logs_inserted_emails
AFTER
INSERT
    ON `logs` FOR EACH ROW BEGIN
INSERT INTO
    notification_emails (recipient, subject, body)
values
    (
        new.account_id,
        concat('Balance change for account: ', new.account_id),
        concat(
            'On ',
            date(curdate()),
            'your balance was changed from',
            new.old_sum,
            ' to ',
            new.new_sum
        )
    );

END