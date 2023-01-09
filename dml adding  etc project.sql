create or replace procedure add_mechanic(first_name VARCHAR(50), last_name VARCHAR(50))
language plpgsql
as $$
begin 
insert into mechanic(
	first_name,
	last_name
) values(
	first_name,
	last_name 
);
end;
$$;
call add_mechanic('james', 'charter');
call add_mechanic('micheal', 'phelps');


insert into customer(
	first_name, 
	last_name, 
	email
)
values(
	'joesph',
	'andrews',
	'jandrew@imgrat.com'
), (
	'julia',
	'carson',
	'juliac@gbe.com'
);


insert into dealershiplot(
	make,
	model,
	color,
	year_, 
	price 
) 
values(
	'honda',
	'accord',
	'red',
	'2013',
	'23000'
), (
	'porche',
	'911 carrera',
	'blue',
	'2007',
	'53200'
); 

insert into salesperson(
	first_name, 
	last_name
) values(
	'jacky',
	'james'
	
), (
	'christopher',
	'walker'
);

