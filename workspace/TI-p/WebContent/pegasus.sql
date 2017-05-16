
create database PegasusAirlines;
use PegasusAirlines;
create table Passenger
	( 
	p_ci varchar(10) not null primary key,
	p_lastName varchar(20) not null,
	p_firstName varchar(20) not null
	);
create table Flight
	(
	id_flight  integer(10) not null primary key,
	departure varchar(30)  not null  ,
	arrival varchar(30) not null,
	departure_date date not null,
	departure_time varchar(10) not null,
	arrival_time varchar(10) not null,
	flight_length integer(10) not null,
	seats integer(4) default 180,
	price integer(5)
	);
create table Ticket
	( 
	id_ticket int(10)auto_increment ,
	acquisition_date timestamp not null, 
	id_flight  integer(10),
	price integer(5) not null , 
	seat int(4) not null , 
	luggage boolean not null , 
	p_ci varchar(10) not null ,
	check (price >0),
	primary key(id_ticket),
	constraint ticket_ci_passenger_fk foreign key(p_ci)
	references Passenger(p_ci),
	constraint ticket_flight_fk foreign key(id_flight)
	references Flight(id_flight)
	); 


create table Booking
	( 
	id_booking  integer(10) primary key not null,
	id_ticket  int(10) default null,
	id_flight integer(10) not null,
	constraint booking_id_ticket_fk foreign key(id_ticket)
	references Ticket(id_ticket),
	constraint booking_id_flight_fk foreign key (id_flight)
	references Flight(id_flight)
	);
create table Employee
(
	id_employee integer(10) not null primary key,
	e_lastName varchar(20) not null,
	e_firstName varchar(20) not null,
	employee_job varchar(20) not null,
	salary integer(10) not null,
	check(salary >0),
	e_password varchar(25);
	
);

create table Employee_Flight
	(
	id_flight integer(10) not null,
	id_employee integer(10) not null,
	constraint employee_id_flight_fk foreign key (id_flight)
	references Flight(id_flight) ,
	constraint employee_id_employee_fk foreign key (id_employee)
	references Employee(id_employee)
	);


create table user(
u_email varchar(40),
u_password varchar(40),
u_userName varchar(40)
);

create table offers(
departure varchar(30),
arrival varchar(30),
price decimal(6,2),
seat int (4)
);

insert into user values("deliaalene@yahoo.com","11111","delia");
insert into employee values(
1111,'Gigoras','Madalina','stw',1200,'mada');
insert into employee values(
2222,'Popa','Delia','stw',1200,'delia');
insert into employee values(
3333,'Vasluianu','Ana','stw',1200,'ana');

insert into employee values(
4444,'Cojocaru','Iona','plt',2200,'iona');

insert into employee values(
5555,'Necula','Adi','plt',2200,'adi');

insert into flight values(332, 'Rome', 'Paris', '2017-05-22','22:30','00:30', 2, 100,70);
insert into flight values(333, 'Paris', 'Rome', '2017-05-25','15:15','17:20',2, 100,70);
insert into flight values(335, 'Bucharest', 'Milano', '2017-05-25', '12:30','14:30',2, 180,120);
insert into flight values(383, 'Bucharest', 'Amsterdam', '2017-05-29','09:50','17;50', 3, 180,110);
insert into flight values(337, 'Amsterdam', 'Bucharest', '2017-06-03', '08:00','16:00',3, 30,110);


insert into offers values('Beijing', 'Bucharest',200,100);
insert into offers values('Paris', 'Bucharest',100,100);
insert into offers values('Amsterdam', 'Bucharest',120,100);

insert into employee_flight values(332,1111);
insert into employee_flight values(332,4444);
insert into employee_flight values(332,5555);
insert into employee_flight values(332,2222);
insert into employee_flight values(332,1111);

insert into employee_flight values(333,1111);
insert into employee_flight values(333,4444);
insert into employee_flight values(333,5555);
insert into employee_flight values(333,2222);