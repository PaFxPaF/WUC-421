select p."ProductID" 
	  ,p."Name" 
	  ,coalesce ("Style", "Color", 'UNKNOWN') as "Meauserement"
from "Production"."Product" p 