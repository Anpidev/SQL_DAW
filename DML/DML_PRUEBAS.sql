CREATE DATABASE IF NOT EXISTS prueba;

USE prueba;

-- Crear la tabla agenda con los siguientes campos:

CREATE TABLE IF NOT EXISTS agenda (
    apellido VARCHAR(30),
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono INT(9),
    prefijo CHAR(5) DEFAULT '+0034' 
);

--Insertar los siguientes registros:

INSERT INTO agenda (apellido, nombre, domicilio, telefono)
VALUES ('ALVAREZ','ALBERTO','COLON 123',423456798);
INSERT INTO agenda  (apellido, nombre, domicilio, telefono)
VALUES('JUAREZ','JUAN','AVELLANEDA 135',445878778);
INSERT INTO agenda
VALUES ('LOPEZ','MARIA','URQUIZA 333',454545445, '+0047');
INSERT INTO agenda  (apellido, nombre, domicilio, telefono)
VALUES ('LOPEZ','JOSE','URQUIZA 333', 423456798);
INSERT INTO agenda
VALUES ('SALAS','SUSANA','GRAL. PAZ 1234',412345612, '+0036');

--Actualizar el registro cuyo nombre sea "JUAN" por "JOSE"
UPDATE agenda
SET nombre='JOSE'
WHERE nombre='JUAN';

--Eliminar los registros cuyo número telefónico sea igual a 423456798.
DELETE FROM agenda
WHERE telefono=423456798;

--Eliminar todos los registros
DELETE FROM agenda;

-- Añade un nuevo registro con tus datos personales.
INSERT INTO agenda
VALUES ('RUIZ','ANGELA','ANDALUCIA 31',444184018,'+0034');

-- Actualiza el apellido LOPEZ con GARCIA.
UPDATE agenda
SET apellido='GARCIA'
WHERE apellido='LOPEZ';

--Cambia el nombre de JOSE por ROBERTO.
UPDATE agenda
SET nombre='ROBERTO'
WHERE nombre='JOSE';

--Actualiza el teléfono 423456798 por 123456789 de Alberto
UPDATE agenda
SET telefono=123456789
WHERE nombre='ALBERTO';

