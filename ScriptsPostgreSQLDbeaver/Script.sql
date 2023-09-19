
--Inserindo na tabela cidade do esquema DBO
--INSERT INTO "DBO".cidade
--(nome, estado)
--VALUES('Recife', 'PE'), ('João Pessoa', 'PE');

--Deletando da tabela cidade do esquema DBO
--DELETE FROM "DBO".cidade
--WHERE nome='Belem' AND estado='RN';

--Update de um registro da tabela cidade do esquema DBO

--Inserindo na tabela localizacao do esquema DBO
--INSERT INTO "DBO".localizacao
--(latitude, longitude, id_cidade)
--VALUES(-5.825, -35.424, 3), (-8.042,-35009,9);



--Inserindo na tabela central do esquema DBO
--INSERT INTO "DBO".central
--(codigo)
--VALUES('CMT01'), ('CMT02');


--O Dbeaver tava dando pau, então fui por aqui
--ALTER TABLE "DBO".central ALTER COLUMN codigo TYPE char(5) USING codigo::char;

