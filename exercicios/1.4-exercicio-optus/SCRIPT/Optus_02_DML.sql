USE OPTUS;
GO

INSERT INTO EmpresaOptus(Endereco)
VALUES ('Rua Jos� Frederico, 1443');
GO

INSERT INTO Artista(IdEmpresa, NomeArtista)
VALUES (1, 'Kevin'), (1, 'Zeca'), (1, 'Luan');
GO

INSERT INTO Usuario(IdEmpresa, NomeUsuario, EmailUsuario, SenhaUsuario, TipoPermissao)
VALUES (1, 'Cleiton', 'Cleiton@gmail.com','456', 'Administrador'), (1, 'Paula', 'Paula@hotmail.com', '22585', 'Administrador'), (1, 'Wilson', 'Wilson@yahoo.com', '74444', 'Comum');
GO

INSERT INTO Album(IdArtista, NomeAlbum, NomeArtista)
VALUES (1, 'Mist�rio', 'Kevin'), (1, 'Baby', 'Kevin'), (3, 'Morena', 'Luan'), (2, 'Feliz', 'Zeca');
GO

INSERT INTO EstiloMusical(NomeEstilo)
VALUES ('Pagode'), ('Sertanejo'), ('Funk');
GO

INSERT INTO Album_Estilo(IdEstilo, IdAlbum, NomeAlbum, NomeEstilo)
VALUES (1, 4, 'Feliz', 'Pagode'), (2, 3, 'Morena', 'Sertanejo'), (3, 1, 'Mist�rio', 'Funk'), (3, 2, 'Baby', 'Funk');
GO