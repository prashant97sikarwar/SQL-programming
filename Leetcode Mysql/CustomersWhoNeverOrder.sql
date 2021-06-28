/* Problem Link:- https://leetcode.com/problems/customers-who-never-order/ */

SELECT 
    Name AS Customers 
FROM 
    Customers c1
WHERE 
    c1.Id NOT in (SELECT CustomerId FROM Orders);