
select distinct 
	   p1."DueDate"
from "Purchasing"."PurchaseOrderDetail" p1
inner join "Purchasing"."PurchaseOrderDetail" p2   
on p1."DueDate" <> p2."DueDate"
where p1."ProductID" = p2."ProductID" 
