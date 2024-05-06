
select "ProductID"
from "Production"."Product"
except
select "ProductID"
from "Production"."ProductInventory";
