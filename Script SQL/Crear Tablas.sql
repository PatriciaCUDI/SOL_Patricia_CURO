--CREAR TABLAS A USAR
USE UPC
GO

DROP TABLE IF EXISTS dbo.Prestamo 
DROP TABLE IF EXISTS dbo.TipoPrestamo 
DROP TABLE IF EXISTS dbo.Libro 
DROP TABLE IF EXISTS dbo.Usuario 
DROP TABLE IF EXISTS dbo.TipoUsuario 

CREATE TABLE TipoUsuario (
    IdTipo int not null IDENTITY (1, 1),
    Descripcion varchar(255),
	CONSTRAINT TipoUsuario_ak_1 UNIQUE (Descripcion),
    CONSTRAINT TipoUsuario_pk PRIMARY KEY  (IdTipo)
);

CREATE TABLE Usuario (
    IdUsuario int not null PRIMARY KEY IDENTITY (1, 1),
	Dni varchar(18) NOT NULL,
    Nombre varchar(255) NOT NULL,
    Apellido varchar(255) NOT NULL,
    Email varchar(100) NOT NULL,
    telefono varchar(100),
	TipoUsuario int NOT NULL,

	FOREIGN KEY (TipoUsuario) REFERENCES TipoUsuario (IdTipo)
);

CREATE TABLE Libro (
    ISBN int PRIMARY KEY IDENTITY (1, 1),
    Nombre varchar(255) NOT NULL,
    Categoria varchar(255) NOT NULL,
    Autor varchar(100),
    Pais varchar(100),
    Fecha varchar(100),
    Editorial varchar(100)
);

CREATE TABLE TipoPrestamo (
    IdTipo int not null IDENTITY (1, 1),
    Descripcion varchar(255),
	CONSTRAINT TipoPrestamo_ak_1 UNIQUE (Descripcion),
    CONSTRAINT TipoPrestamo_pk PRIMARY KEY  (IdTipo)
);

CREATE TABLE Prestamo (
    IdPrestamo int PRIMARY KEY IDENTITY (1, 1),
    IdLibro int NOT NULL,
    IdUsuario int NOT NULL,
	Fecha date NOT NULL,
    Duración int,
    TipoPrestamo int,
	FechaDev date NOT NULL,

	FOREIGN KEY (TipoPrestamo) REFERENCES TipoPrestamo (IdTipo),
	FOREIGN KEY (IdUsuario) REFERENCES Usuario (IdUsuario),
	FOREIGN KEY (IdLibro) REFERENCES Libro (ISBN)
);
