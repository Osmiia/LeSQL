USE FLETNIX

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

/*********************
FOREIGN KEYS OPLOSSEN
*********************/
INSERT INTO Country
VALUES ('The Netherlands')

INSERT INTO Payment
VALUES ('Creditcard')

INSERT INTO Contract
VALUES ('Basic', '7.50', 0)


/************
OPDRACHT 1.B
************/
 
/*******
1.B.I
*******/

--Juist
INSERT INTO Person
VALUES ('1', 'Huinink', 'Joris', 'M');

INSERT INTO Customer
VALUES ('timhendrixen@gmail.com', 'Hendrixen', 'Tim', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'Osmia', 'Uluf', 'The Netherlands', 'M', '1998-04-02')	


--Onjuist
INSERT INTO Person
VALUES ('2', 'Hendrixen', 'Tim', 'G');

INSERT INTO Customer
VALUES ('jorishuinink@hotmail.nl', 'Huinink', 'Joris', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'JowJoris', 'Boer', 'The Netherlands', 'G', '1998-04-02')

/*******
1.B.II
*******/

--Juist
INSERT INTO Movie
VALUES ('1', 'ABCD', '', '', '2000', '', NULL, '2.50', '')

--Onjuist
INSERT INTO Movie
VALUES ('2', 'EFGH', '', '', '1889', '', NULL, '2.50', '')

INSERT INTO Movie
VALUES ('3', 'IJKL', '', '', '2019', '', NULL, '2.50', '')

/*******
1.B.III
*******/

--Juist
INSERT INTO Customer
VALUES ('willemweenink@gmail.com', 'Weenink', 'Willem', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'WWeenink', 'Kip', 'The Netherlands', 'M', '1998-04-02')	

--Onjuist
INSERT INTO Customer
VALUES ('rensdoppen@hotmail.nl', 'Doppen', 'Rens', 'Creditcard', '123456789', 'Basic', '2018-12-31', '2018-01-01', 'Rejeinz', 'Dop2Dop', 'The Netherlands', 'M', '1998-04-02')

/*******
1.B.IV
*******/

--Juist
INSERT INTO Customer
VALUES ('jebroer@hotmail.com', 'Broer', 'Je', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'Arnhem123', 'Jebroer456', 'The Netherlands', 'M', '1998-04-02')	

--Onjuist
INSERT INTO Customer
VALUES ('jwz@gmail.com', 'Wz', 'J', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'Arnhem123', 'JWZ123', 'The Netherlands', 'M', '1998-04-02')	

/*******
1.B.V
*******/

--Juist
INSERT INTO Customer
VALUES ('HeijrinkG@gmail.com', 'Heijrink', 'Gerben', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'GHeij', 'DB4Life', 'The Netherlands', 'M', '1980-03-19')

INSERT INTO Watchhistory
VALUES ('1', 'HeijrinkG@gmail.com', '2018-06-06', '2.50', '0')
--Onjuist
INSERT INTO Watchhistory
VALUES ('1', 'HeijrinkG@gmail.com', '2017-09-03', '2.50', '0')

/************
OPDRACHT 1.C
************/

/***********************************
1.C.I (Duration niet kleiner dan 0)
***********************************/

--Juist
INSERT INTO Movie
VALUES ('4', 'ZYXW', '0', '', '2000', '', NULL, '2.50', '')

--Onjuist
INSERT INTO Movie
VALUES ('5', 'LOOL', '-1', '', '2000', '', NULL, '2.50', '')

/***********************************
1.C.II (Mail adres bevat '@' en '.'
***********************************/

--Juist
INSERT INTO Customer
VALUES ('Hiephoi@gmail.com', 'Heijrink', 'Gerben', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'HiepH', 'HoiH', 'The Netherlands', 'M', '1980-03-19')

--Onjuist
INSERT INTO Customer
VALUES ('Blabla!gmail#com', 'Bla', 'Bla', 'Creditcard', '123456789', 'Basic', '2018-01-01', '2018-12-31', 'Bla', 'Bla', 'The Netherlands', 'M', '1980-03-19')

/***********************************
1.C.III (Korting niet kleiner dan 0)
***********************************/

--Juist
INSERT INTO Contract
VALUES ('Premium', '10.00', '25')

--Onjuist
INSERT INTO Contract
VALUES ('Ultimate', '12.50', '-1')