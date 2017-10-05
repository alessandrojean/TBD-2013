use master /*Para acessar a base de dados "master"*/

create database etim /*Cria uma nova base de dados*/
go /*Para executar*/
use etim /*Para acessar a base de dados "etim"*/

create table aluno( /*Cria uma nova tabela*/
nome varchar(50),
rm int,
idade int,
data_nascimento date
)
