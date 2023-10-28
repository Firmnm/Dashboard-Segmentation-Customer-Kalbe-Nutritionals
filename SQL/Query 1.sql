-- Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT 
    CASE 
        WHEN "Marital Status" = '' THEN 'null'
        ELSE "Marital Status"
    END AS marital_status,
    AVG(age) AS average_age
FROM customer
GROUP BY marital_status;