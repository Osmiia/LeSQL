use		FLETNIX_DOCENT

-- 3A
SELECT		M.title, M.publication_year, G.genre_name
FROM		Movie M, Movie_Genre G
WHERE		M.movie_id = G.movie_id
ORDER BY	G.genre_name


-- 3B
SELECT	*
FROM	Movie
WHERE	publication_year BETWEEN '1990' AND '2010'


-- 3C
SELECT	lastname, firstname, subscription_start 
FROM	Customer
WHERE	subscription_end is NULL


--3D
SELECT P.person_id, M.title, P.firstname, P.lastname, MC.role
FROM Movie_Cast MC, Person P, Movie M
WHERE	MC.person_id = P.person_id
	AND	MC.movie_id =  M.movie_id
	AND title LIKE 'Terminator%'
	AND publication_year = 1991

--3E
SELECT M.title, publication_year
FROM Movie_Cast MC, Person P, Movie M
WHERE MC.movie_id = M.movie_id
	AND MC.person_id = P.person_id
	AND	P.firstname = 'Arnold'
	AND P.lastname = 'Schwarzenegger'


--3F
SELECT C.lastname, C.firstname, SUM(W.price) AS 'total price'
FROM Watchhistory W, Customer C
WHERE W.customer_mail_address = C.customer_mail_address
	AND W.invoiced = 0
GROUP BY C.lastname, C.firstname


--3G
CREATE VIEW bottom_100_movies
AS SELECT movie.title, TOP 100 COUNT(watchhistory.movie_id) as 'Aantal Keer bekeken' 
FROM watchhistory , movie
GROUP BY watchhistory.movie_id
order by count(watchhistory.movie_id)



--3H
CREATE VIEW afgelopen_2_maanden
AS SELECT movie.title, movie.publication_year, COUNT(watchhistory.movie_id) as 'Aantal keer bekeken'
from watchhistory , movie
where datediff(month, watch_date, GETDATE()) <= 2 and movie.movie_id = Watchhistory.movie_id
group by watchhistory.movie_id, movie.title
having count(watchhistory.movie_id)>0



--3I
SELECT movie.title, movie.publication_year
FROM movie, movie_genre
WHERE movie.movie_id=movie_genre.movie_id
group by movie.title, movie.publication_year
HAVING COUNT(movie_genre.movie_id)>=8



--3J
select person.firstname, person.lastname
from person, movie_genre, movie_cast, movie
where person.person_id=movie_cast.person_id and movie_cast.movie_id=movie.movie_id and movie.movie_id=movie_genre.movie_id and movie_genre.genre_name like 'Family' and movie_genre.genre_name like 'Horror' and person.gender='F'


--3K
SELECT 		TOP 1 p.firstname,
		 p.lastname
FROM Person p
INNER JOIN Movie_Director md
	ON p.person_id = md.person_id
Where md.movie_id >= 2 
GROUP BY p.firstname, 
	 p.lastname
ORDER BY COUNT(md.movie_id) DESC


--3L
SELECT	GNR.genre_name, 
	COUNT(mg.movie_id) *100.0 / (
				SELECT COUNT(movie_id) FROM Movie) AS Percentage

FROM Movie_Genre mg
INNER JOIN Genre GNR
	ON GNR.genre_name = MOGE.genre_name
GROUP BY GNR.genre_name
ORDER BY Percentage DESC


--3M
SELECT CU.customer_mail_address, (
				SELECT COUNT(watch_date) FROM Watchhistory)/DATEDIFF(DAY, CU.subscription_start, CU.subscription_end)
FROM Customer CU
INNER JOIN Watchhistory WH
	ON WH.customer_mail_address = CU.customer_mail_address
GROUP BY 	CU.customer_mail_address, 
		CU.subscription_start, 
		CU.subscription_end
HAVING (SELECT COUNT(watch_date) FROM Watchhistory)/DATEDIFF(DAY, c.subscription_start, c.subscription_end) >=2
ORDER BY (SELECT COUNT(watch_date) FROM Watchhistory)/DATEDIFF(DAY, c.subscription_start, c.subscription_end) DESC
