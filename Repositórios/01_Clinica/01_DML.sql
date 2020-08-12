USE pclinica

/* DML pclinica */

--- INSERT - Inserção de dados
INSERT INTO clinica (Nome, Endereco) VALUES ('Clinica Feliz', 'Rua da alegria');
INSERT INTO veterinario (Nome, idClinica) VALUES ('Ronaldo', 1);
INSERT INTO tipoPet (Descricao) VALUES ('Cachorro');
INSERT INTO raca (Descricao, idTipoPet) VALUES ('Shihtzu', 1);
INSERT INTO dono (Nome) VALUES ('Iasmin');
INSERT INTO pet (Nome, DataNasci, idDono, idRaca) VALUES ('Bolinha', '12/06/2008', 1, 1);
INSERT INTO atendimentos (Descricao, DataAtendimento, idPet, idVeterinario) VALUES ('?', '25 01 2020', 1, 2);

--- SELECT - Consulta de dados
SELECT * FROM clinica;
SELECT * FROM veterinario;
SELECT * FROM tipoPet;
SELECT * FROM raca;
SELECT * FROM dono;
SELECT * FROM pet;
SELECT * FROM atendimentos;

--- DELETE - Excluir dados
DELETE FROM atendimentos WHERE idAtendimento = 2

--- UPDATE - Atualizar dados
UPDATE raca SET
	Descricao = 'Labrador',
	idTipoPet = 1
WHERE idRaca = 1;
