use master
go

DROP DATABASE Fletnix
go

CREATE DATABASE Fletnix
go

use Fletnix
go

CREATE TABLE Contract(
contract_type		VARCHAR(10)		NOT NULL,
price_per_month		NUMERIC(5,2)	NOT NULL,
discount_percentage	NUMERIC (2)		NOT NULL,
)

CREATE TABLE Customer(
customer_mail_address	VARCHAR(255)	NOT NULL,
lastname				VARCHAR (50)	NOT NULL,
firstname				VARCHAR (50)	NOT NULL,
payment_method			VARCHAR (10)	NOT NULL,
payment_card_number		VARCHAR (30)	NOT NULL,
contract_type			VARCHAR (10)	NOT NULL,	
subscription_start		DATE			NOT NULL,
subscription_end		DATE			NULL,
user_name				VARCHAR (30)	NOT NULL,
password				VARCHAR (50)	NOT NULL,
country_name			VARCHAR (50)	NOT NULL,
gender					CHAR(1)			NULL,
birth_date				DATE			NUll,
)

CREATE TABLE Watchhistory(
movie_id				INT				NOT NULL,
customer_mail_address	VARCHAR (255)	NOT NULL,
watch_date				DATE			NOT NULL,
price					NUMERIC(5,2)	NOT NULL,
invoiced				bit				NOT NULL,
)

CREATE TABLE Country(
country_name	VARCHAR(50)		NOT NULL,
)

CREATE TABLE Payment(
payment_method	VARCHAR(10)		NOT NULL,
)

CREATE TABLE Movie_Cast(
movie_id	INT				NOT NULL,
personal_id	INT				NOT NULL,
role		VARCHAR(255)	NOT NULL,
)

CREATE TABLE Movie(
movie_id			INT				NOT NULL,
title				VARCHAR(255)	NOT NULL,
duration			INT				NULL,
description			VARCHAR(255)	NULL,
publication_year	INT				NULL,
cover_image			VARCHAR(255)	NULL,
previous_part		INT				NULL,
price				NUMERIC(5,2)	NOT NULL,
URL					VARCHAR(255)	NULL,
)

CREATE TABLE Person(
person_id	INT			NOT NULL,
lastname	VARCHAR(50) NOT NULL,
firstname	VARCHAR(50)	NOT NULL,
gender		CHAR(1)		NULL,
)

CREATE TABLE Movie_Director(
movie_id	INT NOT NULL,
person_id	INT	NOT NULL,
)

CREATE TABLE Movie_Genre(
movie_id	INT				NOT NULL,
genre_name	VARCHAR(255)	NOT NULL,
)
go


CREATE TABLE Genre(
genre_name	VARCHAR(255)	NOT NULL,
description	VARCHAR(255)	NULL,
)
go

--Primary Keys toevoegen
ALTER TABLE Country
ADD CONSTRAINT pk_Country
PRIMARY KEY (country_name)

ALTER TABLE Customer
ADD CONSTRAINT pk_Customer
PRIMARY KEY (customer_mail_address)

--Foreign Keys toevoegen
ALTER TABLE Customer
ADD CONSTRAINT fk_Customer_Country
FOREIGN KEY (country_name) REFERENCES Country (country_name)