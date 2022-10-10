create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table movie (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	date DATE default CURRENT_DATE
);

create table tickets (
	ticket_id SERIAL primary key,
	date DATE default CURRENT_DATE,
	amount numeric(3),
	ticket_total NUMERIC(3,2),
	customer_id INTEGER not null,
	movie_id INTEGER not null,
	foreign key (customer_id) references customers(customer_id),
	foreign key (movie_id) references movie(movie_id)
);

create table concessions (
	prod_id SERIAL primary key,
	prod_name VARCHAR(100),
	total_items NUMERIC(3),
	total_cost NUMERIC(8,2),
	customer_id INTEGER,
	foreign key (customer_id) references customers(customer_id)
);


-- I chose these relationships based on what was the main component we are trying to track. As for this, I believe everything should have a
-- relationship with tickets as tickets will help us understand more of what movies were seen on certain dates with what if there is truly a
-- relationship bewteen dates, concession choices and the movie that is being seen.