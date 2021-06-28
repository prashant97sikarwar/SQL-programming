/*Problem Link:- https://www.interviewbit.com/old/problems/short-films/ */

SELECT t1.movie_title, t1.movie_year, 
    CONCAT(t5.director_first_name,t5.director_last_name) as director_name, 
    CONCAT(actor_first_name,actor_last_name) as actor_name,
    t2.role
FROM
    movies t1 join movies_cast t2 on t1.movie_id = t2.movie_id 
    join actors t3 on t3.actor_id = t2.actor_id 
    join movies_directors t4 on t4.movie_id = t1.movie_id
    join directors t5 on t5.director_id = t4.director_id 
    ORDER by t1.movie_time
    LIMIT 1;