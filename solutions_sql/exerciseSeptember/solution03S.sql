--Ejercicio: Productos con Poco Inventario
--Objetivo: Listar los productos que tienen un nivel de 
--inventario bajo (menos de 20 unidades) junto con la categoría 
--y el nombre del proveedor.

--Instrucciones:
--Conéctate a la base de datos Northwind.
--Selecciona los productos cuyo nivel de inventario (UnitsInStock) sea menor a 20.
--Muestra:
--El nombre del producto (Products.ProductName).
--El nombre de la categoría (Categories.CategoryName).
--El nombre del proveedor (Suppliers.CompanyName).
--La cantidad de unidades en stock (Products.UnitsInStock).
--Usa las tablas Products, Categories y Suppliers.
--Realiza uniones (JOINs) para relacionar las tablas

use NorthWind;
SELECT * FROM Products;

--SELECT * FROM Categories;

SELECT * FROM Suppliers;


SELECT Products.UnitsInStock ,Categories.CategoryName,Suppliers.CompanyName
FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Products.UnitsInStock<20;

