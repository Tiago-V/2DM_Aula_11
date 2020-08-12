--- Uber

--- Banco de dados Uber 
CREATE DATABASE uber	
GO

--- Usar banco
USE uber;
GO

--- Criar Tabelas
--- Motorista
CREATE TABLE motorista (
	idMotorista INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	Estrelar FLOAT,
	Latitude VARCHAR (20),
	Longitude VARCHAR (20),
);

--- Passageiro
CREATE TABLE passageiro (
	idPassageiro INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (20),
	Estrelar FLOAT,
	Latitude VARCHAR (20),
	Longitude VARCHAR (20),
);

--- Status
CREATE TABLE statusOK (
	idStatus INT IDENTITY PRIMARY KEY NOT NULL,
	statusOk VARCHAR (20)
);

--- Tipo Pagamento 
CREATE TABLE tipoPagamento (
	idTipoPagamento INT IDENTITY PRIMARY KEY NOT NULL,
	tipo VARCHAR (20)
);

--- Bandeira
CREATE TABLE bandeira (
	idBandeira INT IDENTITY PRIMARY KEY NOT NULL,
	bandeira VARCHAR (20),
	logo VARCHAR (20)
);

--- Conta Bancaria
CREATE TABLE contaBancaria (
	idContaBancaria INT IDENTITY PRIMARY KEY NOT NULL,
	Titular VARCHAR (20),
	Agenda INT,
	Conta INT,
	idMotorista INT FOREIGN KEY REFERENCES motorista (idMotorista)
);

--- Cartao
CREATE TABLE cartao (
	idCartao INT IDENTITY PRIMARY KEY NOT NULL,
	bandeira VARCHAR (20),
	numero VARCHAR (20),
	titular VARCHAR (20),
	cvv VARCHAR (20),
	vencimento VARCHAR (20),
	idBandeira INT FOREIGN KEY REFERENCES bandeira (idBandeira),
);
--- FormaPagamento
CREATE TABLE formaPagamento (
	idFormaPagamento INT IDENTITY PRIMARY KEY NOT NULL,
	idPassageiro INT FOREIGN KEY REFERENCES passageiro (idPassageiro),
	idCartao INT FOREIGN KEY REFERENCES cartao (idCartao),
	idTipoPagamento INT FOREIGN KEY REFERENCES tipoPagamento (idTipoPagamento),
);

--- Corrida
CREATE TABLE corrida (
	idCorrida INT IDENTITY PRIMARY KEY NOT NULL,

	Partida VARCHAR (20),
	Destino VARCHAR (20),
	DataHora VARCHAR (20),

	idPassageiro INT FOREIGN KEY REFERENCES passageiro (idPassageiro),
	idMotorista INT FOREIGN KEY REFERENCES motorista (idMotorista),
	idFormaPagamento INT FOREIGN KEY REFERENCES formaPagamento (idFormaPagamento),
	idContaBancaria INT FOREIGN KEY REFERENCES contaBancaria (idContaBancaria),
	idStatus INT FOREIGN KEY REFERENCES statusOK (idStatus)
);
