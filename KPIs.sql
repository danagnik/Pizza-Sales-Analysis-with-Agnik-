select* from pizza_sales

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales 

select SUM(total_price) / COUNT(distinct order_id) as Avg_order_value from pizza_sales

select SUM(quantity) as Total_pizza_sold from pizza_sales

select COUNT(distinct order_id) as Total_orders from pizza_sales
 
 select CAST( CAST(SUM(quantity) as decimal(10,2)) / 
 CAST(COUNT(distinct order_id ) as decimal(10,2)) as decimal (10,2))
 as Avg_Pizza_per_order from pizza_sales
 



 
