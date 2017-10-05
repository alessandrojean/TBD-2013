 use master
 create database Escola
 use Escola
 create table Turma(
 cd_turma int not null identity(1,1),
 nome_turma varchar(20) not null,
 obs_turma varchar(30),
 constraint [PK_Turma] primary key clustered (cd_turma asc)
 )
 
 create table Aluno(
 cod_aluno int not null identity(1,1),
 cod_turma int not null, /* chave estrangeira*/
 nome_aluno varchar(50) not null,
 nota int,
 sexo char(1),
 constraint [PK_Aluno] primary key clustered (cod_aluno asc),
 constraint [FK_TurmaAluno] foreign key (cod_turma) references Turma (cd_turma)
 )
  
 /* Relação N:M
 create table AlunoTurma(
 cod_aluno int not null,
 cod_turma int not null,
 ano smalldatetime,
 quantidade int,
 constraint [PK_AlunoTurma] primary key clustered (cod_aluno,cod_turma),
 constraint [FK_Aluno] foreign key (cod_aluno) references Aluno (cod_aluno),
 constraint [FK_Turma] foreign key (cod_turma) references Turma (cd_turma)
 ) */
 
insert into Turma (nome_turma,obs_turma) values ('1EtimInfo','Informática'),
('EtimQuim','Química'), ('modInfo',''), ('modAdm','')
 
insert into Aluno (cod_turma,nome_aluno,nota,sexo) values (1,'Henrique',5,'M'),
(1,'Ana Paula',7,'F'), (2,'Joana',4,'F'),(2,'Marcos',8,'M'), (3,'Cláudio',9,'M'), (3,'Maria',9,'F'), (4,'Pedro',5,'M'), 
(4,'Rafaela',6,'F')

select  nome_aluno, nome_turma from Aluno inner join Turma on Aluno.cod_turma = Turma.cd_turma

select  nome_aluno, nome_turma from Aluno inner join Turma on Aluno.cod_turma = Turma.cd_turma where Aluno.nota>=5

select  nome_aluno, nome_turma from Aluno inner join Turma on Aluno.cod_turma = Turma.cd_turma where Turma.cd_turma=1