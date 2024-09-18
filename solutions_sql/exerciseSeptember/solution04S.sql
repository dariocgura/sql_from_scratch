--Ejercicio: Ventas Totales por Producto
--Objetivo: Calcular las ventas totales de cada producto en
--la base de datos, considerando el precio unitario y la cantidad vendida.

--Instrucciones:
--Usa las tablas OrderDetails y Products.
--Muestra:
--El nombre del producto (Products.ProductName).
--La cantidad total vendida (OrderDetails.Quantity).
--El precio unitario (OrderDetails.UnitPrice).
--Las ventas totales por producto (cantidad total vendida multiplicada 
--por el precio unitario).
--Usa la cláusula JOIN para combinar las tablas OrderDetails y Products
--usando la columna ProductID.
--Agrupa los resultados por el nombre del producto.
--Calcula las ventas totales usando la fórmula 
--SUM(OrderDetails.Quantity * OrderDetails.UnitPrice).
--Ordena los resultados por las ventas totales de mayor a menor.

use	NorthWind;

SELECT * FROM [Order Details]
where [Order Details].ProductID=11;

SELECT Products.ProductName, SUM([Order Details].Quantity) AS TotalQuantitySold, SUM([Order Details].Quantity*[Order Details].UnitPrice) as salesFull
FROM Products
INNER JOIN [Order Details] ON Products.ProductID=[Order Details].ProductID
GROUP BY Products.ProductName
ORDER BY SalesFull desc;