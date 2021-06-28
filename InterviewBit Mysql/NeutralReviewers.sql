/* Problem Link:- https://www.interviewbit.com/old/problems/neutral-reviewers/ */

SELECT 
    DISTINCT reviewers.reviewer_name 
FROM 
    reviewers JOIN ratings ON reviewers.reviewer_id = ratings.reviewer_id
    AND ratings.reviewer_stars IS NULL;