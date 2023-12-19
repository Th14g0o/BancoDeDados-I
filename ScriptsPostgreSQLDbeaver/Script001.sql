
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

--INSERT INTO "DBO".tempo
--(tempo_min, tempo_max, precip_pluviom, data_coleta, id_cidade)
--VALUES(25, 29, 10, '2023-08-12', 3), (26, 29, 15, '2023-08-12', 11), (27, 30, 10, '2023-08-12', 10), 
	  --(25, 29, null, '2023-08-13', 3), (26, 30, 15, '2023-08-13', 11), (27, 31, null, '2023-08-13', 10),
	  --(26, 31, 20, '2023-08-14', 3), (26, 31, 30, '2023-08-14', 11), (26, 31, 30, '2023-08-14', 10);


--Inserindo na tabela central do esquema DBO
--INSERT INTO "DBO".central
--(codigo)
--VALUES('CMT01'), ('CMT02');

INSERT INTO "DBO".tempocentral
(id_tempo, codigo_central)
VALUES(45, 'CMT01'), (47, 'CMT01'), (46, 'CMT02'), (48, 'CMT02');

--O Dbeaver tava dando pau, então fui por aqui
--ALTER TABLE "DBO".central ALTER COLUMN codigo TYPE char(5) USING codigo::char;
SELECT * FROM "DBO".central

SELECT * FROM "DBO".tempo

SELECT * FROM "DBO".tempocentral where codigo_central ='CMT02'; 

delete from "DBO".tempocentral where id_tempo = 45;
delete from "DBO".tempocentral where id_tempo = 46 and codigo_central = 'CMT02' ;



--atuakizar codifos da central cujo jnome inbicia com cmt
update "DBO".tempo set precip_pluviom = precip_pluviom * 1.05 where id_cidade = 3 and precip_pluviom is not null ;



--Cliente table
ALTER TABLE public.cliente ALTER COLUMN senha TYPE varchar(255) USING senha::varchar;

select * from public.cliente;

delete from public.cliente where email is null and dt_nasc is null;
delete from public.cliente where email is null or dt_nasc is null;

INSERT INTO public.cliente
(nome, email, cpf)
VALUES('C Heusser', 'cheusser', '12345678901'),('S Silva',  null, '12345678902'), ('F Machado', null, '12345678903');




--
--
--Inserts no projeto integrador

INSERT INTO "PI".usuario
(nome_id, genero, nome, descricao, email, imagem, senha, matricula)
VALUES('Th14g0o','Masculino', 'Thiago', 'A vida é uma magueira', 'thiago@gmail.com', '\x445555', 'thiago123', '2014'), --\x
	  ('Welli','Masculino', 'Wellinton', 'Ola, eu sou Wellinton', 'well@gmail.com', '\x544444', 'welli123', '2013'),
	  ('JoaoDosLanche','Masculino', 'Joao', 'Cinco reais o lanche', 'jjj@gmail.com', '\x656666', 'lanche123', '2001'),
	  ('LatinoAmericano','Masculino', 'Pedro', 'Vai Brasil', 'pedro@gmail.com', '\x641111', 'latinoamericano123', '2002'),
	  ('Cleyton', 'Cley','Masculino', 'Cleyton', 'cley@gmail.com', '\x622222', 'cleyton123', '2020');

INSERT INTO "PI".moderador
(id, senha)
VALUES(1, '237277@hdu3821'),
	  (2, '31883bfhhe3'),
	  (3, '3727gcueubfe'),
	  (4, '23217gfydgfd'),
	  (5, '288uyjrhg48');

INSERT INTO "PI".grupo
(nome, descricao, imagem, nome_id_usuario, privacidade)
VALUES('Rosquinhas Digitalizada', 'Grupinho ae', '\x334455', 'Cleyton', true),
	  ('Acordos', 'Assossiações dos vendedores', '\x661122', 'JoaoDosLanche', false),
	  ('João dos lanche', 'Encomende por aqui', '\x992882', 'JoaoDosLanche', true),
	  ('Fãs de fotebol', 'Vai brasil', '\x092233', 'LatinoAmericano', true),
	  ('JSL', 'Jogos são legais', '\x223344', 'Th14g0o', true);	 

INSERT INTO "PI".post
(data_hora, texto, imagem, tipo, nome_usuario_id)
VALUES('2023-09-26', 'Desconto de 30% na coxinha', '\x836448', true, 'JoaoDosLanche'),
	  ('2023-09-26', 'Ola, Mundo!', null, false, 'Th14g0o'),
	  ('2023-09-26', 'Desconto de 50% em tudo no seu niversario', '\x836448', true, 'Welli'),
	  ('2023-09-26', 'Meu nome é cleyton', null, false, 'Cleyton'),
	  ('2023-09-26', '2-1:(', '\x555538', true, 'LatinoAmericano');	 
	 
INSERT INTO "PI".amizade
(nome_id_usuario_1, nome_id_usuario_2)
VALUES('JoaoDosLanche', 'Th14g0o'),
      ('JoaoDosLanche', 'Welli'),
      ('JoaoDosLanche', 'LatinoAmericano'),
      ('JoaoDosLanche', 'Cleyton'),
      ('Cleyton', 'Th14g0o');

INSERT INTO "PI".denuncia
(tipo, descricao, data_hora, nome_id_usuario, nome_usuario_denunciado, id_post)
VALUES('Assedio', 'Esse cara fez coisas estranhas', '2023-10-2 14:00', 'Welli', 'Cleyton',null),
 	  ('Fake news', 'Mentiu na promoção', '2023-10-2 15:00', 'Welli', null, 1),
 	  ('Fake news', null, '2023-10-2 16:00', 'LatinoAmericano', null,1),
 	  ('Fake news', null, '2023-10-2 17:00', 'Th14g0o', null,1),
 	  ('Fake news', null, '2023-10-2 18:00', 'Cleyton', null,1);

INSERT INTO "PI".mensagem
(texto, data_hora, nome_usuario_id, id_grupo)
VALUES('Quero coxinha C-7', '2023-10-2 14:00', 'LatinoAmericano', 8),
 	  ('A caminho', '2023-10-2 14:10', 'JoaoDosLanche', 8),
 	  ('Quero coxinha Lab-11 anexo', '2023-10-2 15:00', 'Cleyton', 8),
 	  ('A caminho', '2023-10-2 15:03', 'JoaoDosLanche', 8),
 	  ('Quero coxinha Lab-5 Diatinf', '2023-10-2 16:00', 'Cleyton', 8);

INSERT INTO "PI".pertence
(adm, nome_id_usuario, id_grupo)
VALUES(true, 'Welli', 7),
	  (false, 'Th14g0o', 8),
	  (false, 'LatinoAmericano', 8),
	  (false, 'Cleyton', 8),
	  (false, 'JoaoDosLanche', 10);

INSERT INTO "PI".comentario
(data_hora, nome_id_usuario, texto, id_post)
VALUES('2023-10-2 12:00', 'JoaoDosLanche', 'Só hoje hein', 1),
	  ('2023-10-2 13:00', 'Cleyton', 'Bom', 1),
	  ('2023-10-2 13:22', 'Welli', 'Brabo', 1),
	  ('2023-10-2 13:30', 'Th14g0o', 'Legal', 3),
	  ('2023-10-2 13:50', 'Cleyton', 'Ancioso', 3); 
	 
INSERT INTO "PI".reagiu
(data_hora, tipo, nome_id_usuario, nome_id_usuario_2, id_post)
VALUES('2023-09-26', 3, 'LatinoAmericano', 'Th14g0o', 2),
	  ('2023-09-26', 4, 'Welli', 'Th14g0o', 2),
	  ('2023-09-26', 1, 'JoaoDosLanche', 'Th14g0o', 2),
	  ('2023-09-26', 2, 'Cleyton', 'Th14g0o', 2),
	  ('2023-09-26', 9, 'Th14g0o', 'Welli', 3);








select * from "PI".post  d  ;
select * from "PI".denuncia  d  ;
select * from "PI".grupo g    ;
select * from "PI".pertence p   ;



--Item 7. Três comandos SELECT com junção interna (INNER JOIN)
select * from "PI".mensagem m inner join "PI".usuario u  on (m.id_grupo  = 8 and m.nome_usuario_id = u.nome_id);
--pegando mensagens do grupo João dos lanche(Visualizando grupo)
select * from "PI".post p  inner join "PI".usuario u on (p.nome_usuario_id  = 'JoaoDosLanche' and u.nome_id = 'JoaoDosLanche');
--Pegando posts do usuario JoaoDosLanche(Visualizar contas)
select * from "PI".comentario c   inner join "PI".usuario u on (u.nome_id  = c.nome_id_usuario  and c.id_post  = 1);
--Pegando comentarios de um post(Visualizar postagem)


--Item 8. Dois comandos SELECT com junção externa parcial (LEFT ou RIGHT OUTER JOIN)
select * from "PI".denuncia d  right outer join "PI".usuario u on u.nome_id  = d.nome_usuario_denunciado;
--pegar usuarios denunciados (gerenciar usuarios)
select u.nome_id, count(g.*)  from  "PI".usuario u  left outer join "PI".grupo g on( g.nome_id_usuario = u.nome_id ) group by u.nome_id  ;
--usarios e quantidade de grupos que ele criou (pesquisar grupos)        
                       
--Item 9. Um comando SELECT com junção externa total (FULL OUTER JOIN)
alter table "PI".moderador add column nome_id varchar(30) null unique;
 --comando usado por motivos academicos
select * from "PI".usuario u  full join "PI".moderador m on  m.nome_id = u.nome_id  ;
--pegando adms e usuarios e agrupando se possuem o mesmo nome id



--Item 10. Um comando para criar uma VIEW envolvendo pelo menos duas tabelas.
create view "PI".Perfil
as
select p.id_post ,
	p.texto, 
	p.imagem , 
	u.nome_id , 
	u.nome , 
	u.descricao
    		from "PI".post p  right join "PI".usuario u
                        on u.nome_id  = p.nome_usuario_id ;
--Pegando posts de um usuario(VerPerfil[Gerenciar Perfil])
select * from "PI".Perfil;
select * from "PI".Perfil where nome_id = 'JoaoDosLanche';
drop view "PI".Perfil;

--Item 11. Dois comandos definindo procedimentos armazenados.
create procedure "PI".insertAdm(s varchar(30))
language plpgsql
as $$
	declare 
		_id int;
	begin
		_id := max(id)+1 from "PI".moderador;
		insert into "PI".moderador(senha, id) values (s, _id);
	end
$$;
--adicionar adm
create procedure "PI".LimparDenunciasDeUmUsuario(id varchar(30))
language sql
as $$
	delete from  "PI".denuncia  where nome_usuario_denunciado = id or id_post in 
		(select p.id_post from "PI".post p where  nome_usuario_id  = id);	
$$;
--apagar denuncias em massa para um usuario por motivos pessoais invalidos(Gerencia denuncias)

--Item 12. Um comando para executar cada um dos procedimentos armazenados definidos no Item 11.
call "PI".insertAdm('adm');
call "PI".LimparDenunciasDeUmUsuario('JoaoDosLanche')


--Item 13. Dois comandos definindo funções (UDFs).
create or replace function "PI".QuantDenun
(nomeUser varchar(30))
returns int
as $$
declare
  quant int;
begin 
	quant :=  count(*) from "PI".denuncia d  where d.nome_usuario_denunciado = nomeUser or d.id_post in 
		(select id_post from "PI".post p where p.nome_usuario_id  = nomeUser);
	return quant;
end;
$$ language plpgsql;
--quantidade de denumcias de um usuario( gerenciar denuncias)

create or replace function "PI".QuantMembs
(idGrupo int4)
returns int
as $$
declare
  quant int;
begin 
	quant := count(*) from "PI".pertence p  where p.id_grupo = idGrupo ;
	return quant + 1;
end;
$$ language plpgsql;
--quantidade de membros de um grupo

--Item 14. Um comando para executar cada uma das funções definidas no Item 13.
select "PI".QuantDenun('Th14g0o');
select "PI".QuantMembs(8); 

--Item 15. Dois comandos definindo gatilhos (triggers) e suas respectivas funções.
update "PI".usuario  set nome  = 'Santa Rosa' where nome_id = 'Gabriel';

create trigger MsgEditarSucess 
	before update on "PI".usuario  
	for each row execute function "PI".msg_exito_editar();

create or replace function "PI".msg_exito_editar()
returns trigger 
language plpgsql
as $$
begin 
	raise info 'A tabela de usuario foi atualizada: % - %.', new.nome_id, new.nome;
	return new;
end;
$$;
drop trigger MsgEditarSucess on "PI".usuario ;
--Msg de sucesso ao editar perfil(gerenciar perfil)


create trigger MsgCriarPostSucess 
	before insert on "PI".post 
	for each row execute function "PI".msg_exito_criar_post();

create or replace function "PI".msg_exito_criar_post()
returns trigger 
language plpgsql
as $$
begin 
	raise info 'A tabela de de post foi atualizado foi atualizada: % - %.', new.id_post, new.tipo;
	return new;
end;
$$;
--MOstrando mensageem apos de sucesso apos criar post[Gerenciar posts]









--apagar usuaurio e seus posts
