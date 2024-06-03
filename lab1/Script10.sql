select e."BusinessEntityID" 
	  ,e."NationalIDNumber" 
	  ,e."LoginID" 
	  ,e."OrganizationNode" 
	  ,nullif (e."OrganizationNode", '0x5AE358')
from "HumanResources"."Employee" e 
