/* Problem Link:- https://www.interviewbit.com/old/problems/movie-character/ */

select 
    CONCAT(t2.director_first_name, t2.director_last_name) as director_name, t5.movie_title 
from 
  movies_directors t1 join directors t2 on t1.director_id = t2.director_id 
  join movies t5 on t1.movie_id = t5.movie_id 
  join movies_cast t3
  on t5.movie_id = t3.movie_id and t3.role = 'SeanMaguire';