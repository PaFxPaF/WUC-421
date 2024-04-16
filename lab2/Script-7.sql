SELECT 
    	"EmployeeID"
		,"ShipDate"
    	,SUM("SubTotal") AS "TotalSubTotal"
		,GROUPING("EmployeeID") AS "Grouping"
FROM "Purchasing"."PurchaseOrderHeader"
GROUP BY GROUPING SETS("EmployeeID", "ShipDate")