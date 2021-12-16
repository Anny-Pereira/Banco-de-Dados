-- Este � um exemplo de coment�rio.
/* 

Este � um coment�rio com v�rias linhas

*/


-- Comando DDL 

CREATE DATABASE CATALOGO;
GO

USE CATALOGO;
GO

CREATE TABLE Genero (
IdGenero tinyint PRIMARY KEY IDENTITY (1,1), 
NomeGenero VARCHAR(30)
);
GO

 --COMANDO PARA ANALISAR A TABELA:
	--ALT+f1 COM A TABELA SELECIONADA


CREATE TABLE Filme (
IdFilme SMALLINT PRIMARY KEY IDENTITY (1,1),
IdGenero  TINYINT FOREIGN KEY REFERENCES Genero(IdGenero),
TituloFilme VARCHAR(70)
);
GO