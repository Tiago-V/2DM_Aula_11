USE optus

--- DML OPTUS
--- INSERT
INSERT INTO estilo (Nome) VALUES ('Eletronica');
INSERT INTO usuario (Nome, Email, Senha, Permissao) VALUES ('Tiago', 'tiago@exemplo.com', '132', 'ADM');

INSERT INTO artista (Nome, idEstilo) VALUES ('Marshmello', '5');
INSERT INTO album (Nome, DataLancamento, QntMin, Ativo, idArtista) VALUES ('Bad', '31/08/1987', '43min', 'Sim?', 1);
INSERT INTO estiloAlbum (idEstilo, idAlbum) VALUES (1, 1);

--- SELECT
SELECT * FROM usuario;
SELECT * FROM estilo;
SELECT * FROM artista;
SELECT * FROM album;
SELECT * FROM estiloAlbum;

--- UPDATE
UPDATE album SET
	Localizacao = '?'
WHERE idAlbum = 1;

--- DELETE 
DELETE FROM usuario WHERE idUsuario = 2;
