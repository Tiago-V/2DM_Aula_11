USE pclinica;

--- DQL Clínica
SELECT * FROM pet;
SELECT * FROM tipoPet;

-- Específico
SELECT * FROM pet WHERE Nome = 'Bolinha';

-- Order by (ordenado)
SELECT * FROM pet ORDER BY Nome;
SELECT * FROM pet ORDER BY idPet;

SELECT * FROM tipoPet ORDER BY Descricao;
SELECT * FROM tipoPet ORDER BY idTipoPet;

-- Condição
SELECT * FROM tipoPet WHERE idTipoPet > 2 AND idTipoPet < 5;

-- JOIN

SELECT 
	pet.Nome,
	raca.idTipoPet,
	raca.Descricao
FROM pet
	INNER JOIN raca ON pet.idRaca = raca.idRaca
	INNER JOIN tipoPet ON raca.idTipoPet = tipoPet.idTipoPet
;