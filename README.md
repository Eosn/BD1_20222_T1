# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Éllen Oliveira Silva Neves: ellenosneves@gmail.com<br>
Carlos Breno Norato Rosa: carlosnoratorosa@gmail.com<br>
Cléber de Jesus Salustiano: kleberdejesus45@hotmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
> Este documento contém a especificação do projeto do banco de dados para uma empresa desenvolvedora de software, cujo o objetivo é armazenar e gerir todo o fluxo de informação ligado aos projetos gerais, que estão sendo produzidos, bem como as atividades, tarefas e verificação de cada funcionário e seus respectivos responsáveis. O objetivo da empresa é entregar projetos competentes, de qualidade e dentro dos prazos estipulados. 


### 3.MINI-MUNDO<br>

> Uma empresa de software quer organizar melhor o controle sobre os funcionários, atividades, horários e projetos que estão sendo realizados. Em relação aos funcionários, é importante  saber informações gerais (nome, data de nascimento, cpf), cargo na empresa, quando cada um começa a trabalhar no dia e quando o mesmo para. Os funcionários são organizados em equipes com apenas um supervisor, essas equipes recebem atividades que surgem de demandas em algum projeto já com o prazo de cada demanda definido. Cabe ao supervisor direcionar qual parte da atividade cada funcionário vai fazer, essas  atividades são organizadas em fila para evitar o tempo ocioso, então quando algum funcionário termina uma tarefa, outra já pode estar à sua espera para ser realizada; o mesmo tem todo acesso a essa fila de atividades. 
    As pessoas hierarquicamente superiores têm acesso ao quadro de atividades dos subordinados, e caso seus subordinados sejam supervisores em alguma equipe ele também tem acesso a essa equipe.
. 

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
 a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?<br>
 
  Relatórios referentes ao fluxo de trabalho da empresa

 b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto! 
  - Relatório mostrando todas as ativades de um projeto e cada tarefa dessas mesmas atividades, além disso o funcionario que esta efetuando cada tarefa
  - Relatório mostrando o nome de cada funcionario, a descrição de todas as tarefas que foram alocadas a ele e a qual projeto a atividade dessa tarefa pertence.
  - Relatório relativo a funcionarios e equipes mostrando todos os funcionarios que são supervisionados por cada supervisor das equipes.
  - Relatório relacionado a projetos e equipes mostrando, para cada projeto, quais equipes estão responsaveis por cada atividade daquele projeto
  - Relatorios mostrando o historico de presença e horario de trabalho de cada funcionario
<!--    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa.
-->
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
<!--a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
-->
![Tabela de Dados do Sistema](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDDTrabalho_tabelas.xlsx?raw=thue "Tabela de dados") 
    
    
### 5.MODELO CONCEITUAL<br>
<!--    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
-->

![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDDT_modeloconceitual_EllenNevesCarlosBrenoNoratoCleberSalustiano.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Matheus Teixeira, Douglas Nunes]
    [Grupo02]: [Arthur Delpupo, Guilherme Bleidão]

#### 5.2 Descrição dos dados 
```
FUNCIONARIO: Tabela que armazena as informações relativas ao funcionário
	CPF: campo que armazena o número de Cadastro de Pessoa Física para cada funcionário da empresa.
	NOME: campo que armazena o nome de cada funcionário da empresa.
	DATA_NASCIMENTO: campo que armazena a data de nascimento de cada funcionário da empresa.
     
EQUIPE: Tabela que armazena as informações relativas as equipes
	NOME: campo que armazena o nome de cada equipe da empresa

PROJETO: Tabela que armazena as informações dos projetos que a empresa está desenvolvendo.
	NOME: campo que armazena o nome de cada projeto da empresa.

ATIVIDADE: Tabela que armazena informações relativas as atividades de cada projeto. 
	ATIVIDADE: campo que armazena a descrição da atividade que está sendo desenvolvida.
	TEMPO_ESTIMADO: campo que armazena o tempo estimado de cada atividade.
	STATUS: campo que armazena a situação de cada atividade (PENDENTE, FEITO, ETC).

TAREFA: Tabela que armazena informações relativas as tarefas de cada atividade.
	DESCRICAO: campo que armazena a descrição de cada tarefa.
	
CARGO: Tabela que armazena informações dos cargos existentes dentro da empresa.
	NOME: campo que armazena o nome de cada cargo.

FOLHA_DE_PONTO: Tabela que armazena informações relativas aos pontos de cada funcionário
	ENTRADA: campo que armazena o tempo e data de entrada de cada funcionário.
	SAIDA_ALMOCO: campo que armazena o tempo e data de saida de almoço de cada funcionário.
	ENTRADA_POS_ALMOCO: campo que armazena o tempo e data de entrada pós almoço de cada funcionário.
	SAIDA: campo que armazena o tempo e data de saída de cada funcionário.
```



### 6	MODELO LÓGICO<br>
<!--        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
-->	

![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDDT_modelologico_Carlos_BrenoEllenNevesCleberSalustiano.png?raw=true "Modelo Conceitual")

### 7	MODELO FÍSICO<br>
```sql
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

```
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
<!--        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
-->
```sql
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




```

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
```sql
SELECT * FROM funcionario
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectFuncionario.png?raw=true)

```sql
SELECT * FROM folha_ponto
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectFolhaPonto.png?raw=true)

```sql
SELECT * FROM cargo
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectCargo.png?raw=true)

```sql
SELECT * FROM equipe
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectEquipe.png?raw=true)

```sql
SELECT * FROM equipe_funcionario
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectEquipeFuncionario.png?raw=true)

```sql
SELECT * FROM projeto
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectProjeto.png?raw=true)

```sql
SELECT * FROM atividade
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectAtividade.png?raw=true)

```sql
SELECT * FROM tarefa
```
![Alt text](https://github.com/Eosn/BD1_20222_T1/blob/master/arquivos/BDD_SelectTarefa.png?raw=true)


># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


