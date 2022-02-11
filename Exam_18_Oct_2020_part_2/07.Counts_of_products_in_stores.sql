SELECT 
    st.`name` AS 'name',
    COUNT(pr.id) AS product_count,
    ROUND(AVG(pr.price), 2) AS 'avg'
FROM
    stores AS st
        LEFT JOIN
    products_stores AS ps ON ps.store_id = st.id
        LEFT JOIN
    products AS pr ON pr.id = ps.product_id
GROUP BY st.id
ORDER BY product_count DESC , avg DESC , st.id;