USE optus;

--- DQL Optus
SELECT * FROM estilo;
SELECT * FROM artista;

-- Dado espec�fico
SELECT * FROM artista WHERE 
	idEstilo = 4;

-- Busca espec�fica
SELECT * FROM artista WHERE 
	idEstilo = 4 AND 
	Nome = 'Post Malone';

-- Ordem
SELECT * FROM estilo ORDER BY Nome;
SELECT * FROM artista ORDER BY Nome;
SELECT * FROM artista ORDER BY idEstilo;

-- Condi��o
SELECT * FROM estilo WHERE idEstilo > 3;
SELECT * FROM artista WHERE idEstilo > 3;

-- JOIN

SELECT
	artista.Nome,
	estilo.Nome
FROM artista
	INNER JOIN estilo ON artista.idEstilo = estilo.idEstilo
;

