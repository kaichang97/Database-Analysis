SELECT Date, sum(Price) AS DaySales
FROM TSSales
GROUP BY Date
HAVING DaySales > (SELECT SUM(Price)/count(DISTINCT Date) AS AvgPrice
FROM TSSales)
