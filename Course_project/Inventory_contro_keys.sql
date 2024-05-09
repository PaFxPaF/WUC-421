--Добавление внешних ключей к таблицам
alter table "Products"
add constraint "FK_Products_Cell"
foreign key ("Cell_ID")
references "Cells" ("ID");

alter table "Cells"
add constraint "FK_Cells_Warehouse"
foreign key ("Warehouse_ID")
references "Warehouses" ("ID");

alter table "Orders"
add constraint "FK_Orders_Counterparty"
foreign key ("Counterparty_ID")
references "Counterparties" ("ID");

alter table "Discounts"
add constraint "FK_Discounts_Counterparty"
foreign key ("Counterparty_ID")
references "Counterparties" ("ID");

alter table "Documents"
add constraint "FK_Documents_Product"
foreign key ("Product_ID")
references "Products" ("ID");

alter table "Documents"
add constraint "FK_Documents_Order"
foreign key ("Order_ID")
references "Orders" ("ID");