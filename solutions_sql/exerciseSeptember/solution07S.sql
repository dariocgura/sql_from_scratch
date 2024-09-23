--Ejercicio: Clientes sin Órdenes
--Objetivo: Identificar los clientes que no han realizado ninguna orden.

--Instrucciones:
--Usa las tablas Customers y Orders.
--Muestra:
--El ID del cliente (Customers.CustomerID).
--El nombre de la empresa del cliente (Customers.CompanyName).
--El país del cliente (Customers.Country).

use Northwind;

SELECT Customers.CustomerID, Customers.CompanyName, Customers.Country
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.OrderID IS NULL;