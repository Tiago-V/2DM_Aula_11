--- Modelagem 1 Veterinário

--- Banco de dados pclinica 
CREATE DATABASE pclinica;	
GO

--- Usar banco
USE pclinica;
GO

--- Criar Tabelas
--- Clínica
CREATE TABLE clinica (
	idClinica INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	Endereco VARCHAR (20)
);

--- Veterinário
CREATE TABLE veterinario (
	idVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	idClinica INT FOREIGN KEY REFERENCES clinica (idClinica)
);

--- Tipo Pet
CREATE TABLE tipoPet (
	idTipoPet INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
);

--- Raça
CREATE TABLE raca (
	idRaca INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	idTipoPet INT FOREIGN KEY REFERENCES tipoPet (idTipoPet)
);

--- Dono
CREATE TABLE dono (
	idDono INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (50)
);

--- Pet
CREATE TABLE pet (
	idPet INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (50),
	DataNasci VARCHAR (20),
	idDono INT FOREIGN KEY REFERENCES dono (idDono),
	idRaca INT FOREIGN KEY REFERENCES raca (idRaca)
);

--- Atendimentos
CREATE TABLE atendimentos (
	idAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR (50),
	DataAtendimento VARCHAR (20),
	idVeterinario INT FOREIGN KEY REFERENCES veterinario (idVeterinario),
	idPet INT FOREIGN KEY REFERENCES pet (idPet)
);



