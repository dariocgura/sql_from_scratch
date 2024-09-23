--Ejercicio: Órdenes sin Detalles de Productos
--Objetivo: Identificar las órdenes que no tienen detalles
--de productos asociados.

--Instrucciones:
--Usa las tablas Orders y OrderDetails.
--Muestra:
--El ID de la orden (Orders.OrderID).
--El ID del cliente que hizo la orden (Orders.CustomerID).
--La fecha en que se hizo la orden (Orders.OrderDate).
--Usa un LEFT JOIN para obtener las órdenes que no 
--tienen detalles en la tabla OrderDetails.
--Filtra las órdenes sin detalles de productos usando 
--WHERE OrderDetails.OrderID IS NULL.
use northwind;
SELECT Orders.OrderID,Orders.CustomerID,Orders.OrderDate
FROM Orders
LEFT JOIN [Order Details] ON [Order Details].OrderID=Orders.OrderID
WHERE [Order Details].OrderID IS NULL;