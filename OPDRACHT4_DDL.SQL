use master
go

DROP DATABASE movie_awards
go

CREATE DATABASE movie_awards
go

USE movie_awards
go

CREATE TABLE award_results(
award_id		INT			NOT NULL,
movie_id		INT			NOT NULL,
person_id		INT			NOT NULL,
award_status		VARCHAR(1)		NOT NULL,
CONSTRAINT ck_award_status
CHECK (award_status = 'W' OR award_status = 'N'),
CONSTRAINT pk_award_results
PRIMARY KEY (award_id, movie_id, person_id)
)

CREATE TABLE awards(
award_id		INT			NOT NULL,
award_name		VARCHAR(255)		NOT NULL,
country_name		VARCHAR(255)		NOT NULL,
award_year		int			NOT NULL,
PRIMARY KEY (award_id),
)

CREATE TABLE award_status(
award_status		VARCHAR(1)		NOT NULL,
award_name		VARCHAR(255)		NOT NULL
PRIMARY KEY (award_status),
)

INSERT INTO		award_results
VALUES
(1,207992,550813,'W'),
(1,160492,276884,'N'),
(1,160492,950001,'N'),
(1,160492,68042,'N'),
(1,303564,54796,'N'),
(2,112290,351397,'N'),
(2,112290,950002,'N'),
(2,207992,950003,'W'),
(2,313474,165453,'N'),
(3,313474,351981,'N'),
(3,313474,191712,'N'),
(3,207992,950004,'W'),
(3,207992,540853,'W'),
(3,207992,950005,'W'),
(3,207992,950006,'W'),
(4,207992,950007,'W'),
(4,207992,950008,'W'),
(4,207992,950009,'W'),
(4,207992,950010,'W'),
(4,207992,950011,'W'),
(4,313474,165453,'N'),
(4,313474,950012,'N'),
(4,13789,950013,'N'),
(5,207992,950014,'N'),
(5,13789,950015,'W'),
(6,207992,464716,'N'),
(6,304862,303143,'W'),
(7,207992,550813,'N'),
(7,13789,950016,'W'),
(7,13789,283753,'W');	

INSERT INTO awards
VALUES
(1,'Best Film Editing','The Netherlands',2000),
(2,'Best Sound Effects','The Netherlands',2000),
(3,'Best Visual Effects','The Netherlands',2000),
(4,'Best Sound','New Zealand',2000),
(5,'Best Cinematography','New Zealand',2000),
(6,'Best Production','New Zealand',2000),
(7,'Best editing','New Zealand',2000);

INSERT INTO award_status
VALUES
('W','Won'),
('N','Nominated');