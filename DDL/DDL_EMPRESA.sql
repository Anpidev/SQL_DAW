MODELO RELACIONAL PROVEEDORES-CATEGORIAS

PROVEEDOR (Código (PK), nombre, dirección, ciudad)
PIEZA (Código (PK), nombre,precio, color, código_categoria (FK))
CATEGORIA (código (PK), nombre)
SUMINISTRA (código_proveedor (PK)(FK), código_pieza (PK)(FK),cantidad, fecha)


SQL

CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE Proveedor (
codigo CHAR(10),
nombre CHAR (20) NOT NULL,
direccion CHAR (30),
ciudad CHAR(20)
);

CREATE TABLE Categoria(
codigo CHAR(10),
nombbre CHAR(20) NOT NULL
);


CREATE TABLE Pieza (
codigo CHAR(10),
nombre CHAR(20) NOT NULL,
precio DECIMAL(5,2),
color CHAR(20),
codigo_categoria CHAR(10)
);


CREATE TABLE Suministra(
codigo_proveedor CHAR (10),
codigo_pieza CHAR (10),
cantidad DECIMAL (4,2),
fecha DATE
);

ALTER TABLE Proveedor 
ADD PRIMARY KEY (codigo)
;

ALTER TABLE Categoria
ADD PRIMARY KEY (codigo)
;

ALTER TABLE Pieza
ADD PRIMARY KEY (codigo)
;

ALTER TABLE Suministra
ADD PRIMARY KEY (
codigo_proveedor,
codigo_pieza
);

ALTER TABLE Pieza
ADD FOREIGN KEY (codigo_categoria)
REFERENCES Categoria(codigo);

ALTER TABLE Suministra
ADD FOREIGN KEY (
codigo_proveedor)
REFERENCES Proveedor (codigo);

ALTER TABLE Suministra
ADD FOREIGN KEY (
codigo_pieza)
REFERENCES Pieza (codigo);



//ERROR AL NOMBRAR UN ATRIBUTO
ALTER TABLE Categoria
CHANGE COLUMN nombbre nombre CHAR(20) NOT NULL;




