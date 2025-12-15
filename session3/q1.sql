--23BCS10652
--KHUSHI KHEMKA
--DCPD_WWC1
SELECT 
    p.product_name,
    SUM(o.unit) AS total_units
FROM 
    Products p
JOIN 
    Orders o
ON 
    p.product_id = o.product_id
WHERE 
    o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY 
    p.product_name
HAVING 
    SUM(o.unit) >= 100
ORDER BY 
    total_units DESC;
