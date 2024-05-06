
select distinct 
	   p1."ProductID" 
from "Purchasing"."PurchaseOrderDetail" p1
inner join "Purchasing"."PurchaseOrderDetail" p2   
on p1."ProductID" = p2."ProductID" 
where p1."DueDate" <> p2."DueDate"
