SELECT *,
(CASE WHEN Price < 30 THEN '저렴'
WHEN Price > 60 THEN '비쌈'
ELSE '적당' END)
AS Price
FROM Products
WHERE CategoryID IN (3, 6)
ORDER BY SupplierID DESC
;