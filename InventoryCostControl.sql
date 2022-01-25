SELECT TSInventory.`MaterialCode`, (`InitialAmount` - `SalesAmount`) AS final_inventory,
TSCost.Cost AS Cost,(TSCost.Cost*(`InitialAmount` - `SalesAmount`)) AS inventory_cost
FROM TSInventory
LEFT JOIN TSCost -- use left join to ensure no product will be dropped
ON TSInventory.`MaterialCode` = TSCost.`MaterialCode`
HAVING final_inventory > 0
ORDER BY inventory_cost DESC;
