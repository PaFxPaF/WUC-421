select s."BusinessEntityID" 
	  ,s."Name" 
	  ,s."SalesPersonID" 
from "Sales"."Store" s 
where s."SalesPersonID" is not null;