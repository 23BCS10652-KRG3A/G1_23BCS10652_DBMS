--23BCS10652
--Khushi Khemka
--WWC1
WITH cte AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY email ORDER BY id) AS rn
    FROM Persons
)
UPDATE Persons
SET email = 'DUPLICATE EMAIL'
WHERE id IN (
    SELECT id FROM cte WHERE rn > 1
);

SELECT * FROM PERSONS

