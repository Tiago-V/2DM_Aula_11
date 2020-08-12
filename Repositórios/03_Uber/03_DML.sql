USE uber;

--- DML UBER
--- INSERT
INSERT INTO motorista  (Nome, Estrelar, Latitude, Longitude) VALUES ('Rodrigo', 5, '100', '20');
INSERT INTO passageiro (Nome, Estrelar, Latitude, Longitude) VALUES ('Tiago', 4.5, '20', '-10');

INSERT INTO corrida (Partida, Destino, DataHora, idPassageiro, idMotorista) VALUES ('Vila-Mariana', 'Vergueiro',
'25/05/2021 10:45', 1, 1);

INSERT INTO tipoPagamento (tipo) VALUES ('Cartão');
INSERT INTO statusOK (statusOK) VALUES ('Não Pago');

--- SELECT
SELECT * FROM motorista;
SELECT * FROM passageiro;
SELECT * FROM corrida;
SELECT * FROM tipoPagamento;
SELECT * FROM statusOK;
SELECT * FROM motorista;

--- UPDATE
UPDATE passageiro SET
	Estrelar = 5.0,
	Longitude = 0
WHERE idPassageiro = 2;

--- DELETE 
DELETE FROM passageiro WHERE idPassageiro = 3;
