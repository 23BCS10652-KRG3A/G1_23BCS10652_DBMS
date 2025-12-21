--23BCS10652
--Khushi Khemka
--WWC1
SELECT TO_CHAR(trans_date ,'YYYY-MM') as month,
COUNTRY,COUNT(*) AS trans_count,sum(case when state='approved' then 1 else 0 end) as approved_count,   sum(amount) as trans_total_amount ,sum(case when state='approved' then amount else 0 end) as approved_total_amount  FROM Transactions
GROUP BY MONTH,COUNTRY 
