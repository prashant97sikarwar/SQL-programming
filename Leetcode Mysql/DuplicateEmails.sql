/* Problem Link:- https://leetcode.com/problems/duplicate-emails/  */

SELECT 
    DISTINCT P1.Email 
FROM 
    Person P1, Person p2 
WHERE 
    P1.Email = P2.Email AND P1.Id > P2.Id;