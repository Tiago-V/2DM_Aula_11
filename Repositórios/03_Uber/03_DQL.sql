USE uber;

--- DQL Uber

-- Select
SELECT * FROM motorista;
SELECT * FROM passageiro;

-- Específico 
SELECT * FROM motorista WHERE Estrelar = 5;

-- Codição
SELECT * FROM passageiro WHERE Estrelar > 4;

-- Ordem 
SELECT * FROM motorista ORDER BY Estrelar;
SELECT * FROM motorista ORDER BY Latitude DESC;

SELECT * FROM passageiro ORDER BY Estrelar;
SELECT * FROM passageiro ORDER BY Nome;

-- Entre valores
SELECT * FROM passageiro WHERE idPassageiro > 1 AND idPassageiro < 3;
SELECT * FROM motorista WHERE Estrelar > 2.5 AND Estrelar < 5;

SELECT * FROM corrida;
-- JOIN
SELECT 
	corrida.partida,
	corrida.destino,
	corrida.DataHora,
	passageiro.Nome,
	motorista.Nome
FROM corrida
	INNER JOIN passageiro ON corrida.idPassageiro = passageiro.idPassageiro
	INNER JOIN motorista ON corrida.idMotorista = motorista.idMotorista
;