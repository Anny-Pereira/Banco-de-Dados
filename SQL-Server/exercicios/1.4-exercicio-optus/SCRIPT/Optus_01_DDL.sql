CREATE DATABASE OPTUS;
GO

USE OPTUS;
GO

CREATE TABLE EmpresaOptus(
IdEmpresa INT PRIMARY KEY IDENTITY(1,1),
Endereco VARCHAR(30)
);
GO

CREATE TABLE Usuario(
IdUsuario INT PRIMARY KEY IDENTITY(1,1),
IdEmpresa INT FOREIGN KEY REFERENCES EmpresaOptus(IdEmpresa),
NomeUsuario VARCHAR(20) NOT NULL,
EmailUsuario VARCHAR(30)NOT NULL,
SenhaUsuario VARCHAR(40) NOT NULL,
TipoPermissao VARCHAR (15) NOT NULL
);
GO



CREATE TABLE Artista(
IdArtista INT PRIMARY KEY IDENTITY(1,1),
IdEmpresa INT FOREIGN KEY REFERENCES EmpresaOptus(IdEmpresa),
NomeArtista VARCHAR(20) NOT NULL
);
GO

CREATE TABLE EstiloMusical(
IdEstilo INT PRIMARY KEY IDENTITY(1,1),
NomeEstilo VARCHAR(15)
);
GO

CREATE TABLE Album(
IdAlbum INT PRIMARY KEY IDENTITY(1,1),
IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista),
IdEstilo INT FOREIGN KEY REFERENCES EstiloMusical(IdEstilo),
NomeAlbum VARCHAR(20),
NomeArtista VARCHAR(20) NOT NULL,
DataLancamento DATE,
Localizacao VARCHAR (25),
Minutos TINYINT,
EstadoVisualizacao BIT
);
GO


CREATE TABLE Album_Estilo(
Id INT PRIMARY KEY IDENTITY(1,1),
IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
IdEstilo INT FOREIGN KEY REFERENCES EstiloMusical(IdEstilo),
NomeAlbum VARCHAR(20) NOT NULL,
NomeEstilo VARCHAR(15) NOT NULL
);
GO