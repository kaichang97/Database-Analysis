SELECT TSSales.ProductModel, TSSales.Price - TSCost.Cost AS Profit, avg(TSInventory.InitialAmount) AS Initial, avg(TSInventory.EndingBalance) AS Ending 
FROM TSSales
JOIN TSInventory
ON TSSales.MaterialCode = TSInventory.MaterialCode
JOIN TSCost
ON TSCost.MaterialCode =  TSSales.MaterialCode
GROUP BY TSSales.MaterialCode
ORDER BY TSSales.Price - TSCost.Cost DESC
limit 10;

SELECT TSSales.CustomerName, TSSales.MaterialCode, (TSSales.price - TSCost.Cost) AS Profit,
TSInventory.EndingBalance, (TSInventory.EndingBalance*(TSSales.price - TSCost.Cost)) AS SalesOpportunities
FROM TSSales
LEFT JOIN TSCost
ON TSSales.MaterialCode = TSCost.MaterialCode
LEFT JOIN TSInventory
ON TSSales.MaterialCode = TSInventory.MaterialCode
HAVING SalesOpportunities > 0
ORDER BY TSInventory.EndingBalance DESC;

