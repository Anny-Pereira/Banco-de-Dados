USE CLINICA;
GO

INSERT INTO ClinicaVeterinaria (Endereco, RazaoSocial)
VALUES ('Av. S�o Jo�o, 132', 'Pet Care');
GO


INSERT INTO Veterinario(IdClinica, NomeVeterinario, CRMV)
VALUES (1, 'Dr. Bruno', '1234'), (1, 'Dra. Beatriz', '5678'), (1, 'Dra.Fernanda', '2020'), (1, 'Dr,Fl�vio', '7576');
GO

--DELETE FROM Veterinario WHERE IdVeterinario = 4;
--GO


INSERT INTO Dono (NomeDono)
VALUES ('Helena'), ('Wilson'), ('Ana'), ('Pedro');
GO

INSERT INTO Pet(IdDono, NomePet)
VALUES (1, 'Tot�'), (4, 'Belinha'), (3, 'Mel'), (1, 'Pipoca');
GO

INSERT INTO Pet (IdDono, NomePet)
VALUES  (3, 'Bolota');
GO

INSERT INTO Raca(IdPet, NomeRaca, NomePet)
VALUES (3, 'Papagaio', 'Mel'), (2, 'Persa', 'Belinha'), (4, 'Vira-Lata', 'Pipoca'), (1, 'Doberman', 'Tot�');
GO

INSERT INTO Raca(IdPet, NomeRaca, NomePet)
VALUES (1002, 'S�o Bernardo', 'Bolota');
GO

INSERT INTO TipoPet(IdRaca, _tipoPet)
VALUES (4, 'P�ssaro'), (5, 'Gato'), (6, 'Cachorro'), (7, 'Cachorro');
GO

INSERT INTO Consulta(IdVeterinario, IdPet, DataConsulta, NomeVeterinario, Pet, DescricaoConsulta)
VALUES (2, 1, '2021-02-08', 'Dra. Beatriz', 'Tot�', 'Manh�'), (1, 4, '2021-05-21', 'Dr. Bruno', 'Pipoca', 'Tarde'), (2, 2, '2021-07-14', 'Dra. Beatriz', 'Belinha', 'Tarde'), (3, 3, '2021-08-30', 'Dra. Fernanda', 'Mel', 'Noite');
GO