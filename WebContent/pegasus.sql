create database PegasusAirlines;
use PegasusAirlines;
create table Passenger
	( 
	id_passenger integer(10) not null primary key,
	p_lastName varchar(50) not null,
	p_firstName varchar(50) not null,
	p_password varchar(50) not null,
	p_cnp integer(13) not null,
	p_email varchar(80) not null
	);
create table Ticket
	( id_ticket integer(10) primary key,
	acquisition_date DATE not null, 
	price integer(5) not null , 
	seat varchar(10) not null , 
	luggage boolean not null , 
	id_passenger integer(10) not null ,
	check (price >0),
	constraint ticket_id_passenger_fk foreign key(id_passenger)
	references Passenger(id_passenger)
	); 
create table Flight
	(
	id_flight  integer(10) not null primary key,
	departure varchar(50)  not null  ,
	arrival varchar(50) not null,
	departure_date date not null,
	flight_length integer(10) not null,
	seats integer(4) default 180
	);
create table Booking
	( 
	id_booking  integer(10) primary key not null,
	id_ticket  integer(10) not null,
	id_flight integer(10) not null,
	constraint booking_id_ticket_fk foreign key(id_ticket)
	references	Ticket(id_ticket),
	constraint booking_id_flight_fk foreign key (id_flight)
	references Flight(id_flight)
	);
create table Employee
(
	id_employee integer(10) not null primary key,
	e_companyId varchar(40) not null,
	e_lastName varchar(50) not null,
	e_firstName varchar(50) not null,
	e_cnp integer(13) not null ,
	employee_job varchar(30) not null,
	salary integer(10) not null,
	e_email varchar(50) not null,
	e_password varchar(50) not null,
	check(salary >0)	
);
create table Employee_Flight
	(
	id_employee_flight integer(10) not  null primary key,
	id_flight integer(10) not null,
	id_employee integer(10) not null,
	constraint employee_id_flight_fk foreign key (id_flight)
	references  Flight(id_flight) ,
	constraint employee_id_employee_fk foreign key (id_employee)
	references Employee(id_employee)
	);

insert into employee values(
1,'pa455','Gigoras','Madalina','2951112234567','stw',1200,'g.mada95@yahoo.com','portocale');
insert into employee values(
2,'pa211','Popa','Delia','2950021332411','stw',1200,'deliaalene@yahoo.com','cornulet');
insert into employee values(
3,'pa376','Vasluianu','Ana','2950110333333','stw',1200,'ana.vasluianu@yahoo.com','123456');
);
insert into employee values(
4,'pa991','Cojocaru','Iona','2950110333333','plt',2200,'iona.cojocaru@yahoo.com','caramea');
);
insert into employee values(
5,'pa853','Necula','Adi','2950550333333','plt',2200,'adi.necula@yahoo.com','urgot');
);
