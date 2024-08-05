
1) create a report of all state sales, quantity, discount , profit  with following aggregation ,
-- sum , avg, min , max, count	

select * from sales

select * from customer

select c.state,sum(s.sales) as sum_sales, avg(s.sales) as avg_sales, count(s.sales) as sales_count,
sum(s.quantity) as sum_quantity, min(s.discount) as min_discount, max(s.discount) as max_discount,profit
from sales as s
inner join customer as c
on s.customer_id =c.customer_id 
group by c.state,s.profit

--2) get data of all state and city's avg customer age 		

select * from customer
--state,city ,age
--age average

select city,state,avg(age) as "avg_age" from customer  group by city,state 

---3)get data of 2017 to 2018  with product name and sales per quantity 	
--product name,sales ,quantity,order_date(2017 -2018)

select * from product 

select * from sales

select p.product_name,s.order_date as order_date, sum(s.sales)/sum(s.quantity) as sales_per_quantity from sales as s
inner join product as p 
on s.product_id = p.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
group by p.product_name, s.order_date