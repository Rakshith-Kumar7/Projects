use moviedb
show tables;
select * from actors;
select * from director;
select * from genres;
select * from movie;
select * from movie_cast;
select * from movie_direction;
select * from movie_genres;
select * from rating;
select * from reviewer;


# Q1.Write a SQL query to find the actors who were cast in the movie 'Annie Hall'. Return actor first name, last name and role?
select actors.act_fname 'actor first name',actors.act_lname 'actor last name',movie_cast.role, movie.mov_title 'movie title' from 
movie inner join movie_cast on movie.mov_id = movie_cast.mov_id
inner join actors on actors.act_id = movie_cast.act_id
where movie.mov_title = 'Annie Hall'

#Q2.From the following tables, write a SQL query to find the director who directed a movie that casted a role for 'Eyes Wide Shut'. 
#Return director first name, last name and movie title.
select director.dir_fname 'First name of director', director.dir_lname 'Last name of director',movie.mov_title 'movie title' from 
movie inner join movie_direction on movie.mov_id = movie_direction.mov_id
inner join director on director.dir_id = movie_direction.dir_id
where movie.mov_title ='Eyes Wide Shut'


-- Q3.Write a SQL query to find who directed a movie that casted a role as ‘Sean Maguire’. Return director first name, 
-- last name and movie title.

select movie_cast.role,director.dir_fname 'Director first name',director.dir_lname 'director last name', movie.mov_title 'movie title', movie_cast.role  from
movie inner join movie_cast on movie.mov_id = movie_cast.mov_id
inner join movie_direction on movie.mov_id = movie_direction.mov_id
inner join director on director.dir_id = movie_direction.dir_id
where movie_cast.role ='Sean Maguire'


-- Q4.Write a SQL query to find the actors who have not acted in any movie between 1990 and 2000 (Begin and end values are included.). 
-- Return actor first name, last name, movie title and release year.

select actors.act_fname 'First name of actor',actors.act_lname 'last name of actor',movie.mov_title 'movie title',movie.mov_year 'movie year' from
movie inner join movie_cast on movie.mov_id = movie_cast.mov_id
inner join actors on actors.act_id = movie_cast.act_id
where movie.mov_year <=1990 or  movie.mov_year >=2000


-- Q5. Write a SQL query to find the directors with the number of genres of movies. Group the result set on director first name, last name and generic title.
--  Sort the result-set in ascending order by director first name and last name. 
--  Return director first name, last name and number of genres of movies.

select director.dir_fname ' Director first name', director.dir_lname ' director last name' , genres.gen_title 'genres title', count(gen_title) ' count of genres' from 
genres inner join movie_genres on genres.gen_id = movie_genres.gen_id
inner join movie_direction on movie_genres.mov_id = movie_direction.mov_id
inner join director on movie_direction.dir_id = director.dir_id
group by dir_fname,dir_lname,genres.gen_title
order by dir_fname,dir_lname asc;


#Q6.Write a SQL query to find the movies with year and genres. Return movie title, movie year and generic title.
select movie.mov_title 'movie title', movie.mov_year 'year', genres.gen_title 'generic title' from
movie inner join movie_genres on movie.mov_id = movie_genres.mov_id
inner join genres on movie_genres.gen_id = genres.gen_id

-- Q7. Write a SQL query to find the movies released before 1st January 1989. Sort the result-set in descending order by date of release.
--  Return movie title, release year, date of release, duration, and first and last name of the director

select movie.mov_title as 'movie title', movie.mov_year as 'release year',
movie.mov_time 'duration' ,movie.mov_dt_rel 'date of release',director.dir_fname 'First name of director',
director.dir_lname 'Last name of director' from
movie inner join movie_direction on movie.mov_id = movie_direction.mov_id
inner join director on director.dir_id = movie_direction.dir_id
where movie.mov_year < 1989
order by movie.mov_dt_rel desc

-- Q8. Write a SQL query to compute the average time and count the number of movies for each genre. 
-- Return genre title, average time and the number of movies for each genre

SELECT genres.gen_title as ' genres title' , AVG(movie.mov_time) as 'average time', COUNT(gen_title) as 'number of movie'
FROM movie
inner  JOIN  movie_genres on movie.mov_id=movie_genres.mov_id
inner JOIN  genres on genres.gen_id = movie_genres.gen_id
GROUP BY gen_title;

-- Q9. Write a SQL query to find movies with the lowest duration. 
-- Return movie title, movie year, director first name, last name, actor first name, last name and role.
SELECT mov_title as ' movie Title', mov_year as ' movie year', dir_fname as'director first name', dir_lname as 'director last name', 
       act_fname as 'actor first name', act_lname as 'actor last name', role, mov_time 
FROM  movie
inner  JOIN movie_direction on movie.mov_id = movie_direction.mov_id
inner JOIN movie_cast on movie_cast.mov_id = movie_direction.mov_id
inner  JOIN director on director.dir_id = movie_direction.dir_id
inner  JOIN actors on actors.act_id = movie_cast.act_id
WHERE mov_time=(SELECT MIN(mov_time) FROM movie);