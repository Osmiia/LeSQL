use Fletnix

DELETE FROM Genre
DELETE FROM Movie_Director
DELETE FROM Movie_Cast
DELETE FROM Movie_Genre
DELETE FROM Country
DELETE FROM Payment
DELETE FROM Contract
DELETE FROM Movie
DELETE FROM Person
DELETE FROM Movie_Cast
DELETE FROM Customer
DELETE FROM Watchhistory

--Genre
INSERT INTO Genre VALUES ('Action','Creative works characterized by emphasis on exciting action sequences')
INSERT INTO Genre VALUES ('Drama','Fictional devision between comedy and tragedy')
INSERT INTO Genre VALUES ('Family','Movies suitable for a wide range of age groups')
INSERT INTO Genre VALUES ('Sci-Fi','Fictional movies dealing with imaginitive content such as futuristic settings, futuristic science and technology, space travel, time travel, parrallel universes and extraterrestrial life')

--Movie_Director
INSERT INTO Movie_Director VALUES ('11','83616')
INSERT INTO Movie_Director VALUES ('11','83617')
INSERT INTO Movie_Director VALUES ('12','83616')
INSERT INTO Movie_Director VALUES ('12','83617')

--Movie_Cast
INSERT INTO Movie_Cast VALUES ('11','393411','Neo')
INSERT INTO Movie_Cast VALUES ('11','729933','Trinity')
INSERT INTO Movie_Cast VALUES ('11','151786','Morpheus')

--Movie_Genre
INSERT INTO Movie_Genre VALUES ('11','Action')
INSERT INTO Movie_Genre VALUES ('11','Sci-Fi')

--Country
INSERT INTO Country VALUES ('The Netherlands')
INSERT INTO Country VALUES ('Belgium')

--Payment
INSERT INTO Payment VALUES ('Mastercard')
INSERT INTO Payment VALUES ('Visa')
INSERT INTO Payment VALUES ('Amex')

--Contract
INSERT INTO Contract VALUES ('Basic','4','0')
INSERT INTO Contract VALUES ('Premium','5','20')
INSERT INTO Contract VALUES ('Pro','6','40')

--Movie
INSERT INTO Movie VALUES (11, 'Matrix, The', 122, 'Description of Matrix, The', 1999, NULL, NULL, '2.50', 'https://www.youtube.com/watch?v=oP3XFCdjRuw%27')
INSERT INTO Movie VALUES (12, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, NULL, 11, '2.00', 'https://www.youtube.com/watch?v=jT4KEiUh7T4%27')
INSERT INTO Movie VALUES (13, 'Matrix Revolutions, The', 129, 'Description of Matrix Revolutions, The', 2003, NULL, 11, '2.00', 'https://www.youtube.com/watch?v=hMbexEPAOQI')
INSERT INTO Movie VALUES (14, 'Star Wars', 129, 'Description of Star Wars', 1977, NULL, 11, '3.00', 'https://www.youtube.com/watch?v=bD7bpG-zDJQ')


--Customer
INSERT INTO Customer VALUES ('peter@pan.de','Pan','Peter','Mastercard','0123456789','Basic','2014-10-01','2014-10-28','pp123','peterpass','The Netherlands','M','1971-06-26')
INSERT INTO Customer VALUES ('guy@monk.nl','Threepwood','Guybrush','Visa','333555777','Premium','2014-01-01',NULL,'gm4ever','guypass','Belgium','M','1972-03-03')
INSERT INTO Customer VALUES ('tim@hendrixen.nl','Hendrixen','Tim','Visa','782710389','Premium','2017-11-14',NULL,'timmeh','Welkom01','The Netherlands','M','1997-08-02')
INSERT INTO Customer VALUES ('sjon@jansen.nl','Jansen','Sjon','Visa','444555666','Premium','2017-11-14',NULL,'sjonneh','Welkom01','The Netherlands','M','1994-12-22')
INSERT INTO Customer VALUES ('Barry@badboi.nl','Badboi','Barry','Visa','111222333','Premium','2017-11-14',NULL,'Barryboi','Badass01','Belgium','F','1991-10-02')
INSERT INTO Customer VALUES ('Fred@Frank.nl','Frank','Fred','Visa','777888999','Premium','2017-11-14','2017-12-30','Freddie','Frankert01','Belgium','M','1968-04-02')
INSERT INTO Customer VALUES ('Harry@sjonsen.nl','Sjonsen','Harry','Visa','111333555','Premium','2017-11-14','2017-12-30','Harrydeman','Sjonsen01','Belgium','M','1945-10-12')
INSERT INTO Customer VALUES ('Henk@Henkert.nl','Henkert','Henk','Visa','222444666','Premium','2017-12-14','2019-12-30','Henkerttenkert','Henkdedenktank01','The Netherlands','M','1918-08-12')
INSERT INTO Customer VALUES ('Barry@Batsert.nl','Batsert','Barry','Visa','954928987','Premium','2017-12-14','2019-12-30','Barrybatsert','Barrydebatser87349','The Netherlands','M','1998-09-12')
INSERT INTO Customer VALUES ('Joris@Huinink.nl','Huinink','Joris','Mastercard','696969420','Premium','2017-12-14','2019-12-30','jorisdecooleboi','joris928347947','The Netherlands','M','1998-11-05')

--Watchhistory
INSERT INTO watchhistory VALUES ('11','peter@pan.de','01-10-2014','2.50','1')
INSERT INTO watchhistory VALUES ('11','peter@pan.de','02-10-2014','2.50','0')
INSERT INTO watchhistory VALUES ('12','guy@monk.nl','10-03-2014','2.00','0')

SELECT *
FROM Movie

SELECT *
FROM Watchhistory