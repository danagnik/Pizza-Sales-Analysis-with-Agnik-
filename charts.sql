--Hourly Trend for Total Pizzas Sold 

select DATEPART(hour, order_time) as order_hour, SUM(quantity) as Total_Pizzas_sold
from pizza_sales
group by DATEPART(hour, order_time)
order by DATEPART(hour, order_time)

--Weekly trend for total orders

select DATEPART(ISO_WEEK, order_date) as week_number, YEAR(order_date) as order_year, COUNT(distinct order_id) as Total_orders 
from pizza_sales
group by DATEPART(ISO_WEEK, order_date), YEAR(order_date)
order by DATEPART(ISO_WEEK, order_date), YEAR(order_date)


select pizza_category,
cast(sum(total_price) as decimal(10,2)) as Total_revenue,
cast((SUM(total_price) / (select SUM(total_price) from pizza_sales ))*100 as decimal(10,2)) as PCT 
from pizza_sales
group by pizza_category


select pizza_size, 
cast(sum(total_price) as decimal(10,2)) as Total_revenue,
cast((SUM(total_price) / (select SUM(total_price) from pizza_sales ))*100 as decimal(10,2)) as PCT 
from pizza_sales
group by pizza_size


select top 5 pizza_name, SUM(total_price) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue desc

select top 5 pizza_name, SUM(total_price) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue

select top 5 pizza_name, SUM(quantity) as Total_Pizza_Sold from pizza_sales
group by pizza_name
order by Total_Pizza_Sold desc

select top 5 pizza_name, SUM(quantity) as Total_Pizza_Sold from pizza_sales
group by pizza_name
order by Total_Pizza_Sold

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders 