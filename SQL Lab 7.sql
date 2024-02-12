use sakila; 
# 1. Which actors last names are not repeated
select * from actor; 
select last_name from actor group by last_name having count(*) = 1;

# 2. Which last names appear more than once? 
select last_name from actor 
group by last_name having count(*) > 1;

# 3. Using the rental table, find out how many rentals were processed by each employee.
select * from rental;
select staff_id, count(inventory_id) as rental_count from rental
group by staff_id
order by rental_count; 

# 4.  find out how many films were released each year.
select * from film; 
select count(title) from film where release_year = 2006; # 1000 films were released in 2006

# 5. find out for each rating how many films were there. 
select * from film;  
select rating, count(rating) from film 
group by rating;

# 6. What is the mean length of the film for each rating type.
# Round off the average lengths to two decimal places
select * from film; 
select rating, round(avg(length), 2) as average_length 
from film
group by rating 
order by average_length; 

# 7. Which kind of movies (rating) have a mean duration of more than two hours?
select * from film; 
select rating, round(avg(length), 2) as average_length 
from film where average_length > 120
group by rating 
order by average_length; 

