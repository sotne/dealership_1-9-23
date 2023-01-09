create table dealershiplot(
car_id serial primary key,
make VARCHAR(50),
model VARCHAR(50),
color VARCHAR(50),
year_ INTEGER,
price numeric(8,2)
);

create table customer(
customer_id serial primary key, 
first_name VARCHAR(50) not null, 
last_name VARCHAR(50) not null, 
email VARCHAR(50)
);

create table salesperson(
sales_person_id serial primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null  
);

create table mechanic(
mechanic_id serial primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null  
);

create table salesinvoice(
invoice_id serial primary key,
date_ TIMESTAMP,
price numeric(8,2),
car_id INTEGER,
salesperson_id INTEGER,
customer_id INTEGER,
foreign key(car_id) references dealershiplot(car_id),
foreign key(salesperson_id) references salesperson(sales_person_id),
foreign key(customer_id) references customer(customer_id)
);

create table serviceticket(
service_ticket_id serial primary key,
time_in TIMESTAMP,
time_out TIMESTAMP,
car_id INTEGER,
customer_id INTEGER,
mechanic_id INTEGER,
foreign key(car_id) references dealershiplot(car_id),
foreign key(customer_id) references customer(customer_id),
foreign key(mechanic_id) references mechanic(mechanic_id)
);
