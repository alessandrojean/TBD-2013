use master
create database restaurante
go
use restaurante
go
create table bebidas(
codBebida int identity (1,1), 
nomeBebida varchar(20) not null, 
precoBebida float not null, 
descricaoBebida varchar(50),
Constraint [PK_CodBebida] Primary Key clustered (codBebida))

insert into bebidas (nomeBebida, precoBebida, descricaoBebida) values 
('Guarana Jesus',3.65,'Guaraná com canela do Maranhão'),
('Pepsi',2.67,''),
('Dolly',1.50,'garrafa de 2 litros'),
('Fanta',2.74,''),
('Fanta Uva',2.74,'')

select*from bebidas order by precoBebida ASC

select AVG(precoBebida) as total_precoBebida from bebidas

select nomeBebida from bebidas where precoBebida>2

select nomeBebida,descricaoBebida from bebidas where nomeBebida like 'F%'

select nomeBebida,precoBebida from bebidas where precoBebida between 2 and 3

update bebidas set precoBebida = 2.40 where nomeBebida = 'Dolly'

update bebidas set descricaoBebida = 'Em falta' where nomeBebida = 'Fanta Uva'
