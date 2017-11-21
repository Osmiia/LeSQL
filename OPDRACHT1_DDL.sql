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
person_id	INT				NOT NULL,
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

CREATE TABLE Movie_Directors(
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

/*Aanmaken van Primary keys*/
ALTER TABLE Country
ADD CONSTRAINT pk_Country
PRIMARY KEY (country_name)

ALTER TABLE Contract
ADD CONSTRAINT pk_Contract
PRIMARY KEY (contract_type)

ALTER TABLE Payment
ADD CONSTRAINT pk_Payment
PRIMARY KEY (payment_method)

ALTER TABLE Customer
ADD CONSTRAINT pk_Customer
PRIMARY KEY (customer_mail_address)

ALTER TABLE WatchHistory
ADD CONSTRAINT pk_WatchHistory
PRIMARY KEY(movie_id, customer_mail_address, watch_date)

ALTER TABLE Movie
ADD CONSTRAINT pk_Movie
PRIMARY KEY (movie_id)

ALTER TABLE Movie_Cast
ADD CONSTRAINT pk_Movie_Cast
PRIMARY KEY (movie_id, person_id, role)

ALTER TABLE Person
ADD CONSTRAINT pk_Person
PRIMARY KEY (person_id)

ALTER TABLE Movie_Directors
ADD CONSTRAINT pk_Movie_Directors
PRIMARY KEY (movie_id, person_id)

ALTER TABLE Genre
ADD CONSTRAINT pk_Genre
PRIMARY KEY (genre_name)

ALTER TABLE Movie_Genre
ADD CONSTRAINT pk_Movie_Genre
PRIMARY KEY (movie_id, genre_name)

/*Aanmaken van foreign keys*/
--Customer
ALTER TABLE Customer
ADD CONSTRAINT fk_Customer_Country
FOREIGN KEY (country_name) REFERENCES Country (country_name)

--WatchHisotry
ALTER TABLE WatchHistory
ADD CONSTRAINT fk_WatchHistory_Customer
FOREIGN KEY (customer_mail_address) REFERENCES Customer (customer_mail_address)

--Movie
ALTER TABLE Movie
ADD CONSTRAINT fk_MOVIE_previous_part_movie_id
FOREIGN KEY (previous_part) REFERENCES Movie (movie_id)
