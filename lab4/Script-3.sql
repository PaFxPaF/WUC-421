--Получите список всех PurchaseOrderDetailID, у которых UnitPrice выше UnitPrice c PurchaseOrderID = 73

select pod."PurchaseOrderDetailID" 
from "Purchasing"."PurchaseOrderDetail" pod 
where pod."UnitPrice" >
						(
						select "UnitPrice" 
						from "Purchasing"."PurchaseOrderDetail"
						where "PurchaseOrderID" = 73
						)