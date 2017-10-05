use master
create database bancodedados
go

use bancodedados
go
create table  cadastro(
id int not null, /* - not null comando - para o campo n�o ficar nulo*/
nome varchar(50) not null,
endereco varchar(60) not null,
bairro varchar(20) not null,
cep int not null)


create table produto(
id_prod int not null,
nome varchar(15) not null,
descricao varchar(90) not null,
)


create table funcionario(
cod_funcionario int not null,
nome_funcionario varchar(50) not null,
CPF_funcionario int not null,
CNH_funcionario varchar(20),
constraint [PK_funcionario] primary key clustered(cod_funcionario asc, CPF_funcionario)
/*Constraint junto com o comando para cria��o de chave prim�ria, 
serve para definirmos um ou mais campos como chaves prim�rias, 
no caso para criar chave prim�ria, usamos o comando constraint
junto com o comando primary key e podemos utilizar esse comando
uma �nica vez por tabela e n�o podemos colocar o valor null nos campos que comp�em a chave prim�ria */
)
