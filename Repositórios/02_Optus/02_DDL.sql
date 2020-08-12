--- OPTUS 

--- Criar banco de dados
CREATE DATABASE optus;
GO;

--- Usamos a base dados optus
USE optus;
GO;

--- Criamos a tabela Usuario
CREATE TABLE usuario (
	idUsuario INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	Email VARCHAR (20),
	Senha VARCHAR (20),
	Permissao VARCHAR (20)
);

--- Criamos a tabela Plataforma
CREATE TABLE artista (
	idArtista INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	idEstilo INT FOREIGN KEY REFERENCES estilo (idEstilo)
);

--- Criamos a tabela Album
CREATE TABLE album (
	idAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	DataLancamento VARCHAR (20),
	Localizacao VARCHAR (50),
	QntMin VARCHAR (20),
	Ativo VARCHAR (20),
	idArtista INT FOREIGN KEY REFERENCES artista (idArtista)
);

--- Criamos a tabela EstiloAlbum
CREATE TABLE estiloAlbum (
	idEstiloAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	idEstilo INT FOREIGN KEY REFERENCES estilo (idEstilo),
	idAlbum INT FOREIGN KEY REFERENCES album (idAlbum)
);

--- Criamos a tabela Estilo
CREATE TABLE estilo (
	idEstilo INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (50)
);