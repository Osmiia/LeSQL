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
INSERT INTO Genre VALUES	('Action',		'Creative works characterized by emphasis on exciting action sequences'),
							('Drama',		'Fictional devision between comedy and tragedy'),
							('Family',		'Movies suitable for a wide range of age groups'),
							('Sci-Fi',		'Fictional movies dealing with imaginitive content such as futuristic settings, futuristic science and technology, space travel, time travel, parrallel universes and extraterrestrial life'),
							('Crime',		'Description of Crime genre'),
							('Adventure',	'Genre that  typically use their action scenes to display and explore exotic locations in an energetic way.'),
							('Fantasy',		'Set in a fictional universe, often, but not always, without any locations, events, or people referencing the real world.');
--Movie
INSERT INTO Movie VALUES	(11, 'Matrix, The',					136,	'Description of Matrix, The',				1999,	NULL,	NULL,	'2.49',	'https://www.youtube.com/watch?v=oP3XFCdjRuw%27'),
							(12, 'Matrix Reloaded, The',		106,	'Description of Matrix Reloaded, The',		2003,	NULL,	11,		'1.99',	'https://www.youtube.com/watch?v=jT4KEiUh7T4%27'),
							(13, 'Matrix Revolutions, The',		129,	'Description of Matrix Revolutions, The',	2003,	NULL,	12,		'1.49', 'https://www.youtube.com/watch?v=hMbexEPAOQI'),
							(14, 'Star Wars',					121,	'Description of Star Wars',					1977,	NULL,	NULL,	'2.99', 'https://www.youtube.com/watch?v=bD7bpG-zDJQ'),
							(15, 'Shawshank Redemption, The',	144,	'Description of Shawhank Redemption, The',	1994,	NULL,	NULL,	'4.99', 'https://www.youtube.com/watch?v=6hB3S9bIaco'),
							(16, 'Godfather, The',				175,	'Description of Godfather, The',			1972,	NULL,	NULL,	'3.49', 'https://www.youtube.com/watch?v=sY1S34973zA'),
							(17, 'Godfather II, The',			202,	'Description of Godfather, The',			1974,	NULL,	16,		'3.29', 'https://www.youtube.com/watch?v=qJr92K_hKl0');


--Person
INSERT INTO Person VALUES	(1, 'Reeves',		'Keanu',	'M'),
							(2, 'Fishburne',	'Laurence',	'M'),
							(3, 'Moss',			'Carrie-Anne',	'F'),
							(4, 'Wachowski',	'Lana', 'F'),
							(5, 'Wachowski',	'Lilly', 'F'),
							(6, 'Hamill',		'Mark', 'M'),
							(7, 'Ford',			'Harrison', 'M'),
							(8, 'Fisher',		'Carrie', 'F'),
							(9, 'Lucas',		'George', 'M');
							

--Movie_Cast
INSERT INTO Movie_Cast
VALUES		(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Reeves'		AND	firstname =	'Keanu'),		'Neo'),
			(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Moss'			AND	firstname = 'Carrie-Anne'),	'Trinity'),
			(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Fishburne'	AND	firstname =	'Laurence'),	'Morpheus'),
			(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Reeves'		AND	firstname =	'Keanu'),		'Neo'),
			(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Moss'			AND	firstname = 'Carrie-Anne'),	'Trinity'),
			(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Fishburne'	AND	firstname =	'Laurence'),	'Morpheus'),
			(13,	(SELECT	person_id	FROM Person		WHERE lastname = 'Reeves'		AND	firstname =	'Keanu'),		'Neo'),
			(13,	(SELECT	person_id	FROM Person		WHERE lastname = 'Moss'			AND	firstname = 'Carrie-Anne'),	'Trinity'),
			(13,	(SELECT	person_id	FROM Person		WHERE lastname = 'Fishburne'	AND	firstname =	'Laurence'),	'Morpheus'),
			(14,	(SELECT	person_id	FROM Person		WHERE lastname = 'Hamill'		AND	firstname = 'Mark'),		'Luke Skywalker'),
			(14,	(SELECT	person_id	FROM Person		WHERE lastname = 'Ford'			AND	firstname =	'Harrison'),	'Han Solo'),
			(14,	(SELECT	person_id	FROM Person		WHERE lastname = 'Fisher'		AND	firstname =	'Carrie'),		'Princess Leia Organa');

--Movie_Genre
INSERT INTO Movie_Genre VALUES	(11,	'Action'),
								(11,	'Sci-Fi'),
								(12,	'Action'),
								(12,	'Sci-Fi'),
								(13,	'Action'),
								(13,	'Sci-Fi'),
								(14,	'Action'),
								(14,	'Adventure'),
								(14,	'Fantasy'),
								(15,	'Crime'),
								(15,	'Drama'),
								(16,	'Crime'),
								(16,	'Drama'),
								(17,	'Crime'),
								(17,	'Drama');


--Movie_Directors
INSERT INTO		Movie_Directors
VALUES			(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Wachowski'	AND	firstname =	'Lana')),
				(11,	(SELECT	person_id	FROM Person		WHERE lastname = 'Wachowski'	AND	firstname =	'Lilly')),
				(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Wachowski'	AND	firstname =	'Lana')),
				(12,	(SELECT	person_id	FROM Person		WHERE lastname = 'Wachowski'	AND	firstname =	'Lilly')),
				(13,	(SELECT	person_id	FROM Person		WHERE lastname = 'Wachowski'	AND	firstname =	'Lana')),
				(13,	(SELECT	person_id	FROM Person		WHERE lastname = 'Wachowski'	AND	firstname =	'Lilly')),
				(14,	(SELECT	person_id	FROM Person		WHERE lastname = 'Lucas'		AND	firstname =	'George'));		

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
INSERT INTO Customer VALUES ('peter@pan.de',		'Pan',			'Peter',	'Mastercard',	'012345678','Basic',	'2014-10-01',	'2018-10-28',	'pp123',			'peterpass',			'The Netherlands',	'M',	'1971-06-26'),
							('guy@monk.nl',			'Threepwood',	'Guybrush',	'Visa',			'333555777','Premium',	'2014-01-01',	NULL,			'gm4ever',			'guypass',				'Belgium',			'M',	'1972-03-03'),
							('tim@hendrixen.nl',	'Hendrixen',	'Tim',		'Visa',			'782710389','Premium',	'2017-11-14',	NULL,			'timmeh',			'Welkom01',				'The Netherlands',	'M',	'1997-08-02'),
							('sjon@jansen.nl',		'Jansen',		'Sjon',		'Visa',			'444555666','Premium',	'2017-11-14',	NULL,			'sjonneh',			'Welkom01',				'The Netherlands',	'M',	'1994-12-22'),
							('Barry@badboi.nl',		'Badboi',		'Barry',	'Visa',			'111222333','Premium',	'2017-11-14',	NULL,			'Barryboi',			'Badass01',				'Belgium',			'F',	'1991-10-02'),
							('Fred@Frank.nl',		'Frank',		'Fred',		'Visa',			'777888999','Premium',	'2017-11-14',	'2018-12-30',	'Freddie',			'Frankert01',			'Belgium',			'M',	'1968-04-02'),
							('Harry@sjonsen.nl',	'Sjonsen',		'Harry',	'Visa',			'111333555','Premium',	'2017-11-14',	'2018-12-30',	'Harrydeman',		'Sjonsen01',			'Belgium',			'M',	'1945-10-12'),
							('Henk@Henkert.nl',		'Henkert',		'Henk',		'Visa',			'222444666','Premium',	'2017-12-14',	'2019-12-30',	'Henkerttenkert',	'Henkdedenktank01',		'The Netherlands',	'M',	'1918-08-12'),
							('Barry@Batsert.nl',	'Batsert',		'Barry',	'Visa',			'954928987','Premium',	'2017-12-14',	'2019-12-30',	'Barrybatsert',		'Barrydebatser87349',	'The Netherlands',	'M',	'1998-09-12'),
							('Joris@Huinink.nl',	'Huinink',		'Joris',	'Mastercard',	'696969420','Premium',	'2017-12-14',	'2019-12-30',	'jorisdecooleboi',	'joris928347947',		'The Netherlands',	'M',	'1998-11-05');

--Watchhistory
INSERT INTO watchhistory VALUES ('11',	'peter@pan.de',		'2014-10-01',	0,	0),
								('11',	'guy@monk.nl',		'2014-10-02',	0,	0),
								('11',	'tim@hendrixen.nl',	'2017-12-23',	0,	0),
								('11',  'sjon@jansen.nl',	'2017-11-16',	0,	0),
								('11',	'Barry@badboi.nl',	'2017-11-30',	0,	0),
								('11',	'Fred@Frank.nl',	'2017-12-02',	0,	0),
								('11',	'Harry@sjonsen.nl',	'2017-12-07',	0,	0),
								('11',  'Henk@Henkert.nl',	'2017-12-28',	0,	0),
								('11',	'Barry@Batsert.nl', '2017-12-26',	0,	0),
								('11',	'Joris@Huinink.nl', '2017-12-18',	0,	0),		
								('12',	'peter@pan.de',		'2014-10-01',	0,	0),
								('12',	'guy@monk.nl',		'2014-10-02',	0,	0),
								('12',	'tim@hendrixen.nl',	'2017-12-23',	0,	0),
								('12',  'sjon@jansen.nl',	'2017-11-16',	0,	0),
								('12',	'Barry@badboi.nl',	'2017-11-30',	0,	0),
								('12',	'Fred@Frank.nl',	'2017-12-02',	0,	0),
								('12',	'Harry@sjonsen.nl',	'2017-12-07',	0,	0),
								('12',  'Henk@Henkert.nl',	'2017-12-28',	0,	0),
								('12',	'Barry@Batsert.nl', '2017-12-26',	0,	0),
								('12',	'Joris@Huinink.nl', '2017-12-18',	0,	0),
								('13',	'peter@pan.de',		'2014-10-01',	0,	0),
								('13',	'guy@monk.nl',		'2014-10-02',	0,	0),
								('13',	'tim@hendrixen.nl',	'2017-12-23',	0,	0),
								('13',  'sjon@jansen.nl',	'2017-11-16',	0,	0),
								('13',	'Barry@badboi.nl',	'2017-11-30',	0,	0),
								('13',	'Fred@Frank.nl',	'2017-12-02',	0,	0),
								('13',	'Harry@sjonsen.nl',	'2017-12-07',	0,	0),
								('13',  'Henk@Henkert.nl',	'2017-12-28',	0,	0),
								('13',	'Barry@Batsert.nl', '2017-12-26',	0,	0),
								('13',	'Joris@Huinink.nl', '2017-12-18',	0,	0),
								
								--3 Films in de afgelopen 2 weken
								('14',	'peter@pan.de',		'2018-01-06',	0,	0),
								('14',	'guy@monk.nl',		'2018-01-06',	0,	0),
								('14',	'tim@hendrixen.nl',	'2018-01-06',	0,	0),
								('14',  'sjon@jansen.nl',	'2018-01-06',	0,	0),
								('14',	'Barry@badboi.nl',	'2018-01-06',	0,	0),
								('14',	'Fred@Frank.nl',	'2018-01-06',	0,	0),
								('14',	'Harry@sjonsen.nl',	'2018-01-06',	0,	0),
								('14',  'Henk@Henkert.nl',	'2018-01-06',	0,	0),
								('14',	'Barry@Batsert.nl', '2018-01-06',	0,	0),
								('14',	'Joris@Huinink.nl', '2018-01-06',	0,	0),
								('15',	'peter@pan.de',		'2018-01-07',	0,	0),
								('15',	'guy@monk.nl',		'2018-01-07',	0,	0),
								('15',	'tim@hendrixen.nl',	'2018-01-07',	0,	0),
								('15',  'sjon@jansen.nl',	'2018-01-07',	0,	0),
								('15',	'Barry@badboi.nl',	'2018-01-07',	0,	0),
								('15',	'Fred@Frank.nl',	'2018-01-07',	0,	0),
								('15',	'Harry@sjonsen.nl',	'2018-01-07',	0,	0),
								('15',  'Henk@Henkert.nl',	'2018-01-07',	0,	0),
								('15',	'Barry@Batsert.nl', '2018-01-07',	0,	0),
								('15',	'Joris@Huinink.nl', '2018-01-07',	0,	0),
								('16',	'peter@pan.de',		'2018-01-09',	0,	0),
								('16',	'guy@monk.nl',		'2018-01-09',	0,	0),
								('16',	'tim@hendrixen.nl',	'2018-01-09',	0,	0),
								('16',  'sjon@jansen.nl',	'2018-01-09',	0,	0),
								('16',	'Barry@badboi.nl',	'2018-01-09',	0,	0),
								('16',	'Fred@Frank.nl',	'2018-01-09',	0,	0),
								('16',	'Harry@sjonsen.nl',	'2018-01-09',	0,	0),
								('16',  'Henk@Henkert.nl',	'2018-01-09',	0,	0),
								('16',	'Barry@Batsert.nl', '2018-01-09',	0,	0),
								('16',	'Joris@Huinink.nl', '2018-01-09',	0,	0);				

											