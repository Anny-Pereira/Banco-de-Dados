USE LOCADORA;
GO

INSERT INTO Empresa (NomeEmpresa)
VALUES ('CarMultimarcas'), ('ApoloVeiculos');
GO

INSERT INTO Cliente(NomeCliente)
VALUES ('Paulo'), ('Bianca'), ('José');
GO

INSERT INTO Veiculo(IdEmpresa, Placa)
VALUES (2, 'ABC 5588'), (1, 'CDD 1123'), (1, 'WDY 4576'), (2, 'TLU 2557'), (1, 'FFY 4662');
GO

INSERT INTO Modelo(IdVeiculo, NomeModelo, AnoModelo)
VALUES (4, 'Versa', 2019), (3, 'EcoSport', 2017), (5, 'Corsa', 2015), (1, 'Palio', 2015), (2, 'X1', 2020);
GO


UPDATE Modelo
SET AnoModelo = 2016
WHERE IdModelo = 4;
GO


INSERT INTO Marca(IdModelo, NomeMarca)
VALUES (2, 'Ford'), (4, 'Fiat'), (1, 'Nissan'), (3, 'GM'), (5, 'BMW');
GO


INSERT INTO Aluguel(IdVeiculo, IdCliente, NomeCliente, Carro, DataAluguel)
VALUES (3, 2, 'Bianca', 'EcoSport', '2021-02-15'), (5, 3, 'José', 'Corsa', '2021-05-30'), (1, 1, 'Paulo', 'Palio', '2021-07-23'), (2, 2, 'Bianca', 'X1', '2021-08-02');
GO
