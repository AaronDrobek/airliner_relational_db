CREATE DATABASE airline;
use airline;

CREATE TABLE airplane_models(
id int NOT NULL auto_increment,
model_name varchar(255) NOT NULL,
top_speed double NOT NULL,
capacity int NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE destinations(
id int NOT NULL auto_increment,
airport_code varchar(100) NOT NULL,
airport_name varchar(255) NOT NULL,
country varchar(255) NOT NULL,
city varchar (255) NOT NULL,
domestic boolean NOT NULL,
international boolean NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE origin_terminals(
id int NOT NULL auto_increment,
terminal_name varchar(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE airplanes(
id int NOT NULL auto_increment,
tail_number varchar(255) NOT NULL,
in_service boolean NOT NULL,
origin_terminal_id int NOT NULL,
airplane_model_id int NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE crew(
id int NOT NULL auto_increment,
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
title varchar(255) NOT NULL,
years_employed double NOT NULL,
airplane_id int NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE boarding_passes(
id int NOT NULL auto_increment,
passenger_first_name varchar(255) NOT NULL,
passenger_last_name varchar(255) NOT NULL,
price double NOT NULL,
airplane_id int NOT NULL,
destination_id int NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE restaurants(
id int NOT NULL auto_increment,
cuisine varchar(255) NOT NULL,
restaurant_name varchar(255) NOT NULL,
24_hours boolean NOT NULL,
origin_terminal_id int NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE airplanes_destinations(
id int NOT NULL auto_increment,
airplane_id int NOT NULL,
destination_id int NOT NULL,
PRIMARY KEY(id)
);
