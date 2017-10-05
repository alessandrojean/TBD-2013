use master
create database escola
go
use escola 
create table aluno(
codigo_aluno int not null identity (1,1),
nome varchar(50),
nota int,
sexo char(1),
Constraint [PK_aluno] Primary Key clustered (codigo_aluno ASC)
)

insert into aluno(nome, nota, sexo) values 
('Ana Paula',7,'F'),
('Henrique',5,'M'), 
('Joana',4,'F'), 
('Marcos',8,'M'), 
('Cláudio',9,'M'),
('Maria',9,'F'),
('Ana Paula',4,'F'),
('Marcos',4,'M')

select AVG(nota) as total_notas from aluno where nome='Ana Paula'
