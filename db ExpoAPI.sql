CREATE DATABASE dbExpoAPI
GO

USE dbExpoAPI
GO

CREATE TABLE Projetos (
    Id INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(150) NOT NULL,
	Status VARCHAR(150) NOT NULL,
	Data_De_Inicio VARCHAR(10) NOT NULL,
	Area VARCHAR(150) NOT NULL
)
GO

INSERT INTO Projetos(Titulo, Status, Data_De_Inicio, Area) 
VALUES ('Projeto A', 'Em planejamento', '18/05/2022', 'T.I.')
GO

INSERT INTO Projetos(Titulo, Status, Data_De_Inicio, Area) 
VALUES ('Projeto B', 'Iniciado', '10/04/2022', 'RH')
GO

-- UPDATE Livros SET Titulo = 'Titulo A1' Where Id = 1;

 -- DELETE FROM Livros WHERE Id = 1;

SELECT Id, Titulo, Status, Data_De_Inicio, Area FROM Projetos
GO

CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Senha VARCHAR(120) NOT NULL,
	Tipo CHAR(1) NOT NULL
)
GO

INSERT INTO Usuarios VALUES ('teste@email.com.br', '1234', '0')
GO

SELECT * FROM Usuarios WHERE email = 'teste@email.com.br' AND senha = '1234'
GO