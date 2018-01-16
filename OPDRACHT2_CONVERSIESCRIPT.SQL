/*
ATTENTIE: Bij het toevoegen van een nieuw persoon, die geen director is,
moet de volgende code worden opgeteld bij om duplicaten met het person_id te voorkomen:
	(SELECT TOP 1 CAST(id AS INT) AS person_id 
	FROM MYIMDB.dbo.Imported_Directors
	ORDER BY person_id desc)
*/


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

--Imported_Directors
INSERT INTO Fletnix.dbo.Person
SELECT		CAST (id AS int)	AS person_id,
			LEFT (LName, 50)	AS lastname,
			LEFT (FName, 50)	AS firstname,
			NULL				AS gender
FROM		MYIMDB.dbo.Imported_Directors

--Imported_Person
INSERT INTO Fletnix.dbo.Person
SELECT		CAST (id AS int) + 
								(SELECT TOP 1 CAST(id AS INT) AS person_id 
								FROM MYIMDB.dbo.Imported_Directors
								ORDER BY person_id desc)
										AS person_id,
			LEFT (LName, 50)			AS lastname,
			LEFT (FName, 50)			AS Firstname,
			CAST (Gender AS char(1))	AS gender
FROM		MYIMDB.dbo.Imported_Person

--Imported_Movie
INSERT INTO Fletnix.dbo.Movie (movie_id, title, publication_year, price)
SELECT		CAST (Id AS int)	AS movie_id,
			LEFT (Name, 255)	AS title,
			CAST (Year AS int)	AS publication_year,
			999.99				AS price
FROM		MYIMDB.dbo.Imported_Movie

--Imported_Cast
INSERT INTO Fletnix.dbo.Movie_Cast
SELECT DISTINCT	CAST	(Mid AS int)	AS movie_id,
				CAST	(Pid AS int) + 
								(SELECT TOP 1 CAST(id AS INT) AS person_id 
								FROM MYIMDB.dbo.Imported_Directors
								ORDER BY person_id desc)
										AS person_id,
				LEFT(Role, 255)			AS role
FROM MYIMDB.dbo.Imported_Cast

--Imported_Genre
INSERT INTO Fletnix.dbo.Genre
SELECT DISTINCT LEFT (genre, 255),
				LEFT ('Description of the genre '+ genre, 255)
FROM MYIMDB.dbo.Imported_Genre

--Imported_Genre > Movie_Genre
INSERT INTO Fletnix.dbo.Movie_Genre
SELECT DISTINCT		CAST (Id AS int) AS movie_id,
					LEFT (Genre, 255) AS genre_name
FROM MYIMDB.dbo.Imported_Genre

--Imported_Movie_Directors
INSERT INTO Fletnix.dbo.Movie_Directors
SELECT	CAST (Mid AS int) AS movie_id,
		CAST (Did AS int) AS person_id
FROM MYIMDB.dbo.Imported_Movie_Directors