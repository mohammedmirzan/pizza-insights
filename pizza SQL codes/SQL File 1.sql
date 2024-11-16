CREATE DATABASE PIZZAHUT;
USE PIZZAHUT;
SELECT * FROM PIZZAS;

create table orders_details (
	order_details_id int not null,
	order_id int not null,
    pizza_id text not null,
    quantity int not null,
    primary key(order_details_id)
    );orders_details