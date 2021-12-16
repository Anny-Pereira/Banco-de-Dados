USE CLINICA;
GO

INSERT INTO ClinicaVeterinaria (Endereco, RazaoSocial)
VALUES ('Av. São João, 132', 'Pet Care');
GO


INSERT INTO Veterinario(IdClinica, NomeVeterinario, CRMV)
VALUES (1, 'Dr. Bruno', '1234'), (1, 'Dra. Beatriz', '5678'), (1, 'Dra.Fernanda', '2020'), (1, 'Dr,Flávio', '7576');
GO

--DELETE FROM Veterinario WHERE IdVeterinario = 4;
--GO


INSERT INTO Dono (NomeDono)
VALUES ('Helena'), ('Wilson'), ('Ana'), ('Pedro');
GO

INSERT INTO Pet(IdDono, NomePet)
VALUES (1, 'Totó'), (4, 'Belinha'), (3, 'Mel'), (1, 'Pipoca');
GO

INSERT INTO Pet (IdDono, NomePet)
VALUES  (3, 'Bolota');
GO

INSERT INTO Raca(IdPet, NomeRaca, NomePet)
VALUES (3, 'Papagaio', 'Mel'), (2, 'Persa', 'Belinha'), (4, 'Vira-Lata', 'Pipoca'), (1, 'Doberman', 'Totó');
GO

INSERT INTO Raca(IdPet, NomeRaca, NomePet)
VALUES (1002, 'São Bernardo', 'Bolota');
GO

INSERT INTO TipoPet(IdRaca, _tipoPet)
VALUES (4, 'Pássaro'), (5, 'Gato'), (6, 'Cachorro'), (7, 'Cachorro');
GO

INSERT INTO Consulta(IdVeterinario, IdPet, DataConsulta, NomeVeterinario, Pet, DescricaoConsulta)
VALUES (2, 1, '2021-02-08', 'Dra. Beatriz', 'Totó', 'Manhã'), (1, 4, '2021-05-21', 'Dr. Bruno', 'Pipoca', 'Tarde'), (2, 2, '2021-07-14', 'Dra. Beatriz', 'Belinha', 'Tarde'), (3, 3, '2021-08-30', 'Dra. Fernanda', 'Mel', 'Noite');
GO