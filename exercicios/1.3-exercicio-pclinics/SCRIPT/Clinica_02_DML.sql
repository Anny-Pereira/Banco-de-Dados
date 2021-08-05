USE CLINICA;
GO

INSERT INTO ClinicaVeterinaria (Endereco)
VALUES ('Av. São João, 132');
GO

INSERT INTO Veterinario(IdClinica, NomeVeterinario)
VALUES (1, 'Dr. Bruno'), (1, 'Dra. Beatriz'), (1, 'Dra.Fernanda'), (1, 'Dr,Flávio');
GO

DELETE FROM Veterinario WHERE IdVeterinario = 4;
GO


INSERT INTO Dono (NomeDono)
VALUES ('Helena'), ('Wilson'), ('Ana'), ('Pedro');
GO

INSERT INTO Pet(IdDono, NomePet)
VALUES (1, 'Totó'), (4, 'Belinha'), (3, 'Mel'), (1, 'Pipoca');
GO

INSERT INTO Raca(IdPet, NomeRaca, NomePet)
VALUES (4, 'Papagaio', 'Mel'), (3, 'Persa', 'Belinha'), (5, 'Vira-Lata', 'Pipoca'), (2, 'Doberman', 'Totó');
GO

INSERT INTO TipoPet(IdRaca, _tipoPet)
VALUES (1, 'Pássaro'), (2, 'Gato'), (3, 'Cachorro'), (4, 'Cachorro');
GO

INSERT INTO Consulta(IdVeterinario, IdPet, DataConsulta, NomeVeterinario, Pet)
VALUES (2, 2, '2021-02-08', 'Dra. Beatriz', 'Totó'), (1, 5, '2021-05-21', 'Dr. Bruno', 'Pipoca'), (2, 3, '2021-07-14', 'Dra. Beatriz', 'Belinha'), (3, 4, '2021-08-30', 'Dra. Fernanda', 'Mel');
GO