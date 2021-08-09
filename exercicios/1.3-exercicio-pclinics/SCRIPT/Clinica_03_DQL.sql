USE CLINICA;
GO

SELECT * FROM ClinicaVeterinaria;
GO

SELECT * FROM Veterinario;
GO

SELECT * FROM Dono;
GO

SELECT * FROM Pet;
GO

SELECT * FROM Raca;
GO

SELECT * FROM TipoPet;
GO

SELECT * FROM Consulta;
GO

--- 1) listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
--- 2) listar todas as raças que começam com a letra S
--- 3) listar todos os tipos de pet que terminam com a letra O
--- 4) listar todos os pets mostrando os nomes dos seus donos
--- 5) listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido


--1)
SELECT NomeVeterinario, CRMV, ClinicaVeterinaria.IdClinica, RazaoSocial
FROM Veterinario
RIGHT JOIN ClinicaVeterinaria
ON Veterinario.IdClinica = ClinicaVeterinaria.IdClinica;
GO


--2)
SELECT NomeRaca FROM Raca
WHERE NomeRaca LIKE 'S%';
GO


--3)
SELECT _tipoPet FROM TipoPet
WHERE _tipoPet LIKE '%o';
GO

--4)
SELECT NomePet, NomeDono
FROM Pet
INNER JOIN Dono
ON Pet.IdDono = Dono.IdDono;
GO


--5)
SELECT Veterinario.NomeVeterinario, Pet.NomePet, NomeRaca, _tipoPet, NomeDono ,RazaoSocial
FROM Consulta

LEFT JOIN Veterinario
ON Consulta.IdVeterinario = Veterinario.IdVeterinario

LEFT JOIN PET 
ON Consulta.IdPet = Pet.IdPet

FULL OUTER JOIN Raca
ON Raca.IdPet = Pet.IdPet

FULL OUTER JOIN TipoPet
ON  Raca.IdRaca = TipoPet.IdRaca

LEFT JOIN Dono
ON Pet.IdDono = Dono.IdDono

INNER JOIN ClinicaVeterinaria
ON ClinicaVeterinaria.IdClinica = Veterinario.IdClinica;
GO