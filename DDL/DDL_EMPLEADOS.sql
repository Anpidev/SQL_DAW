--Generar los comandos para la creación de la BBDD “empleados”, mostrada a continuación.
CREATE DATABASE IF NOT EXISTS empleados;

USE empleados;

-- Comandos para crear las tablas
 

CREATE TABLE IF NOT EXISTS provincias(
cod_prov CHAR (2),
nom_prov VARCHAR (20) NOT NULL UNIQUE,
CONSTRAINT pk_provincias
PRIMARY KEY (cod_prov) 
);

CREATE TABLE IF NOT EXISTS delegaciones(
cod_del CHAR (5),
nombre VARCHAR (40) NOT NULL,
direccion VARCHAR (50),
CONSTRAINT pk_delegaciones
PRIMARY KEY (cod_del) 
);

CREATE TABLE IF NOT EXISTS localidades (
cod_loc CHAR (3),
nombre VARCHAR (40) NOT NULL,
cod_postal CHAR (5),
cod_prov CHAR(2),
CONSTRAINT pk_localidades
PRIMARY KEY (cod_loc),
CONSTRAINT fk_localidades
FOREIGN KEY (cod_prov)
REFERENCES provincias(cod_prov)
ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS departamentos (
cod_dep VARCHAR (5),
nombre VARCHAR (40),
cod_del CHAR (5),
director VARCHAR(15),
presupuesto DECIMAL(15, 2),
dep_sup VARCHAR(5),
CONSTRAINT pk_departamentos
PRIMARY KEY (cod_dep),
CONSTRAINT fk_deldepartamentos
FOREIGN KEY (cod_del)
REFERENCES delegaciones(cod_del)
ON DELETE CASCADE,
CONSTRAINT fk_supdepartamentos
FOREIGN KEY (dep_sup)
REFERENCES departamentos (cod_dep)
ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS empleados(
cod_emp VARCHAR (15),
nombre VARCHAR (40) NOT NULL,
direccion VARCHAR (100),
localidad CHAR (3),
tfno VARCHAR (15),
fec_nac DATE,
fec_alta DATE,
salario DECIMAL (10,2),
hijos INT (2),
deptno VARCHAR (5),
CONSTRAINT pk_empleados
PRIMARY KEY (cod_emp),
CONSTRAINT fk_locempleados
FOREIGN KEY (localidad)
REFERENCES localidades (cod_loc)
ON DELETE CASCADE,
CONSTRAINT fk_depempleados
FOREIGN KEY (deptno)
REFERENCES departamentos (cod_dep)
ON DELETE CASCADE
);

