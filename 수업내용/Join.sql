SELECT Orders.OrderID
			, Customers.CustomerName
                , Shippers.ShipperName
                	,Products.ProductName
FROM (
	((OrderDetails INNER JOIN Products 
        ON OrderDetails.ProductID = Products.productID)INNER JOIN Orders
        ON OrderDetails.OrderID = Orders.OrderID INNER JOIN Customers
	  	ON Orders.CustomerID = Customers.CustomerID) INNER JOIN Shippers
     	ON Orders.ShipperID = Shippers.ShipperID)
      ;
        