-- Berapa rata-rata umur customer jika dilihat dari gender nya ?
SELECT
    CASE
        WHEN gender = 0 THEN 'Wanita'
        WHEN gender = 1 THEN 'Pria'
    END AS gender_label,
    AVG(age) AS average_age
FROM customer
GROUP BY gender;