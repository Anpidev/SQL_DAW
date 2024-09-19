/*CONSULTAS SOBRE UNA TABLA*/
SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio, precio*1.08 FROM producto;
SELECT nombre, precio AS PrecioEuros, ROUND(Precio*1.08,2) AS PrecioDolares FROM producto;
SELECT UPPER(nombre) AS NombreMayusculas , precio FROM producto;
SELECT LOWER(nombre) AS NombreMinusculas, precio FROM producto;
SELECT nombre, UPPER(LEFT(nombre,2)) AS dos_primeros_carac FROM producto;
SELECT nombre, ROUND(precio) AS PrecioRedondeado FROM producto;
SELECT nombre, TRUNCATE(precio,0) AS PrecioSinDecimales FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT  nombre, precio FROM producto ORDER BY nombre, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
SELECT nombre, precio FROM producto ORDER BY precio LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante=2;
SELECT nombre FROM producto WHERE precio<=120;
SELECT nombre FROM producto WHERE precio>=400;
SELECT nombre FROM producto WHERE precio<400;
SELECT * FROM producto WHERE precio >=80 AND precio <=300;
SELECT * FROM producto WHERE precio BETWEEN 60 AND 200;
SELECT * FROM producto WHERE precio>200 AND codigo_fabricante=6;
SELECT * FROM producto WHERE codigo_fabricante=1 OR codigo_fabricante=3 OR codigo_fabricante=5;
SELECT * FROM producto WHERE codigo_fabricante IN(1,3,5);
SELECT nombre, precio*100 AS centimos FROM producto;
SELECT nombre FROM fabricante WHERE nombre LIKE 'S%';
SELECT nombre FROM fabricante WHERE nombre LIKE '%e';
SELECT nombre FROM fabricante WHERE nombre LIKE '%w%';
SELECT nombre FROM fabricante WHERE nombre LIKE '____';
SELECT nombre FROM producto WHERE nombre REGEXP 'Port[aá]til'; 
SELECT nombre FROM producto WHERE nombre REGEXP 'Monitor' AND  precio <215;
SELECT nombre , precio FROM producto WHERE precio>=180 ORDER BY precio DESC, nombre;
/*CONSULTAS RESUMEN*/
SELECT COUNT(*) AS Total FROM producto;
SELECT COUNT(*) AS Total FROM fabricante;
SELECT COUNT(DISTINCT codigo_fabricante) AS CodigoDistintos FROM producto;
SELECT AVG(precio) AS PrecioMedio FROM producto;
SELECT MIN(precio) AS PrecioMinimo FROM producto;
SELECT MAX(precio) AS PrecioMaximo FROM producto;
SELECT nombre, MIN(precio) FROM producto;
SELECT nombre, MAX(precio) FROM producto;
SELECT SUM(precio) AS SumaPrecios FROM producto;
SELECT COUNT(*) AS productos FROM producto WHERE codigo_fabricante=1;
SELECT AVG(precio) AS mediaAsus FROM producto WHERE codigo_fabricante=1;
SELECT nombre, MIN(precio) AS productoBarato FROM producto WHERE codigo_fabricante=1;
SELECT SUM(precio) AS SumaProductos FROM producto WHERE codigo_fabricante=1;
SELECT 
MAX(precio) AS PrecioMaximo,
MIN(precio) AS PrecioMinimo,
AVG(precio) AS PrecioMedio
COUNT(*) AS Total
FROM producto WHERE codigo_fabricante=6;
SELECT COUNT(*) FROM producto WHERE precio>=180;
/*AGRUPAMIENTOS*/