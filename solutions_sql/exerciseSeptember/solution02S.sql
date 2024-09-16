--Ejercicio: Contar productos por proveedor
--Objetivo: Mostrar la cantidad de productos que cada proveedor 
--tiene en la base de datos.

--Instrucciones:

--Muestra el nombre del proveedor y el número de productos asociados.
--Usa las tablas Products y Suppliers.
--Incluye a todos los proveedores, incluso si no tienen productos (usa LEFT JOIN).
--Ordena los resultados por la cantidad de productos, de mayor a menor.

--SOLUTION:
Use NorthWind;

SELECT * from Products;

SELECT Suppliers.CompanyName, COUNT(Products.ProductID) as Conteoproductos

FROM Suppliers--left table

LEFT JOIN Products ON Products.SupplierID=Suppliers.SupplierID
GROUP BY Suppliers.CompanyName
Order By Conteoproductos desc;