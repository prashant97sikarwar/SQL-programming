/*Problem Link:- https://leetcode.com/problems/employees-earning-more-than-their-managers/ */

SELECT 
    Name AS Employee 
FROM 
    Employee e1 
WHERE 
    Salary  > (SELECT 
                    Salary 
                FROM 
                    Employee e2 
                WHERE 
                    e1.ManagerId = e2.Id)
    ;