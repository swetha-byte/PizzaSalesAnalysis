select * from pizza_sales

select datename(dw,order_date) as order_day, count(distinct order_id) as Total_orders 
from pizza_sales group by datename(Dw,order_date)


select datename(m,order_date)as month, count(distinct order_id) as Total_Orders
from pizza_sales group by datename(m,order_date)



select pizza_category,cast(sum(total_price) * 100/
(select sum(total_price) from pizza_sales) as decimal(10,2)) as total_percentage
from pizza_sales
group by pizza_category


select pizza_category,sum(total_price) as total_sales,cast(sum(total_price)  * 100/
(select sum(total_price) from pizza_sales where month(order_date) = 1)
as decimal(10,2)) as total_percentage
from pizza_sales
where month(order_date) = 1
group by pizza_category


select pizza_size,cast(sum(total_price) as decimal(10,2)) as total_sales,cast(sum(total_price)* 100 /
(select sum(total_price) from pizza_Sales where datepart(quarter, order_date) =1) as decimal(10,2))  as total_percentage 
from pizza_sales
where datepart(quarter, order_date) =1
group by pizza_size
order by total_percentage desc



select pizza_category,sum(quantity) as total_qty_sold from pizza_sales
where month(order_date) = 3
group by pizza_category
order by total_qty_sold desc


select top 5 pizza_name , sum(total_price) as Total_Revenue,sum(quantity) as total_qty_sold,
count(distinct(order_id)) as total_orders
from pizza_sales
group by pizza_name
order by Total_Revenue



select  top 5 pizza_name , sum(total_price) as Total_Revenue,sum(quantity) as total_qty_sold
from pizza_sales
group by pizza_name
order by Total_Revenue desc

select top 5 pizza_name , sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue asc
