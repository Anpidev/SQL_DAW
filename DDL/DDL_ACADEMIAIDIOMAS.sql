


CREATE DATABASE EjericicioMatriculas;


CREATE TABLE Alumno (
NumMatricula int NOT NULL,
Nombre char(20) NOT NULL,
FechaNacimiento date NOT NULL,
Telefono char(20) NOT NULL,
PRIMARY KEY (NumMatricula)
);

CREATE TABLE Asignatura (
CodAsignatura int NOT NULL,
Nombre char(20) NOT NULL,
IdProfesor int NOT NULL,
Profesor_IdProfesor int NOT NULL,
PRIMARY KEY (CodAsignatura)
FOREING KEY (Profesor_IdProfesor) references Profesor (IdProfesor)

);

CREATE TABLE Profesor (
IdProfesor int NOT NULL,
NIF_P int NOT NULL,
Nombre char(20) NOT NULL,
Especialidad char(20) NOT NULL,
Telefono char(20) NOT NULL,
PRIMARY KEY (IdProfesor)
);

CREATE TABLE Recibe (
NumMatricula int NOT NULL,
CodAsignatura int NOT NULL,
CursoEscolar int NOT NULL,
PRIMARY KEY (NumMatricula,CodAsignatura,CursoEscolar)
FOREIGN KEY (NumMatricula) references Alumno (NumMatricula)
FOREIGN KEY (CodAsignatura) references Asignatura (CodAsignatura)

);

