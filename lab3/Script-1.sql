
select sp."CommissionPct" 
	  ,p."FirstName" 
	  ,p."LastName" 
from "Person"."Person" p 
	inner join "Sales"."SalesPerson" sp 
	on p."BusinessEntityID" = sp."BusinessEntityID" 
