
select "BusinessEntityID", "rowguid", "ModifiedDate"
from "Person"."EmailAddress"
union 
select "BusinessEntityID", "rowguid", "ModifiedDate"
from "Person"."BusinessEntityAddress";
