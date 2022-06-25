DROP TABLE IF EXISTS TAREFA;
DROP TABLE IF EXISTS ATIVIDADE;
DROP TABLE IF EXISTS PROJETO;
DROP TABLE IF EXISTS EQUIPE_FUNCIONARIO;
DROP TABLE IF EXISTS EQUIPE;
DROP TABLE IF EXISTS FOLHA_PONTO;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS CARGO;

CREATE TABLE FUNCIONARIO (
	ID INTEGER PRIMARY KEY,
	Nome VARCHAR,
	Data_nascimento DATE,
	Cpf VARCHAR,
	FK_CARGO_Id INTEGER
);

CREATE TABLE CARGO (
	Id INTEGER PRIMARY KEY,
	Nome VARCHAR
);

CREATE TABLE FOLHA_PONTO (
	Id INTEGER PRIMARY KEY,
	entrada TIMESTAMP,
	saida_almoco TIMESTAMP,
	entrada_pos_almoco TIMESTAMP,
	saida TIMESTAMP,
	FK_FUNCIONARIO_ID INTEGER
);

CREATE TABLE EQUIPE (
	id INTEGER PRIMARY KEY,
	nome VARCHAR,
	FK_FUNCIONARIO_ID INTEGER
);

CREATE TABLE ATIVIDADE (
	id INTEGER PRIMARY KEY,
	atividade VARCHAR,
	tempo_estimado TIME,
	status VARCHAR,
	FK_EQUIPE_id INTEGER,
	FK_PROJETO_id INTEGER
);

CREATE TABLE PROJETO (
	id INTEGER PRIMARY KEY,
	nome VARCHAR
);

CREATE TABLE TAREFA (
	FK_ATIVIDADE_id INTEGER,
	FK_FUNCIONARIO_ID INTEGER,
	id INTEGER PRIMARY KEY,
	descricao VARCHAR
);

CREATE TABLE EQUIPE_FUNCIONARIO (
	fk_FUNCIONARIO_ID INTEGER,
	fk_EQUIPE_id INTEGER
);

ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK_FUNCIONARIO_2
	FOREIGN KEY (FK_CARGO_Id)
	REFERENCES CARGO (Id)
	ON DELETE RESTRICT;
 
ALTER TABLE FOLHA_PONTO ADD CONSTRAINT FK_FOLHA_PONTO_2
	FOREIGN KEY (FK_FUNCIONARIO_ID)
	REFERENCES FUNCIONARIO (ID)
	ON DELETE RESTRICT;
 
ALTER TABLE EQUIPE ADD CONSTRAINT FK_EQUIPE_2
	FOREIGN KEY (FK_FUNCIONARIO_ID)
	REFERENCES FUNCIONARIO (ID)
	ON DELETE RESTRICT;
 
ALTER TABLE ATIVIDADE ADD CONSTRAINT FK_ATIVIDADE_2
	FOREIGN KEY (FK_EQUIPE_id)
	REFERENCES EQUIPE (id)
	ON DELETE RESTRICT;

ALTER TABLE ATIVIDADE ADD CONSTRAINT FK_ATIVIDADE_3
	FOREIGN KEY (FK_PROJETO_id)
	REFERENCES PROJETO (id)
	ON DELETE RESTRICT;
 
ALTER TABLE TAREFA ADD CONSTRAINT FK_TAREFA_1
	FOREIGN KEY (FK_ATIVIDADE_id)
	REFERENCES ATIVIDADE (id)
	ON DELETE RESTRICT;
 
ALTER TABLE TAREFA ADD CONSTRAINT FK_TAREFA_2
	FOREIGN KEY (FK_FUNCIONARIO_ID)
	REFERENCES FUNCIONARIO (ID)
	ON DELETE RESTRICT;
 
ALTER TABLE EQUIPE_FUNCIONARIO ADD CONSTRAINT FK_EQUIPE_FUNCIONARIO_1
	FOREIGN KEY (fk_FUNCIONARIO_ID)
	REFERENCES FUNCIONARIO (ID)
	ON DELETE RESTRICT;
 
ALTER TABLE EQUIPE_FUNCIONARIO ADD CONSTRAINT FK_EQUIPE_FUNCIONARIO_2
	FOREIGN KEY (fk_EQUIPE_id)
	REFERENCES EQUIPE (id)
	ON DELETE RESTRICT;

	INSERT INTO PROJETO (id, nome) VALUES
    (1, 'Sistema de controle - Pizzaria'),
    (2, 'Sistema de controle - Supermercado'),
    (3, 'Sistema de controle - Coelção de Cartas'),
    (4, 'Sistema de controle - Farm Genshin Impact'),
    (5, 'Sistema de controle - Padaria'),
    (6, 'Sistema de controle - Churrascaria'),
    (7, 'Sistema de controle - Posto de Gasolina'),
    (8, 'Sistema de controle - Sala de Aula'),
    (9, 'Sistema de controle - IFES'),
    (10, 'Sistema de controle - Autoglass');



INSERT INTO CARGO (id, nome) VALUES
    (1, 'Estagiário'),
    (2, 'Gerente'),
    (3, 'Administrador de TI'),
    (4, 'Analista de Desenvolvimento'),
    (5, 'Projetista'),
    (6, 'Desenvolvedor'),
    (7, 'Analista de Infraestrutura'),
    (8, 'Governante de TI'),
    (9, 'Diretor'),
    (10, 'Arquiteto de Software');



INSERT INTO FUNCIONARIO (ID, Nome, Data_nascimento, Cpf, FK_CARGO_Id) VALUES
    (1, 'Robescláudio Ferreira da Silva', '1997-08-03', '138.434.191-91', 1),
    (2, 'Janedilva Mangueiros Teixeira', '1986-02-08', '033.339.120-90', 2),
    (3, 'Raybesvane de Silva e Silva', '1998-01-29', '401.766.667-10', 3),
    (4, 'Wandercley Borges Miguel', '1985-03-09', '324.784.017-62', 4),
    (5, 'Kérolaynni Carvalho Rodrigues', '1983-09-05', '199.442.726-47', 5),
    (6, 'Josefina Margalhães Teixeira de Jesus', '1987-09-03', '399.339.391-06', 6),
    (7, 'Oswaldelino José Oliveira Cardoso', '1990-08-10', '035.237.065-30', 7),
    (8, 'Adeswaldette von Luftschloss e Tal', '1999-09-03', '809.553.680-65', 8),
    (9, 'Roswaulo Narfidort Amorim', '1994-08-10', '328.281.221-31', 9),
    (10, 'Fullan do Megistus Ribeirão', '1985-05-08', '772.991.873-02', 10);



INSERT INTO FOLHA_PONTO (id, entrada, saida_almoco, entrada_pos_almoco, saida, FK_FUNCIONARIO_ID) VALUES
    (1, TIMESTAMP'2021-09-13 12:01', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:02', TIMESTAMP'2021-09-13 16:07', 6),
    (2, TIMESTAMP'2021-09-13 12:05', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:03',TIMESTAMP'2021-09-13 16:01', 10),
    (3, TIMESTAMP'2021-09-13 11:59', TIMESTAMP'2021-09-13 13:00',TIMESTAMP'2021-09-13 14:07', TIMESTAMP'2021-09-13 17:01' ,8),
    (4, TIMESTAMP'2021-09-13 12:10', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:04', TIMESTAMP'2021-09-13 14:59', 9),
    (5, TIMESTAMP'2021-09-13 12:08', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:01', TIMESTAMP'2021-09-13 16:02', 2),
    (6, TIMESTAMP'2021-09-13 12:00', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:11', TIMESTAMP'2021-09-13 15:50', 3),
    (7, TIMESTAMP'2021-09-13 12:08', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:01', TIMESTAMP'2021-09-13 15:20', 5),
    (8, TIMESTAMP'2021-09-13 12:05', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:04', TIMESTAMP'2021-09-13 16:50', 1),
    (9, TIMESTAMP'2021-09-13 11:59', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:02', TIMESTAMP'2021-09-13 18:40', 4),
    (10, TIMESTAMP'2021-09-13 12:15', TIMESTAMP'2021-09-13 13:00', TIMESTAMP'2021-09-13 14:11', TIMESTAMP'2021-09-13 15:53', 7);



INSERT INTO EQUIPE (id, nome, fk_funcionario_id) VALUES
    (1, 'Cleitin Bernardo Team', 1),
    (2, 'Jodiswaldo Guanderson Team', 10),
    (3, 'Marioneta Delas Neves Team', 2),
    (4, 'Elen Meyer Team', 9),
    (5, 'Lincoln Lau Team', 3),
    (6, 'Benedicto Alves Team', 8),
    (7, 'Carlittle Junior III Squad', 4),
    (8, 'Pedro Team', 7),
    (9, 'Fandrill Pernas Longas Team', 5),
    (10, 'Çaulo Team', 6);
    


INSERT INTO EQUIPE_FUNCIONARIO (fk_FUNCIONARIO_ID, fk_EQUIPE_id) VALUES
    (1, 1),
    (2, 8),
    (3, 9),
    (3, 7),
    (4, 6),
    (4, 7),
    (5, 1),
    (5, 5),
    (5, 3),
    (6, 4);



INSERT INTO ATIVIDADE (id, atividade, tempo_estimado, status, FK_EQUIPE_id, FK_PROJETO_id) VALUES
    (1, 'Chamado 237', '12:00', 'em andamento', 1, 5),
    (2, 'Análise de alguma coisa', '10:00', 'concluída', 2, 10),
    (3, 'Rush B', '03:00', 'em andamento', 3, 7),
    (4, 'Bang perfeitinha', '04:00', 'concluída', 4, 9),
    (5, 'Baitar o Cléber', '02:00', 'concluída', 5, 5),
    (6, 'Checar amarelo', '11:00', 'pendente', 6, 4),
    (7, '3 bang A', '03:00', 'pendente', 7, 3),
    (8, 'Domínio meio A', '02:00', 'pendente', 8, 2),
    (9, 'Domínio meio B', '15:00', 'em andamento', 9, 3),
    (10, '3 bang B', '10:00', 'pendente', 10, 4);



INSERT INTO TAREFA (FK_ATIVIDADE_id, FK_FUNCIONARIO_ID, id, descricao) VALUES
    (1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (5, 5, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (7, 3, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (8, 2, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (9, 3, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (1, 5, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (5, 5, 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (3, 7, 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (2, 8, 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.'),
    (5, 5, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur viverra mi tincidunt pellentesque. Etiam augue metus, pharetra vitae tempus at, fermentum cursus ante.');



