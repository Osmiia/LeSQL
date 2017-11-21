use Fletnix
go

/*LINK TUSSEN GENRE EN MOVIE GENRE*/
ALTER TABLE Movie_Genre
DROP CONSTRAINT FK_moviegenre_name;

ALTER TABLE Genre
DROP CONSTRAINT PK_genre_name;
go

/*ALTER TABLE Genre
ADD CONSTRAINT PK_genre_name PRIMARY KEY (genre_name);
go

ALTER TABLE Movie_Genre
ADD CONSTRAINT FK_moviegenre_name
FOREIGN KEY (genre_name) REFERENCES Genre (genre_name)
			ON UPDATE CASCADE
			ON DELETE NO ACTION
go
*/
/*PRIMARY KEY VOOR MOVIE_ID*/
ALTER TABLE Movie
DROP CONSTRAINT PK_movie_id;
go
/*
ALTER TABLE Movie
ADD CONSTRAINT PK_movie_id PRIMARY KEY (movie_id);
go*/