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

--- 1) listar todos os usuários administradores, sem exibir suas senhas
--- 2) listar todos os álbuns lançados após o um determinado ano de lançamento
--- 3) listar os dados de um usuário através do e-mail e senha
--- 4) listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 


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