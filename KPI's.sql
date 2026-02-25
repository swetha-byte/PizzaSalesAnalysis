select * from pizza_sales

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales

select sum(total_price) / count(distinct order_id) as Avg_Order_Value 
from pizza_sales

select sum(quantity) as Total_Pizza_Sold from pizza_sales


select count(distinct order_id) as Total_orders from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal(10,2)) 
as decimal(10,2)) as Average_pizzas_per_order from pizza_sales