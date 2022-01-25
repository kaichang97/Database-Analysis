SELECT d.CustomerName, CustomerAddress 
FROM TSCustomerAddress AS t RIGHT JOIN
(SELECT c1.CustomerCode, c2.CustomerName, sum(Cost)  
FROM TSCustomers AS c1  
RIGHT JOIN TSCost AS c2  
ON c1.CustomerName = c2.CustomerName  
GROUP BY c2.CustomerName  
ORDER BY sum(Cost) DESC ) AS d 
ON t.CustomerCode=d.CustomerCode
HAVING CustomerAddress IS NOT NULL;
