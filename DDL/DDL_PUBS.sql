CREATE DATABASE IF NOT EXISTS digitech_db_pubs;
USE digitech_db_pubs;

CREATE TABLE IF NOT EXISTS pub (
    cod_pub CHAR(5) PRIMARY KEY,
    nombre CHAR(10) NOT NULL,
    licencia_fiscal CHAR(5) NOT NULL,
    domicilio CHAR(20),
    fecha_apertura DATE NOT NULL,
    horario ENUM ('HOR1', 'HOR2', 'HOR3')NOT NULL,
    cod_localidad INT
    
   
);

CREATE TABLE IF NOT EXISTS titular (
    dni_titular CHAR(9) PRIMARY KEY,
    nombre CHAR(10) NOT NULL,
    domicilio CHAR(20),
    cod_pub CHAR(5) NOT NULL,
    CONSTRAINT fk_titular_pub FOREIGN KEY (cod_pub) REFERENCES pub(cod_pub)
);

CREATE TABLE IF NOT EXISTS empleado (
    dni_empleado CHAR(9) PRIMARY KEY,
    nombre CHAR(10) NOT NULL,
    domicilio CHAR(20)
);

CREATE TABLE IF NOT EXISTS existencias (
    cod_articulo CHAR(5) PRIMARY KEY,
    nombre CHAR(10) NOT NULL,
    cantidad DECIMAL(5,2) NOT NULL,
    precio DECIMAL(5,2) NOT NULL,
    cod_pub CHAR(5),
    CONSTRAINT fk_existencias_pub FOREIGN KEY (cod_pub) REFERENCES pub(cod_pub),
    CONSTRAINT ck_precio CHECK (precio != 0)
);

CREATE TABLE IF NOT EXISTS localidad (
    cod_localidad CHAR(5) PRIMARY KEY,
    nombre CHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS pub_empleado (
    cod_pub CHAR(5) NOT NULL,
    dni_empleado CHAR(9) NOT NULL,
    funcion ENUM('CAMARERO', 'SEGURIDAD', 'LIMPIEZA') NOT NULL,
    PRIMARY KEY (cod_pub, dni_empleado, funcion),
    CONSTRAINT fk_pub_empleado_pub FOREIGN KEY (cod_pub) REFERENCES pub(cod_pub),
    CONSTRAINT fk_pub_empleado_empleado FOREIGN KEY (dni_empleado) REFERENCES empleado(dni_empleado)
);

