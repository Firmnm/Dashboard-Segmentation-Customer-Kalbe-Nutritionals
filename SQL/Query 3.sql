-- Tentukan nama store dengan total quantity terbanyak!
SELECT store.storename, SUM(t.qty) AS total_qty
FROM store
JOIN "Transaction" t ON t.storeid = store.storeid
GROUP BY store.storename
ORDER BY total_qty DESC
LIMIT 1;
