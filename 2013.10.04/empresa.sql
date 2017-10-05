use master
create database empresa
go
use empresa
go
create table funcionarios(
CodFunc int not null,
NomeFunc varchar(50) not null,
SexoFunc varchar(1) not null,
BairroFunc varchar(50) not null,
SalFunc float not null,
SetorFunc varchar(50) not null,
constraint [PK_funcionario] primary key clustered(CodFunc asc)
)