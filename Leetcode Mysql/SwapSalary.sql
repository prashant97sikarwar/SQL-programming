/* Problem Link:- https://leetcode.com/problems/swap-salary/ */

UPDATE salary 
SET
    sex = CASE sex
        WHEN 'm' THEN 'f'
        ELSE 'm'
    END;

/* Solution using IF */ 
UPDATE salary
SET
    sex = IF(sex = 'f','m','f');