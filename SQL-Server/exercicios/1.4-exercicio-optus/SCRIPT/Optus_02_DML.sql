USE OPTUS;
GO

INSERT INTO EmpresaOptus(Endereco)
VALUES ('Rua José Frederico, 1443');
GO

INSERT INTO Artista(IdEmpresa, NomeArtista)
VALUES (1, 'Kevin'), (1, 'Zeca'), (1, 'Luan');
GO

INSERT INTO Usuario(IdEmpresa, NomeUsuario, EmailUsuario, SenhaUsuario, TipoPermissao)
VALUES (1, 'Cleiton', 'Cleiton@gmail.com','456', 'Administrador'), (1, 'Paula', 'Paula@hotmail.com', '22585', 'Administrador'), (1, 'Wilson', 'Wilson@yahoo.com', '74444', 'Comum');
GO

INSERT INTO EstiloMusical(NomeEstilo)
VALUES ('Pagode'), ('Sertanejo'), ('Funk');
GO

INSERT INTO Album(IdArtista, IdEstilo, NomeAlbum, NomeArtista, DataLancamento, Localizacao, Minutos, EstadoVisualizacao)
VALUES (1, 3, 'Mistério', 'Kevin', '2021-07-20', 'São Paulo - SP', 90, '1'), (1, 3, 'Baby', 'Kevin', '2021-06-10', 'São Paulo - SP', 85, '0'), (3, 2, 'Morena', 'Luan', '2021-03-15', 'Campo Grande - MS', 70, '1'), (2, 1, 'Feliz', 'Zeca', '2019-07-17', 'Rio de Janeiro - RJ', 100, '1');
GO


INSERT INTO Album_Estilo(IdEstilo, IdAlbum, NomeAlbum, NomeEstilo)
VALUES (1, 4, 'Feliz', 'Pagode'), (2, 3, 'Morena', 'Sertanejo'), (3, 1, 'Mistério', 'Funk'), (3, 2, 'Baby', 'Funk');
GO
