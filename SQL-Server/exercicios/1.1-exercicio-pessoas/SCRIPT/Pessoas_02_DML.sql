use MercadoPago;
GO

INSERT INTO PESSOA (NomePessoa)
VALUES ('Aline'), ('Julio'), ('Everton'), ('Maria');
GO

INSERT INTO EMAIL (IdPessoa, _email)
VALUES (3, 'ever@gmail.com'), (1, 'aline04@hotmail.com'), (4, 'mmariaa@yahoo'), (2, 'julio765@gmail'), (3, 'sseverton@yahoo');
GO

UPDATE EMAIL
SET _email ='aline04@gmail'
WHERE IdEmail = 2;
GO

INSERT INTO TELEFONE (IdPessoa, NumeroTelefone)
VALUES (2, '98666988'), (4, '27488895'), (3,'93334788'), (1, '25068895'), (4, '90023636');
GO

DELETE FROM TELEFONE WHERE IdTelefone = 5;
GO

INSERT INTO CNH (IdPessoa, NumeroCNH)
VALUES (3, '54543545454'), (4,'22222222222'), (1, '10101000110'), (2, '98778878887');
GO

INSERT INTO PESSOA (NomePessoa)
VALUES ('Arthur');
GO