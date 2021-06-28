/*Problem Link:= https://leetcode.com/problems/rank-scores/ */

SELECT Score as score, DENSE_RANK() OVER (ORDER BY Score DESC) AS `Rank` FROM Scores;