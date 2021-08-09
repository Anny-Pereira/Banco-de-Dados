USE OPTUS;
GO

SELECT * FROM EmpresaOptus;
GO

SELECT * FROM Artista;
GO

SELECT * FROM Usuario;
GO

SELECT * FROM EstiloMusical;
GO

SELECT * FROM Album;
GO

SELECT * FROM Album_Estilo;
GO

--- 1) listar todos os usu�rios administradores, sem exibir suas senhas
--- 2) listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
--- 3) listar os dados de um usu�rio atrav�s do e-mail e senha
--- 4) listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 


--1)
SELECT NomeUsuario, TipoPermissao
FROM Usuario
WHERE TipoPermissao = 'Administrador';
GO

--2)
SELECT * FROM Album
WHERE DataLancamento > '2020-01-01';
GO


--3)
SELECT * FROM Usuario
WHERE EmailUsuario = 'Paula@hotmail.com' AND SenhaUsuario = '22585';
GO


--4) 
SELECT EstadoVisualizacao, Artista.NomeArtista, NomeEstilo
FROM Album
INNER JOIN Artista
ON Album.IdArtista = Artista.IdArtista
INNER JOIN EstiloMusical
ON Album.IdEstilo = EstiloMusical.IdEstilo
WHERE Album.EstadoVisualizacao = '1';
GO