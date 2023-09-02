
SELECT items.Item_Id, items.Descrption, items.Quantity_on_hand, purchase.Cost, purchase.vendor, purchase.Purchase_Date
,  purchase.Quantity 
,sales.Sale_date, sales.Customer_Id,sales.Price, sales.Quantity,items.Item_Type, items.Location, items.Unit
from items
left join item_sales on item_sales.Item_Id = items.Item_Id
left join sales on sales.Sale_Id = item_sales.Sale_Id
left join items_purchase on items_purchase.Item_Id = items.Item_Id
left join purchase on purchase.Purchase_Id = items_purchase.Purchase_Id
order by purchase.Purchase_Date
;