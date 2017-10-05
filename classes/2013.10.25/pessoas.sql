use master
create database pessoas
go

use pessoas
create table cliente(
cod_cli int identity(1,1) not null,
nome_cli varchar(40) not null
)

insert into cliente (nome_cli) values ('José')
insert into cliente (nome_cli) values ('Rodrigo')
select * from cliente