-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_groupby
SELECT CategoryID, SUM(Price), COUNT(Price), AVG(Price)
FROM Products
GROUP BY CategoryID
ORDER BY CategoryID ASC
;