use		Fletnix

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
	AND title LIKE '%Terminator%'
	AND publication_year = 1991

--3E
SELECT M.title, publication_year
FROM Movie_Cast MC, Person P, Movie M
WHERE MC.movie_id = M.movie_id
	AND MC.person_id = P.person_id
	AND	P.firstname = 'Arnold'
	AND P.lastname = 'Schwarzenegger'


--3F



--3G



--3H



--3I



--3J



--3K



--3L



--3M