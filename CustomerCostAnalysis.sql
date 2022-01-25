SELECT CustomerName, AVG(Cost) AS AvgCost
FROM TSCost
WHERE Cost >
(SELECT AVG(Cost)
FROM TSCost)
GROUP BY CustomerName
ORDER BY AvgCost DESC;

SELECT c2.CustomerName, sum(Cost) 
FROM TSCustomers AS c1 
RIGHT JOIN TSCost AS c2  
ON c1.CustomerName=c2.CustomerName
GROUP BY c2.CustomerName 
ORDER BY sum(Cost) DESC;

