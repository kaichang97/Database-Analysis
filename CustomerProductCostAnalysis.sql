SELECT TSSales.CustomerName, TSSales.MaterialCode, TSCost.Cost AS Cost, min(TSSales.Price) AS MinPrice, avg(TSSales.Price) AS AvgPrice, max(TSSales.Price) AS MaxPrice, stddev(TSSales.Price) AS StDevPrice
FROM TSSales JOIN TSCost ON TSSales.MaterialCode = TSCost.MaterialCode
GROUP BY TSSales.CustomerName, TSSales.MaterialCode
ORDER BY TSSales.MaterialCode
limit 10;
