use ecommerce;

-- 1. List all customers along with their city and state.

select first_name,last_name,city,state 
from customers;

-- 2. Show all products with their category name.

SELECT p.product_name, c.category_name
FROM products p
JOIN categories c ON p.category_id = c.category_id;

-- 3. Display each order with the customer’s full name.

select o.order_id,c.first_name,c.last_name,o.order_date,o.total_amount
from orders o
join customers c on o.customer_id = c.customer_id;

-- 4. List order items with product names and unit prices.

select oi.order_item_id,p.product_name,oi.quantity,oi.unit_price
from order_items oi
join products p on oi.product_id = p.product_id;

-- 5. Show all products and include their category name even if the category is missing.

SELECT p.product_name, c.category_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;

-- 6. Get the total number of orders placed by each customer.

select c.first_name,c.last_name,count(o.order_id) as total_orders
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id;

-- 7. List each customer with their total spending.

select c.first_name,c.last_name,sum(o.total_amount) as total_spend
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id; 

-- 8. Show each product with the total quantity sold.

select p.product_name,sum(oi.quantity) as total_quantity_sold
from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_id;

-- 9. Find the total number of order items for each order.

select o.order_id,count(oi.order_item_id) as total_items
from orders o
join order_items oi on o.order_id = oi.order_id
group by o.order_id;

-- 10. List all orders placed in 2024 with customer names.

select o.order_id,c.first_name,c.last_name,o.order_date,o.total_amount
from orders o
join customers c on o.customer_id = c.customer_id
where year(o.order_date) = 2024;

-- 11. Get a list of products that have never been ordered.

select p.product_name
from products p
left join order_items oi on p.product_id = oi.product_id
where order_item_id 
group by p.product_name;

-- 12. Display customers who placed more than 2 orders.

select c.first_name,c.last_name,count(o.order_id) as order_count
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id
having count(o.order_id) > 2;

-- 13. List top 5 customers who spent the most money.

select c.first_name,c.last_name,sum(o.total_amount) as total_spend 
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id
order by total_spend desc
limit 5;

-- 14. Show all orders where the total quantity of items ordered was greater than 10.

select o.order_id,sum(oi.quantity) as total_quantity
from orders o
join order_items oi on o.order_id = oi.order_id
group by o.order_id
having sum(oi.quantity) > 10;

-- 15. Display each product with total revenue generated.

select p.product_name,sum(oi.quantity * oi.quantity) as total_revenue
from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_id;

-- 16. Get each customer’s most recent order date.

select c.first_name,c.last_name,max(o.order_date) as last_order
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id;

-- 17. Find all customers who signed up but never placed an order.

select c.first_name,c.last_name
from customers c
left join orders o on c.customer_id = o.customer_id
where o.order_id
group by c.customer_id;

-- 18. List the total revenue generated for each product category.

select cat.category_name,sum(oi.quantity * oi.unit_price) as revenue
from categories cat
join products p on cat.category_id = p.category_id
join order_items oi on p.product_id = oi.product_id
group by cat.category_id;

-- 19. Display each city and the total number of customers from that city.

select city,count(customer_id) as customer_count
from customers
group by city
order by customer_count desc;

-- 20. Find the most frequently ordered product (by total quantity).

select p.product_name,sum(oi.quantity) as total_quantity
from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_id
order by total_quantity desc
limit 1;

-- 21. Find customers who ordered the most expensive product

SELECT c.customer_id, c.first_name,c.last_name
FROM customers c
WHERE c.customer_id in
(select o.customer_id 
from orders o
join order_items oi on o.order_id = oi.order_id
where oi.product_id =
(select product_id as product_prise
from products
order by product_prise desc
limit 1));







