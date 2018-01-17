	CREATE TABLE contas (
		ID INT PRIMARY KEY	NOT NULL,
		NOME text NOT NULL
		);

	CREATE TABLE vencimento	(
		ID INT PRIMARY KEY	NOT NULL,
		DIA INT NOT NULL,
		ID_CONTAS INT NOT NULL,
			FOREIGN KEY (ID_CONTAS) REFERENCES contas(ID)
			);
	
	CREATE TABLE valor	(	
		ID INT PRIMARY KEY	NOT NULL,
		VALOR INT NOT NULL
			);
			
	CREATE TABLE mes	(
		ID INT PRIMARY KEY	NOT NULL,
		NOME text INT NOT NULL
		);

		CREATE TABLE mesXvalor	(
		VALOR_VALOR int not null,
		NOME_MES text not null,
		NOME_CONTA text not null,
			FOREIGN KEY (VALOR_VALOR) REFERENCES valor(VALOR),
			FOREIGN KEY (NOME_MES) REFERENCES mes(NOME),
			FOREIGN KEY (NOME_CONTA) REFERENCES conta(NOME)
		);

	CREATE TABLE sistema(
		ID INT PRIMARY KEY	NOT NULL,
		PASSO text not null
		);

	CREATE TABLE mesXsistema(
		PASSO_SISTEMA int not null,
		NOME_MES text not null,
		NOME_CONTA text not null,
			FOREIGN KEY (PASSO_SISTEMA) REFERENCES sistema(PASSO),
			FOREIGN KEY (NOME_MES) REFERENCES mes(NOME),
			FOREIGN KEY (NOME_CONTA) REFERENCES conta(NOME)
		);
		
		
		
		
		
------------------------------------------------------------------------
INSERTS
------------------------------------------------------------------------

INSERT INTO contas (ID,NOME)
VALUES (1, "Vivo Movel");

INSERT INTO contas (ID,NOME)
VALUES (2, "Vivo 3G");

INSERT INTO contas (ID,NOME)
VALUES (3, "Vivo IP Dedicado");

INSERT INTO contas (ID,NOME)
VALUES (4, "Vivo Monitora");

INSERT INTO contas (ID,NOME)
VALUES (5, "Claro 3G");

INSERT INTO contas (ID,NOME)
VALUES (6, "Embratel Vipphone");

INSERT INTO contas (ID,NOME)
VALUES (7, "Embratel Link Internet");

INSERT INTO contas (ID,NOME)
VALUES (8, "Nitromidia");

INSERT INTO contas (ID,NOME)
VALUES (9, "Planus Taxa Fixa");

INSERT INTO contas (ID,NOME)
VALUES (10, "Planus Taxa Variavel");

INSERT INTO contas (ID,NOME)
VALUES (11, "Konics");

INSERT INTO contas (ID,NOME)
VALUES (12, "Engineering");

INSERT INTO contas (ID,NOME)
VALUES (13, "DirectNet");

INSERT INTO contas (ID,NOME)
VALUES (14, "NETVirtua");



