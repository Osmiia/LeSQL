use Fletnix

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

--Movie
INSERT INTO Movie VALUES	(11, 'Matrix, The', 122, 'Description of Matrix, The', 1999, NULL, NULL, '2.50', 'https://www.youtube.com/watch?v=oP3XFCdjRuw%27'),
							(12, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, NULL, 11, '2.00', 'https://www.youtube.com/watch?v=jT4KEiUh7T4%27'),
							(13, 'Matrix Revolutions, The', 129, 'Description of Matrix Revolutions, The', 2003, NULL, 11, '2.00', 'https://www.youtube.com/watch?v=hMbexEPAOQI'),
							(14, 'Star Wars', 129, 'Description of Star Wars', 1977, NULL, 11, '3.00', 'https://www.youtube.com/watch?v=bD7bpG-zDJQ');


--Person
INSERT INTO Person VALUES	('83616','Nicht','Michael','M'),
							('83617','de Visser','Bob','M'),
							('393411','Neo','Nassi','M'),
							('729933','Janssen','Famke','V'),
							('151786','Vrijman','Morgen','M');

--Genre
INSERT INTO Genre VALUES	('Action','Creative works characterized by emphasis on exciting action sequences'),
							('Drama','Fictional devision between comedy and tragedy'),
							('Family','Movies suitable for a wide range of age groups'),
							('Sci-Fi','Fictional movies dealing with imaginitive content such as futuristic settings, futuristic science and technology, space travel, time travel, parrallel universes and extraterrestrial life');

--Movie_Directors
INSERT INTO Movie_Directors VALUES	('11','83616'),
									('11','83617'),
									('12','83616'),
									('12','83617');

--Movie_Cast
INSERT INTO Movie_Cast VALUES	(11,'393411','Neo'),
								(11,'729933','Trinity'),
								(11,'151786','Morpheus');

--Movie_Genre
INSERT INTO Movie_Genre VALUES	('11','Action'),
								('11','Sci-Fi');

--Country
INSERT INTO Country VALUES	('The Netherlands'),
							('Belgium');

--Payment
INSERT INTO Payment VALUES	('Mastercard'),
							('Visa'),
							('Amex');

--Contract
INSERT INTO Contract VALUES ('Basic','4','0'),
							('Premium','5','20'),
							('Pro','6','40');

--Customer
INSERT INTO Customer VALUES ('peter@pan.de','Pan','Peter','Mastercard','0123456789','Basic','2014-10-01','2014-10-28','pp123','peterpass','The Netherlands','M','1971-06-26'),
							('guy@monk.nl','Threepwood','Guybrush','Visa','333555777','Premium','2014-01-01',NULL,'gm4ever','guypass','Belgium','M','1972-03-03'),
							('tim@hendrixen.nl','Hendrixen','Tim','Visa','782710389','Premium','2017-11-14',NULL,'timmeh','Welkom01','The Netherlands','M','1997-08-02'),
							('sjon@jansen.nl','Jansen','Sjon','Visa','444555666','Premium','2017-11-14',NULL,'sjonneh','Welkom01','The Netherlands','M','1994-12-22'),
							('Barry@badboi.nl','Badboi','Barry','Visa','111222333','Premium','2017-11-14',NULL,'Barryboi','Badass01','Belgium','F','1991-10-02'),
							('Fred@Frank.nl','Frank','Fred','Visa','777888999','Premium','2017-11-14','2017-12-30','Freddie','Frankert01','Belgium','M','1968-04-02'),
							('Harry@sjonsen.nl','Sjonsen','Harry','Visa','111333555','Premium','2017-11-14','2017-12-30','Harrydeman','Sjonsen01','Belgium','M','1945-10-12'),
							('Henk@Henkert.nl','Henkert','Henk','Visa','222444666','Premium','2017-12-14','2019-12-30','Henkerttenkert','Henkdedenktank01','The Netherlands','M','1918-08-12'),
							('Barry@Batsert.nl','Batsert','Barry','Visa','954928987','Premium','2017-12-14','2019-12-30','Barrybatsert','Barrydebatser87349','The Netherlands','M','1998-09-12'),
							('Joris@Huinink.nl','Huinink','Joris','Mastercard','696969420','Premium','2017-12-14','2019-12-30','jorisdecooleboi','joris928347947','The Netherlands','M','1998-11-05');

--Watchhistory
INSERT INTO watchhistory VALUES ('11','peter@pan.de','01-10-2014','2.50','1'),
('11','peter@pan.de','02-10-2014','2.50','0'),
('12','guy@monk.nl','10-03-2014','2.00','0');