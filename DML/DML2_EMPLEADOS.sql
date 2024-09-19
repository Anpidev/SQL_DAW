
-- Modificar la dirección de la Delegación de Huelva a ‘Langostino, 12’.
UPDATE delegaciones
SET direccion='Langostino,12'
WHERE nombre= 'D.HUELVA';

/* Actualizar el nuevo responsable del departamento DEP SEVILLA 01 a EMP10. Si no puedes, modifica lo
que sea necesario (sin borrar las tablas para poder cambiar de responsable)*/

UPDATE departamentos
SET director='EMP10'
WHERE nombre='DEP SEVILLA 01';
/*Reducir en un 10% el presupuesto de los departamentos que actualmente tengan un presupuesto
superior a 180.000€*/
UPDATE departamentos
SET presupuesto=presupuesto*0.1
WHERE presupuesto >180000;
--Reducir 5.000€ el presupuesto de los departamentos restantes.
UPDATE departamentos
SET presupuesto= presupuesto -5000
WHERE presupuesto <=180000;
--Subir el sueldo un 5% a los empleados que hayan nacido antes de 1980.
UPDATE empleados
SET salario=salario*1.05
WHERE fec_nac<'1980-01-01';
--A los restantes empleados, aumentarle el sueldo en 1.000€.
UPDATE empleados
SET salario= salario+1000
WHERE fec_nac>='1980-01-01';
-- Borrar el departamento 'DEP JAEN 01'
DELETE FROM departamentos
WHERE nombre='DEP JAEN 01';
-- Dar de baja el empleado Alfonso.
DELETE FROM empleados
WHERE nombre ='Alfonso';
-- Eliminar la delegación de Huelva
DELETE FROM delegaciones
WHERE nombre='D.HUELVA';
