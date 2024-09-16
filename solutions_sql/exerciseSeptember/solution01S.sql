--Instrucciones:

--Con�ctate a la base de datos Northwind.

--Escribe una consulta SQL que recupere la siguiente informaci�n:

--Objetivo: Listar los nombres de los productos junto con el nombre 
--de su proveedor y el pa�s donde se encuentra este proveedor

--El nombre del producto (Products.ProductName).
--El nombre del proveedor (Suppliers.CompanyName).
--El pa�s del proveedor (Suppliers.Country).
--Utiliza las tablas Products y Suppliers.

--Usa una cl�usula JOIN para unir las tablas con base en la columna SupplierID.

SELECT Products.ProductName, Suppliers.CompanyName, Suppliers.Country
FROM Suppliers
INNER JOIN Products ON Suppliers.SupplierID=Products.SupplierID;
--ambas traen lo mismo porque todos los productos tienen un supplier 
--pero en caso de no tener suplier un producto en company and country will have nulls
SELECT Products.ProductName, Suppliers.CompanyName, Suppliers.Country
FROM Suppliers
LEFT JOIN Products ON Suppliers.SupplierID=Products.SupplierID;



SELECT * FROM Products;

SELECT * FROM Suppliers;