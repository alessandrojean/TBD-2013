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
('Marcos',4,'M'),
('Fernando',5,'M'),
('Maria',10,'F'),
('Rodrigo',4,'M'),
('Lucas',2,'M'),
('Camila',6,'F'),
('Rafael',5,'M'),
('Elaine',3,'F')

select AVG(nota) as total_notas from aluno where nome='Ana Paula'

select nome,nota from aluno where nota between 5 and 10

select nome,nota from aluno where nota not between 5 and 10

select nome from aluno where not nome='Ana Paula'

select nota from aluno where not nota=6

select nome from aluno where nome like 'L%'

select nome from aluno where nome not like 'H%'

select nome,nota from aluno where nota in (5,10,3)

select*from aluno where nota>=5 order by nota desc