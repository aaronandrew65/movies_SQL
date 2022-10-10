--DATA INSERTION
insert into customers (
	customer_id,
	first_name,
	last_name
) values(
	1,
	'Aaron',
	'Montoya'
);

insert into movie (
	movie_id,
	movie_name,
) values (
	1,
	'Avengers End Game'
);

insert into concessions(
	prod_id,
	prod_name,
	total_items,
	total_cost,
	customer_id
) values (
	1,
	'Skittles',
	1,
	3.00,
	1
);

insert into tickets (
	ticket_id,
	amount,
	ticket_total,
	customer_id,
	movie_id
) values (
	1,
	3,
	4.00
	1,
	1
)
