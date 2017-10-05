use master
create database base
go

use base
create table cliente (
cod_cli int  identity(1,1) not null, /*Identity comando que torna um atributo alto 
preenchido numericamente, dentro do parenteses colocar por qual numero iniciar e depois da virgula
colocar qual o valor do incremento*/
nome varchar(30) not null, 
rg_cli varchar(10) not null,
rua_cli varchar(30) not null,
bairro_cli varchar(20) not null,
complemento varchar(50),
constraint[PK_cod_cli] primary key clustered (cod_cli asc)
)