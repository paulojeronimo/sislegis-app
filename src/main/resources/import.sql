--insert into Proposicao (id, ano, autor, dataApresentacao, idProposicao, numero, tipo, origem) values (1, '2014', 'Parlamentar 1', CURRENT_DATE, 464139, '6607', 'PL', 'CAMARA');
--insert into Proposicao (id, ano, autor, dataApresentacao, idProposicao, numero, tipo, origem) values (2, '2014', 'Parlamentar 2', CURRENT_DATE, 20918, '4491', 'PL', 'CAMARA');
--insert into Proposicao (id, ano, autor, dataApresentacao, idProposicao, numero, tipo, origem) values (3, '2014', 'Parlamentar 3', CURRENT_DATE, 529820, '2833', 'PL', 'CAMARA');

--insert into Reuniao (id, data) values (1, CURRENT_DATE);

--insert into ReuniaoProposicao(dataReuniao, siglaComissao, idProposicao, idReuniao) values (CURRENT_DATE, 'C_TESTE', 1, 1);

-- Posicionamentos
insert into Posicionamento (nome, id) values ('Acompanhar Relator', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Acompanhar Substitutivo', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Contrário', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Contrário com Emendas', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Contrário', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Elaborar VTS', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Favorável', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Favorável com Emendas', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Indiferente', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Nada a opor', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Não é tema do MJ', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Previamente Contrário', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Previamente Favorável', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Previamente Indiferente', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Previamente Nada a opor', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Previamente Não é tema do MJ', nextval ('hibernate_sequence'));
insert into Posicionamento (nome, id) values ('Seguir pela Rejeição', nextval ('hibernate_sequence'));

-- Encaminhamentos
insert into Encaminhamento (nome, id) values ('Agendar Reunião', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Apenas Monitorar', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Cobrar Posicionamento', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Despachar Nota Técnica com o Secretário', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Elaborar Nota Técnica', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Elaborar VTS', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Enviar E-mail', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Fazer contato telefônico', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Incluir na Pauta Prioritária', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Pedir Retirada de Pauta', nextval ('hibernate_sequence'));
insert into Encaminhamento (nome, id) values ('Retirar da Pauta do MJ', nextval ('hibernate_sequence'));

-- Tags
insert into Tag (id) values('Ministério');
insert into Tag (id) values('Câmara');
insert into Tag (id) values('Senado');

-- Usuarios
DELETE FROM Usuario;
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Matheus Oliveira', 'matheus.neves@gmail.com');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Guilherme Alberto Almeida de Almeida', 'guialmeida@gmail.com');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Sabrina ', 'sabrina.marques@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Anna Claudia Pardini Vazzoler ', 'anna.pardini@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Patrick Mariano Gomes', 'patrick.gomes@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Márcio Lopes de Freitas Filho', 'marcio.freitas@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Ricardo Lobo da Luz', 'ricardo.luz@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Leandro Guedes', 'leandro.guedes@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Ricardo Horta', 'ricardo.horta@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Helena Romeu dos Anjos', 'helena.anjos@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Renata Cristina do Nascimento Antão', 'renata.antao@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Rodrigo  Barros de Souza', 'rodrigo.debarros@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Pedro Henrique Costa Godeiro Carlos', 'pedro.carlos@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Angelina Aparecida Dourado Santos', 'angelina.dsantos@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Emmanoele Monique de Souza da Luz', 'emmanoele.luz');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Sabrina Durigon Marques', 'sabrina.marques@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Ana Maria de Souza Serafim', 'ana.serafim@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Damiane Alves', 'damiane.alves@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Luciana Felix Ferreira', 'luciana.fferreira@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Carolina Amaral Venuto', 'carolina.venuto@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Nayara Leao', 'nayara.nunes@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Renata Souto Martins', 'renata.martins@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Guilherme Moraes-Rego', 'guilherme.moraesrego@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Marcelo Chilvarquer', 'marcelo.chilvarquer@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Natalia Dino', 'natalia.dino@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Vladimir Sampaio Soares de Lima', 'vladimir.lima@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Marcel Fortes de Oliveira Portela', 'marcel.portela@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Walter Barbosa Vitor', 'walter.vitor@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Paula  Lacerda Resende', 'paula.lacerda@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Ricardo Horta', 'ricardo.horta@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Lauana da Silva Fernandes', 'lauana.fernandes@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Ligia  Gonçalves Ramos', 'ligia.ramos@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Ivone  Marques de Oliveira', 'ivone.oliveira@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Nathalia  Alves Almeida', 'nathalia.aalmeida@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Marcos Aurélio  Nunes da Fonseca', 'marcos.fonseca@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Luiz Albuquerque Couto', 'dep.luizcouto@camara.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Fernanda Mendes Soares', 'fernanda.msoares@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Antônia Silva', 'antonia.silva@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Elaine  Lopes Santana de Abreu', 'elaine.abreu@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Priscilla Seixas Costa', 'priscilla.seixascosta@gmail.com');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'João Vitor Rodrigues Loureiro', 'joao.loureiro@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'João Vitor Loureiro', 'joao.loureiro@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Tiago Toigo', 'tiagott@gmail.com');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Maria Eduarda Ribeiro Cintra', 'eduarda.cintra@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Hamilton Gomes', 'hamilton.gomes@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Rodrigo Mercante', 'rodrigo.mercante@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Eduardo Paiva', 'eduardo.paiva@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Bruna Mendes', 'bruna.mendes@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Marco Antonio Konopacki', 'marco.konopacki@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Bruna Piazzi', 'bruna.piazzi@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Edriene dos Santos Oliveira', 'edriene.oliveira@mj.gov.br');
INSERT INTO Usuario (id, nome, email) VALUES(nextval ('hibernate_sequence'), 'Yara Campos Souto', 'yara.souto@mj.gov.br');

INSERT INTO Usuario (id, nome, email) VALUES(999, 'Guilherme Hott', 'guilhermehott@gmail.com');

-- equipe
insert into equipe(id, nome) values (nextval ('hibernate_sequence'), 'Equipe 1');
insert into equipe(id, nome) values (nextval ('hibernate_sequence'), 'Equipe 2');
insert into equipe(id, nome) values (nextval ('hibernate_sequence'), 'Equipe 3');

-- OrigemElaboracaoNormativa
insert into OrigemElaboracaoNormativa(id, descricao) values (nextval ('hibernate_sequence'), 'Origem 1');
insert into OrigemElaboracaoNormativa(id, descricao) values (nextval ('hibernate_sequence'), 'Origem 2');
insert into OrigemElaboracaoNormativa(id, descricao) values (nextval ('hibernate_sequence'), 'Origem 3');

-- AreaConsultada
insert into AreaConsultada(id, descricao) values (nextval ('hibernate_sequence'), 'AreaConsultada 1');
insert into AreaConsultada(id, descricao) values (nextval ('hibernate_sequence'), 'AreaConsultada 2');
insert into AreaConsultada(id, descricao) values (nextval ('hibernate_sequence'), 'AreaConsultada 3');

--Status Sidof
insert into StatusSidof(id, descricao) values (nextval ('hibernate_sequence'), 'Em Trâmite na PR');
insert into StatusSidof(id, descricao) values (nextval ('hibernate_sequence'), 'Em análise no co-autor');
insert into StatusSidof(id, descricao) values (nextval ('hibernate_sequence'), 'Em trâmite no co-autor');


-- Órgão
insert into Orgao(id, nome) values (nextval ('hibernate_sequence'), 'Ministério da Justiça');
insert into Orgao(id, nome) values (nextval ('hibernate_sequence'), 'MPOG');
insert into Orgao(id, nome) values (nextval ('hibernate_sequence'), 'Senado');
insert into Orgao(id, nome) values (nextval ('hibernate_sequence'), 'Câmara');
insert into Orgao(id, nome) values (nextval ('hibernate_sequence'), 'Policia Federal');
insert into Orgao(id, nome) values (nextval ('hibernate_sequence'), 'MEC');
