#23BCS10652
#Khushi Khemka
#WWC_1
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
