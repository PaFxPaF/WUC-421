SELECT 
    	"EmployeeID"
		,"ShipDate"
    	,SUM("SubTotal") AS "TotalSubTotal"
FROM "Purchasing"."PurchaseOrderHeader"
GROUP BY CUBE ("EmployeeID", "ShipDate")
