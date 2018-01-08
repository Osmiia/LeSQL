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
SELECT LEFT (LName, 50) AS lastname,
	LEFT (FName, 50) AS firstname,
	NULL AS gender
FROM MYIMDB.dbo.Imported_Directors

--Imported_Person
INSERT INTO Fletnix.dbo.Person
SELECT LEFT (LName, 50) AS lastname,
	LEFT (FName, 50) AS Firstname,
	CAST(Gender AS char(1)) AS gender
FROM MYIMDB.dbo.Imported_Person