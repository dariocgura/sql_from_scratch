use Northwind;

--Ejercicio: Proveedores por Pa�s
--Objetivo: Listar cu�ntos proveedores hay en cada pa�s y ordenarlos 
--de mayor a menor n�mero de proveedores.

--Instrucciones:
--Usa la tabla Suppliers.
--Muestra:
--El nombre del pa�s (Suppliers.Country).
--El n�mero total de proveedores por pa�s.
--Agrupa los resultados por el nombre del pa�s.
--Usa COUNT para contar los proveedores en cada pa�s.
--Ordena los resultados por el n�mero de proveedores de mayor a menor.

SELECT Suppliers.Country, COUNT(Suppliers.SupplierID) as TotalSuppliers
FROM Suppliers
GROUP BY Suppliers.Country
ORDER BY TotalSuppliers DESC;
