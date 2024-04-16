select bom2."BillOfMaterialsID" 
	  ,coalesce (bom2."ProductAssemblyID", '0') as "ProductAssemblyID_0" 
	  ,bom2."ComponentID" 
	  ,bom2."UnitMeasureCode" 
from "Production"."BillOfMaterials" bom2 