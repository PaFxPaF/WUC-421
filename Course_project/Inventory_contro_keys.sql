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

--Добавление ограничений к таблице "Скидки"
alter table "Discounts"
add constraint "(DateEnd>DateStart)"
check ("DateEnd">"DateStart");

alter table "Discounts"
add constraint "(Discount_amount_not_null)"
check ("Discount_amount" >= 0);

--Добавление ограничений к таблице "Документы"
alter table "Documents"
add constraint "(Quantity_not_null)"
check ("Quantity" > 0);