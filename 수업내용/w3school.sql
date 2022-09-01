
CREATE TABLE Categories
(
  CategoryID    NOT NULL,
  CategoryName  NULL    ,
  Description   NULL    ,
  PRIMARY KEY (CategoryID)
);

CREATE TABLE Customers
(
  CustomerID	   NOT NULL,
  CustomerName  NULL    ,
  ContactName   NOT NULL,
  Address       NULL    ,
  City          NULL    ,
  PostalCode    NULL    ,
  Country       NULL    ,
  PRIMARY KEY (CustomerID	)
);

CREATE TABLE Employees
(
  EmployeeID  NOT NULL,
  LastName    NULL    ,
  FirstName   NULL    ,
  BirthDate   NULL    ,
  Photo       NULL    ,
  Notes       NULL    ,
  PRIMARY KEY (EmployeeID)
);

CREATE TABLE OrderDetails
(
  OrderDetailID  NOT NULL,
  OrderID        NOT NULL,
  ProductID      NOT NULL,
  Quantity       NULL    ,
  PRIMARY KEY (OrderDetailID)
);

CREATE TABLE Orders
(
  OrderID      NOT NULL,
  CustomerID	  NOT NULL,
  EmployeeID   NOT NULL,
  ShipperID    NOT NULL,
  OrderDate    NULL    ,
  PRIMARY KEY (OrderID)
);

CREATE TABLE Products
(
  ProductID    NOT NULL,
  ProductName  NULL    ,
  SupplierID   NOT NULL,
  CategoryID   NOT NULL,
  Unit         NULL    ,
  Price        NULL    ,
  PRIMARY KEY (ProductID)
);

CREATE TABLE Shippers
(
  ShipperID    NOT NULL,
  ShipperName  NULL    ,
  Phone        NULL    ,
  PRIMARY KEY (ShipperID)
);

CREATE TABLE Suppliers
(
  SupplierID    NOT NULL,
  SupplierName  NULL    ,
  ContactName   NOT NULL,
  Address       NULL    ,
  City          NULL    ,
  PostalCode    NULL    ,
  Country	      NULL    ,
  Phone         NULL    ,
  PRIMARY KEY (SupplierID)
);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Customers_TO_Orders
    FOREIGN KEY (CustomerID	)
    REFERENCES Customers (CustomerID	);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Employees_TO_Orders
    FOREIGN KEY (EmployeeID)
    REFERENCES Employees (EmployeeID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Shippers_TO_Orders
    FOREIGN KEY (ShipperID)
    REFERENCES Shippers (ShipperID);

ALTER TABLE OrderDetails
  ADD CONSTRAINT FK_Orders_TO_OrderDetails
    FOREIGN KEY (OrderID)
    REFERENCES Orders (OrderID);

ALTER TABLE OrderDetails
  ADD CONSTRAINT FK_Products_TO_OrderDetails
    FOREIGN KEY (ProductID)
    REFERENCES Products (ProductID);

ALTER TABLE Products
  ADD CONSTRAINT FK_Suppliers_TO_Products
    FOREIGN KEY (SupplierID)
    REFERENCES Suppliers (SupplierID);

ALTER TABLE Products
  ADD CONSTRAINT FK_Categories_TO_Products
    FOREIGN KEY (CategoryID)
    REFERENCES Categories (CategoryID);
