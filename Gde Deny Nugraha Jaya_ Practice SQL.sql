-- no 1
select count(film_id) from film f 
where description like '%astronouts%'

--no 2
select count(film_id) from film f 
where rating='R' and replacement_cost>5 and replacement_cost <15

--no 3
select staff_id ,count(payment_id) as countpayment, sum(amount) as totalamount from payment p
group by staff_id 

--no 4
select avg(replacement_cost) as avgreplacecost from film f
group by rating 

--no 5
select customer.first_name, customer.last_name, customer.email, sum(payment.amount) as spentamount from payment 
inner join customer 
on payment.customer_id = customer.customer_id 
group by customer.customer_id 
order by sum(payment.amount) desc limit 5

--no 6
select film.title, inventory.store_id, count(inventory.inventory_id) from inventory  
inner join film 
on film.film_id = inventory.film_id 
group by film.title, inventory.store_id 
order by inventory.store_id asc

--no 7
select customer.first_name, customer.last_name, customer.email from payment 
inner join customer 
on payment.customer_id = customer.customer_id 
group by customer.customer_id 
having count(payment.payment_id)>=40
