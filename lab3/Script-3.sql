
select pb."BusinessEntityID"
	  ,pv."BusinessEntityID"
from "Person"."BusinessEntity" pb
	right outer join "Purchasing"."Vendor" pv    
on pb."BusinessEntityID" = pv."BusinessEntityID" 