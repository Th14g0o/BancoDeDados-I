
--Inserindo na tabela cidade do esquema DBO
--INSERT INTO "DBO".cidade
--(nome, estado)
--VALUES('Macaiba', 'RN');

--Deletando da tabela cidade do esquema DBO
--DELETE FROM "DBO".cidade
--WHERE nome='Belem' AND estado='RN';

--Update de um registro da tabela cidade do esquema DBO

--Inserindo na tabela localizacao do esquema DBO
--INSERT INTO "DBO".localizacao
--(latitude, longitude, id_cidade)
--VALUES(-8.042, -35.009, 11), (-3.791,-35.598,10);

INSERT INTO "DBO".tempo
(tempo_min, tempo_max, precip_pluviom, data_coleta, id_cidade)
VALUES(25, 29, 10, '2023-08-12', 3), (26, 29, 15, '2023-08-12', 11), (27, 30, 10, '2023-08-12', 10), 
	  (25, 29, null, '2023-08-13', 3), (26, 30, 15, '2023-08-13', 11), (27, 31, null, '2023-08-13', 10),
	  (26, 31, 20, '2023-08-14', 3), (26, 31, 30, '2023-08-14', 11), (26, 31, 30, '2023-08-14', 10);


--Inserindo na tabela central do esquema DBO
--INSERT INTO "DBO".central
--(codigo)
--VALUES('CMT01'), ('CMT02');


--O Dbeaver tava dando pau, então fui por aqui
--ALTER TABLE "DBO".central ALTER COLUMN codigo TYPE char(5) USING codigo::char;


