-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_groupby
SELECT CategoryID, SUM(Price), COUNT(Price), AVG(Price)
FROM Products
GROUP BY CategoryID
ORDER BY CategoryID ASC
;

-- Aliases
-- select CustomerID, Country
SELECT TB_10.*
FROM(
SELECT COUNT(CustomerID) cnt, Country
FROM Customers
GROUP BY Country
) as TB_10
ORDER BY TB_10.cnt DESC;
-- TB_10 을 넣어 테이블 임시 이름 지정
