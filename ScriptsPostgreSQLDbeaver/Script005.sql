select * from "DBO".cidade;

--operadores de junção
--junção cruzado uso de alias com duas tabelas

select  c.nome, c.estado,
		l.longitude,l.latitude
		from "DBO".cidade c, "DBO".localizacao l;
--juntando todos os nomes e estados dos registros da tabela cidade e latitide e longitude da tabela 
--localizacao, combinação linha a linha

select  c.*, l.*
	from "DBO".cidade c, "DBO".localizacao l;
	--juntando todos os registros da tabela cidade e localizacao, combinação linha a linha
--primeira com todas da outra tabela, segunda com todos da outra tabela,...
select  c.*, l.*
	from "DBO".cidade c cross join "DBO".localizacao l;
--serve pra substituir a virgula

--o metodo anterior repete tados que podem nao fazer sentido
--para garantir sentido, se usa o where
select  c.nome,c.estado, l.latitude,l.longitude 
from "DBO".cidade c, "DBO".localizacao l
where c.id = l.id_cidade ;
--gera combinções, filtra com where

--junções qualificada
select  c.nome,c.estado, l.latitude,l.longitude 
from "DBO".cidade c inner join "DBO".localizacao l
on (c.id = l.id_cidade);
--gera ja filtrado melhora desempenho das consultas, mostra so as cidades com localização
--on condição da junção, ainda pode ser usado o where
select  c.nome,c.estado, l.latitude,l.longitude 
from "DBO".cidade c inner join "DBO".localizacao l
on (c.id = l.id_cidade) 
where c.nome like '%l%';

select  c.nome,c.estado, l.latitude,l.longitude 
from "DBO".cidade c left outer join "DBO".localizacao l
on (c.id = l.id_cidade);
--mostra todas as cidades e suas respectivas localizações, left indica para mostar todos a esquerda do operador, 
--no caso mostrar todas as cidades. Com o left o outer pode ser oculto