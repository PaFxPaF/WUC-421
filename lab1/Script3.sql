select st."TerritoryID" 
	  ,st."Name" 
	  ,st."Group" 
	  ,st."SalesYTD" 
from "Sales"."SalesTerritory" st 
where st."SalesYTD" between 3000000 and 5000000;