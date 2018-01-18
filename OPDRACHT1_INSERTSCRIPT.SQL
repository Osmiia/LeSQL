USE Fletnix

DELETE FROM Movie_Directors
DELETE FROM Person
DELETE FROM Watchhistory
DELETE FROM Genre
DELETE FROM Movie_Cast
DELETE FROM Movie_Genre
DELETE FROM Country
DELETE FROM Payment
DELETE FROM Contract
DELETE FROM Customer
DELETE FROM Movie

--Genre
INSERT INTO Genre VALUES	('Action',	'Creative works characterized by emphasis on exciting action sequences'),
							('Drama',	'Fictional devision between comedy and tragedy'),
							('Family',	'Movies suitable for a wide range of age groups'),
							('Sci-Fi',	'Fictional movies dealing with imaginitive content such as futuristic settings, futuristic science and technology, space travel, time travel, parrallel universes and extraterrestrial life');

--Movie
INSERT INTO Movie VALUES	(11, 'Matrix, The',				122,	'Description of Matrix, The',				1999,	NULL,	NULL,	'2.50',	'https://www.youtube.com/watch?v=oP3XFCdjRuw%27'),
							(12, 'Matrix Reloaded, The',	106,	'Description of Matrix Reloaded, The',		2003,	NULL,	11,		'2.00',	'https://www.youtube.com/watch?v=jT4KEiUh7T4%27'),
							(13, 'Matrix Revolutions, The', 129,	'Description of Matrix Revolutions, The',	2003,	NULL,	11,		'2.00', 'https://www.youtube.com/watch?v=hMbexEPAOQI'),
							(14, 'Star Wars',				129,	'Description of Star Wars',					1977,	NULL,	11,		'3.00', 'https://www.youtube.com/watch?v=bD7bpG-zDJQ');


--Person
INSERT INTO Person VALUES	(11111, 'Nicht',	'Michael',	'M'),
							(22222, 'de Visser','Bob',		'M'),
							(33333, 'Neo',		'Nassi',	'M'),
							(44444, 'Janssen',	'Famke',	'F'),
							(55555, 'Vrijman',	'Morgen',	'M');

--Movie_Cast
INSERT INTO Movie_Cast
VALUES		(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Neo'		AND	firstname =	'Nassi'),	'Neo'),
			(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Janssen'	AND	firstname = 'Famke'),	'Trinity'),
			(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Vrijman'	AND	firstname =	'Morgen'),	'Morpheus');

--Movie_Genre
INSERT INTO Movie_Genre VALUES	(11,	'Action'),
								(11,	'Sci-Fi');

--Movie_Directors
INSERT INTO		Movie_Directors
VALUES			(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Nicht'	AND	firstname =	'Michael')),
				(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Neo'		AND	firstname =	'Nassi')),
				(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Nicht'	AND	firstname =	'Michael')),
				(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Neo'		AND	firstname =	'Nassi'));

--Country
INSERT INTO Country VALUES	('The Netherlands'),
							('Belgium');

--Payment
INSERT INTO Payment VALUES	('Mastercard'),
							('Visa'),
							('Amex');

--Contract
INSERT INTO Contract VALUES ('Basic',	4,	0),
							('Premium',	5,	20),
							('Pro',		6,	40);

--Customer
INSERT INTO Customer VALUES ('peter@pan.de',		'Pan',			'Peter',	'Mastercard',	'012345678','Basic',	'2014-10-01',	'2014-10-28',	'pp123',			'peterpass',			'The Netherlands',	'M',	'1971-06-26'),
							('guy@monk.nl',			'Threepwood',	'Guybrush',	'Visa',			'333555777','Premium',	'2014-01-01',	NULL,			'gm4ever',			'guypass',				'Belgium',			'M',	'1972-03-03'),
							('tim@hendrixen.nl',	'Hendrixen',	'Tim',		'Visa',			'782710389','Premium',	'2017-11-14',	NULL,			'timmeh',			'Welkom01',				'The Netherlands',	'M',	'1997-08-02'),
							('sjon@jansen.nl',		'Jansen',		'Sjon',		'Visa',			'444555666','Premium',	'2017-11-14',	NULL,			'sjonneh',			'Welkom01',				'The Netherlands',	'M',	'1994-12-22'),
							('Barry@badboi.nl',		'Badboi',		'Barry',	'Visa',			'111222333','Premium',	'2017-11-14',	NULL,			'Barryboi',			'Badass01',				'Belgium',			'F',	'1991-10-02'),
							('Fred@Frank.nl',		'Frank',		'Fred',		'Visa',			'777888999','Premium',	'2017-11-14',	'2017-12-30',	'Freddie',			'Frankert01',			'Belgium',			'M',	'1968-04-02'),
							('Harry@sjonsen.nl',	'Sjonsen',		'Harry',	'Visa',			'111333555','Premium',	'2017-11-14',	'2017-12-30',	'Harrydeman',		'Sjonsen01',			'Belgium',			'M',	'1945-10-12'),
							('Henk@Henkert.nl',		'Henkert',		'Henk',		'Visa',			'222444666','Premium',	'2017-12-14',	'2019-12-30',	'Henkerttenkert',	'Henkdedenktank01',		'The Netherlands',	'M',	'1918-08-12'),
							('Barry@Batsert.nl',	'Batsert',		'Barry',	'Visa',			'954928987','Premium',	'2017-12-14',	'2019-12-30',	'Barrybatsert',		'Barrydebatser87349',	'The Netherlands',	'M',	'1998-09-12'),
							('Joris@Huinink.nl',	'Huinink',		'Joris',	'Mastercard',	'696969420','Premium',	'2017-12-14',	'2019-12-30',	'jorisdecooleboi',	'joris928347947',		'The Netherlands',	'M',	'1998-11-05');

--Watchhistory
INSERT INTO watchhistory VALUES ('11',	'peter@pan.de',	'2014-10-01',	0,	0),
								('12',	'peter@pan.de',	'2014-10-02',	0,	0),
								('13',	'peter@pan.de',	'2014-10-02',	0,	0),
								('11',  'guy@monk.nl',	'2017-11-16',	0,	0);
								