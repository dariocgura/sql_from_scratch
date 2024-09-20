use Northwind;

--Ejercicio: Proveedores por País
--Objetivo: Listar cuántos proveedores hay en cada país y ordenarlos 
--de mayor a menor número de proveedores.

--Instrucciones:
--Usa la tabla Suppliers.
--Muestra:
--El nombre del país (Suppliers.Country).
--El número total de proveedores por país.
--Agrupa los resultados por el nombre del país.
--Usa COUNT para contar los proveedores en cada país.
--Ordena los resultados por el número de proveedores de mayor a menor.

SELECT Suppliers.Country, COUNT(Suppliers.SupplierID) as TotalSuppliers
FROM Suppliers
GROUP BY Suppliers.Country
ORDER BY TotalSuppliers DESC;
