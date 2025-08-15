-- A. KPI's

--select * from pizza_sales;

-- select sum(total_price) Total_Revenue from pizza_sales;

--select sum(total_price)/count(distinct order_id) average_order_value from pizza_sales;

--select sum(quantity) total_pizzas_sold from pizza_sales;

--select count(distinct order_id) total_orders from pizza_sales;

--select cast(
--cast(sum(quantity) as decimal(10,2))/
--cast(count(distinct order_id) as decimal(10,2)) 
--as decimal(10,2)) average_pizzas_per_order 
--from pizza_sales;

-- B. Daily trend for total orders

--select datename(dw,order_date) order_day, count(distinct order_id) total_orders from pizza_sales
--group by datename(dw,order_date);

-- C. Monthly trend for total orders

--select datename(mm,order_date) month_name, count(distinct order_id) total_orders from pizza_sales
--group by datename(mm,order_date);

-- D. Percentage of sales by pizza category

--select pizza_category,cast(sum(total_price) as decimal(10,2)) total_revenue,
--cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) percentage_sales_by_category 
--from pizza_sales
--group by pizza_category

-- E. Percentage of sales by pizza size

--select pizza_size,cast(sum(total_price) as decimal(10,2)) total_revenue,
--cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) percentage_sales_by_size 
--from pizza_sales
--group by pizza_size
--order by 1

-- F. Total pizzas sold by pizza category

--select pizza_category, sum(quantity) Total_Quantity_Sold
--from pizza_sales
--group by pizza_category
--order by 2 desc

-- G. Top 5 pizzas by revenue

--select top 5 pizza_name, sum(total_price) Total_Revenue
--from pizza_sales
--group by pizza_name
--order by 2 desc

-- H. Bottom 5 pizzas by revenue

--select top 5 pizza_name, sum(total_price) Total_Revenue
--from pizza_sales
--group by pizza_name
--order by 2

-- I. Top 5 pizzas by quantity

--select top 5 pizza_name, sum(quantity) Total_Pizza_Sold
--from pizza_sales
--group by pizza_name
--order by 2 desc

-- J. Bottom 5 pizzas by quantity

--select top 5 pizza_name, sum(quantity) Total_Pizza_Sold
--from pizza_sales
--group by pizza_name
--order by 2

-- K. Top 5 pizzas by total orders

--select top 5 pizza_name,count(distinct order_id)  Total_orders
--from pizza_sales
--group by pizza_name
--order by 2 desc

-- L. Bottom 5 pizzas by total orders

--select top 5 pizza_name,count(distinct order_id)  total_orders
--from pizza_sales
--group by pizza_name
--order by 2
