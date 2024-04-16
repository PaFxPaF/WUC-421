select ps."ProductSubcategoryID" 
	  ,ps."Name" 
from "Production"."ProductSubcategory" ps 
where ps."Name" in ('Derailleurs', 'Headsets', 'Wheels');