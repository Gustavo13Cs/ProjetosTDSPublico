use Escola;
go 

Create	table Cursos(
 CURSOID int not null identity primary key,
 CURSODESCRICAO varchar(100) not null,
 CURSOCODHABILIDADE varchar(100) not null,
 CURSOMODALIDADE varchar(100) not null,
 )

Create table Disciplinas (
  DISID int not null identity primary key,
  DISDESCRIACAO varchar(200) not null,
  DISCH varchar(200) not null,
  CURSOID int not null,
  Foreign KEY (CURSOID) REFERENCeS Cursos(CURSOID)
  )
 
go
SET IDENTITY_INSERT Disciplinas ON

go
Insert Cursos (CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (1,'ASSISTENTE T�CNICO EM TECNOLOGIA DA INFORMA��O','QPR-101','Qualifica��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (3,'AUXILIAR DE PADEIRO','QPR-013','Qualifica��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (4,'ELETRICISTA DE REDE DE DISTRIBUICAO DE ENERGIA ELETRICAL','QPR-042','Qualifica��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (5,'INFORMATICA BASICA','QPR-052','Qualifica��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (7,'LOGICA DE PROGRAMACAO','INP-057','Inicia��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (9,'METROLOGIA','INP-063','Inicia��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (10,'OFICINA DE LANCHES VEGANOS','INP-092','Inicia��o Profissional')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (13,'TECNICO EM REDES DE COMPUTADORES','TEC-037','Habilita��o T�cnica de N�vel M�dio')
Insert Cursos(CURSOID,CURSODESCRICAO,CURSOCODHABILIDADE,CURSOMODALIDADE) values (14,'T�CNICO EM ADMINISTRA��O','TEC-006','Habilita��o T�cnica de N�vel M�dio')

go

Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID) values (69,'ADMINISTRA��O DE SISTEMA OPERACIONAL DE REDE ABERTA-Linux','Sistema',1)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (70,'ADMINISTRA��O DE SISTEMA OPERACIONAL DE REDE PROPRIET�RIO','Windows',1)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (71,'ADMINISTRA��O MERCADOL�GICA E PROCESSOS COMERCIAIS','Organizar',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (72,'ARQUITETURA DE REDES DE COMPUTADORES','Programa',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (73,'ASPECTOS COMPORTAMENTAIS E O CLIENTE','Atende',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (74,'CABEAMENTO ESTRUTURADO E INSTALA��O DE REDES LOCAIS','Cabeador',1)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (75,'COMANDOS ELETRICOS','Eletrico',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (76,'COMPETENCIAS PROFISSIONAIS','Copetencias',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (77,'COMUNICA��O CORPORATIVA','Comunicador',1)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (78,'COMUNICACAO EMPRESARIAL','Comunicador',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (79,'COMUTACAO E INTERCONEXAO DE REDES','Cabeador',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (80,'CONEXOES','Conexao',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (81,'CONTABILIDADE COMERCIAL','Contabilador',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (82,'COORDENA��O DE EQUIPES','Coodernador',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (83,'DESENVOLVIMENTO DE PROJETO','Desenvolvedor',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (84,'DOCUMENTACAO TECNICA','Documentacao',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (85,'DOCUMENTA��O T�CNICA','Documentacao',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (86,'ELETRICIDADE BASICA','Eletrico',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (87,'ELETRICISTA PADRONISTA','Eletricista',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (88,'FERRAMENTAS DE ESCRITORIO','Ferramentas',5)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (89,'FERRAMENTAS DE ESCRIT�RIO','Ferramentes',1)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (90,'FERRAMENTAS DE INTERNET','Ferramentas',5)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (91,'FUNDAMENTOS DE ADMINISTRA��O','Fundamentos',14)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (92,'FUNDAMENTOS DE ELETROELETRONICA','Fundamentos',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (93,'FUNDAMENTOS DE INFORMATICA','Fundamentos',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (94,'FUNDAMENTOS DE NR 10','Fundamentos',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (95,'FUNDAMENTOS DE SEGURANCA DO TRABALHO EM ALTURA - NR 35','Fundamentacao',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (96,'FUNDAMENTOS DE TECNOLOGIA DA INFORMACAO','Fundamentacao',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (97,'FUNDAMENTOS DO DIREITO EMPRESARIAL','fundamentos',13)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (115,'PLANEJAMENTO E ORGANIZA��O DO TRABALHO','Planejador',45)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (116,'PRATICA PROFISSIONAL SIMULADA','Praticar',46)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (98,'GEST�O AMBIENTAL','QUALIDADE',6)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (99,'GESTAO', 'PRODUCAO',7)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (100,'GEST�O', 'ATIVOS DE REDES', 8)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (101,'GESTAO', 'CUSTOS',9)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (102,'INFORM�TICA', 'APLICADA',10)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (103,'INFRAESTRUTURA','REDES LAN E WAN',11)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (104,'LEITURA','COMUNICA��O',12)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (105,'LOGICA', 'PROGRAMACAO',2)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (106,'MATEM�TICA ','APLICADA',5)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (107,'METROLOGIA', 'LUNAR',6)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (108,'MODELO DE NEG�CIOS' ,'TECNOLOGIA DA INFORMA��O',8)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (109,'MONITORAMENTO'  ,'GERENCIAMENTO DE REDES',7)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (110,'MONTAGEM', 'REDES ELETRICAS',1)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (111,'MONTAGEM', 'MANUTEN��O DE COMPUTADORES',4)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (112,'NORMAS','PROCEDIMENTOS',44)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (113,'OPERACAO' ,'REDES ELETRICAS',5)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (114,'PLANEJAMENTO',' PRODUCAO NA PANIFICACAO',2)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (113,'OPERACAO' ,'REDES ELETRICAS',5)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (115,'PLANEJAMENTO','ORGANIZA��O DO TRABALHO',5)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (116,'PRATICA PROFISSIONAL SIMULADA','Pratocas',8)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (118,'RACIOC�NIO L�GICO E AN�LISE DOS DADOS','Analise',48)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (119,'REDES CONVERGENTES','Rede',49)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (120,'REDES OPTICAS','Rede',50)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(121,'RELA��ES S�CIO-PROFISSIONAIS',' CIDADANIA E �TICA',51)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(122,'ROTINAS DE PESSOAL','Rotinas',52)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(123,'SA�DE E SEGURAN�A DO TRABALHO','Geral',53)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(124,'SEGURANCA DE REDES','Seguran�a',54)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(125,'SEGURAN�A DE REDES DE COMPUTADORES','Seguranca',56)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(126,'SERVICOS DE REDE CORPORATIVA','SERVI�OS',57)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(127,'SERVICOS DE REDE LOCAL','Seguran�a',58)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(128,'SERVIDORES DE REDES','Seguran�a',59)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(129,'SISTEMA OPERACIONAL','Sistemas',60)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(130,'SISTEMAS OPERACIONAIS','Sistemas',61)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(131,'TECNICAS DE FABRICACAO DE LANCHES VEGANOS','Tecnica',62)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values(132,'TECNOLOGIA DA INFORMACAO E COMUNICACAO','Tecnologia',63)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (133,'TECNOLOGIA' , 'PROCESSO NA PANIFICACAO',9)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (134,'TRABALHO DE CONCLUSAO DE CURSO' ,' TCC',54)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (135,'TRABALHO DE CONCLUS�O DE CURSO' ,'TCC',22)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (136,'WEB', 'DESIGN',56)
Insert Disciplinas (DISID,DISDESCRIACAO,DISCH,CURSOID)values (137,'TESTE26','ESCOLA',7)


select * from Cursos
select * from Disciplinas