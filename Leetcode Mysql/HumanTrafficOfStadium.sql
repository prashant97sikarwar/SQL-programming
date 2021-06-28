/* Problem Link:- https://leetcode.com/problems/human-traffic-of-stadium/ */

SELECT distinct t1.*
FROM 
    Stadium t1,
    Stadium t2,
    Stadium t3
WHERE 
    t1.people >= 100 AND t2.people >= 100 AND t3.people >= 100 
AND (
    (t1.id - t2.id = 1 and t1.id - t3.id = 2 and t2.id - t3.id =1)  -- t1, t2, t3
    or
    (t2.id - t1.id = 1 and t2.id - t3.id = 2 and t1.id - t3.id =1) -- t2, t1, t3
    or
    (t3.id - t2.id = 1 and t2.id - t1.id =1 and t3.id - t1.id = 2) -- t3, t2, t1
)
order by t1.id
; 