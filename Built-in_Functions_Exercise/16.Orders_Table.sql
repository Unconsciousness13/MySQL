SELECT 
    product_name,
    order_date,
    ADDTIME(order_date, '3 00:00:00') AS pay_due,
    DATE_ADD(order_date, INTERVAL 1 MONTH) AS deliver_due
FROM
    orders;