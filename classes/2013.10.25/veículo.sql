use master
create database veiculo
go
use veiculo
create table carro(
cod_carro int identity(1,1) not null,
marca varchar(4) not null
)

alter table carro add ano_carro int, nome_ant_dono varchar(40)
select * from carro

alter table carro alter column marca varchar(40)

alter table carro drop column nome_ant_dono, ano_carro