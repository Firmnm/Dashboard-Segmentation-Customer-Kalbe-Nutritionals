-- Tentukan nama produk terlaris dengan total amount terbanyak!
SELECT product."Product Name", SUM(t.totalamount) AS total_amount
FROM product
JOIN "Transaction" t ON t.productid = product.productid
GROUP BY product."Product Name"
ORDER BY total_amount DESC
LIMIT 1;
