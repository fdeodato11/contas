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


---------------------------------------------------------------------------


INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (1,25,1);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (2,25,2);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (3,15,3);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (4,15,4);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (5,15,5);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (6,24,6);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (7,25,7);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (8,15,8);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (9,14,9);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (10,14,10);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (11,7,11);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (12,9,12);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (13,11,13);

INSERT INTO vencimento (ID,DIA,ID_CONTAS)
VALUES (14,10,14);

---------------------------------------------------------------------------

INSERT INTO mes (ID,NOME)
VALUES (1, "JANEIRO");

INSERT INTO mes (ID,NOME)
VALUES (2, "FEVEREIRO");

INSERT INTO mes (ID,NOME)
VALUES (3, "MARCO");

INSERT INTO mes (ID,NOME)
VALUES (4, "ABRIL");

INSERT INTO mes (ID,NOME)
VALUES (5, "MAIO");

INSERT INTO mes (ID,NOME)
VALUES (6, "JUNHO");

INSERT INTO mes (ID,NOME)
VALUES (7, "JULHO");

INSERT INTO mes (ID,NOME)
VALUES (8, "AGOSTO");

INSERT INTO mes (ID,NOME)
VALUES (9, "SETEMBRO");

INSERT INTO mes (ID,NOME)
VALUES (10, "OUTUBRO");

INSERT INTO mes (ID,NOME)
VALUES (11, "NOVEMBRO");

INSERT INTO mes (ID,NOME)
VALUES (12, "DEZEMBRO");

------------------------------------------------------------------------

INSERT INTO sistema (ID,PASSO)
VALUES (1, "RECEBIDO");

INSERT INTO sistema (ID,PASSO)
VALUES (2, "REQUISICAO");

INSERT INTO sistema (ID,PASSO)
VALUES (3, "PEDIDO");

INSERT INTO sistema (ID,PASSO)
VALUES (4, "APROVACAO");


