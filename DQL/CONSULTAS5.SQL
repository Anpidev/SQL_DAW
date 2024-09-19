SELECT Direccion, Telefono , Poblacion AS Residencia FROM CLIENTES ORDER BY Residencia DESC;
SELECT Poblacion FROM CLIENTES GROUP BY Poblacion;
SELECT Sección , AVG(Precio) AS Media_Precios FROM PRODUCTOS GROUP BY Sección;
SELECT Sección, AVG(Precio) AS Media_Precios FROM PRODUCTOS WHERE Sección!="JUGUETERÍA" GROUP BY Sección;
SELECT COUNT(Sección)  FROM PRODUCTOS WHERE Sección="DEPORTES" GROUP BY Sección;