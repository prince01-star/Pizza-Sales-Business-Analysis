use Pizza;
go

Select * from pizza_sales ;
go

Select sum(total_price) as Total_Revenue from pizza_sales ;
go

Select sum(total_price)/count(distinct order_id) as Avg_Order_Value from pizza_sales;
go

Select sum(quantity) as Total_Pizza_Sold from pizza_sales;
go

Select count(distinct order_id) as Total_Orders from pizza_sales;
go

Select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id)
as decimal(10,2)) as decimal(10,2)) as Avg_pizza_per_order from pizza_sales;
go

Select DATENAME(DW,order_date) as Order_Days , count(distinct order_id) as total_Order
from pizza_sales group by DATENAME(DW,order_date) ;
go

Select DATENAME(MONTH,order_date) as Order_Months , count(distinct order_id) as total_Order
from pizza_sales group by DATENAME(MONTH,order_date) order by total_Order DESC ;
go                                            
 