
create database coffedatatable;
drop database coffedatatable;
USE coffedatatable;

create table coffecuptable(

coffecup_id int identity,
coffecup_name varchar(500),
coffecup_price int,
coffecup_image varchar(max),
coffecup_quantity int,

);

select * from coffecuptable;
drop table coffecuptable;
insert into coffecuptable (coffecup_name , coffecup_price, coffecup_image, coffecup_quantity )values ('Cafe com leite',100,'~/site1/image/coffecups/coff1.png',800)
insert into coffecuptable (coffecup_name, coffecup_price ,  coffecup_image, coffecup_quantity )values('Cafe com leite',100,'~/site1/image/coffecups/coff2.png',700)
insert into coffecuptable (coffecup_name, coffecup_price , coffecup_image ,coffecup_quantity )values ('Cafe com leite',100,'~/site1/image/coffecups/coff3.png',600)
insert into coffecuptable (coffecup_name , coffecup_price, coffecup_image , coffecup_quantity)values('Cafe com leite',100,'~/site1/image/coffecups/coff4.png',500)
insert into coffecuptable (coffecup_name , coffecup_price , coffecup_image , coffecup_quantity)values('Cafe com leite',100,'~/site1/image/coffecups/coff5.png',400)
insert into coffecuptable (coffecup_name, coffecup_price, coffecup_image ,coffecup_quantity )values('Cafe com leite',100,'~/site1/image/coffecups/coff6.png',300)
insert into coffecuptable ( coffecup_name, coffecup_price, coffecup_image, coffecup_quantity)values('Cafe com leite',100,'~/site1/image/coffecups/coff7.png',200)
--insert into coffecuptable ( coffecup_name, product_price, product_image ,product_quantity)values('coff1',100,'~/image/coffecups/coff8.png',800)
--insert into coffecuptable ( coffecup_name, product_price, product_image ,product_quantity)values('coff1',100,'~/image/coffecups/coff1.png',800)


create table coffecustomers(


coffecustomer_id int identity,
coffecustomer_name varchar(500),
coffecustomer_image varchar(max),
coffecustomer_discription varchar(500)

);

drop table coffecustomers;
select * from coffecustomers;
insert into coffecustomers (coffecustomer_name , coffecustomer_image, coffecustomer_discription )values ('Janelton Vunge','~/site1/image/customer/20230603_152454.jpg','Escolas dos s�bios? Eu amo isso! N�o estou chocado com a m�dia de 20 x�caras por semana. Estou pensando que est� certo para mim. Informa��es impressionantes!')
insert into coffecustomers (coffecustomer_name, coffecustomer_image ,  coffecustomer_discription)values('Thokozile Mwanza','~/site1/image/customer/20230603_153545.jpg','Muito obrigado por fornecer esta informa��o aqui sobre o caf�. Na verdade, o caf� � uma b�n��o para a humanidade. O caf� � quem nos faz sentir vivos e cheios de energia. Eu sou um amante de caf� certificado')
insert into coffecustomers (coffecustomer_name, coffecustomer_image , coffecustomer_discription )values ('Scar Vunge','~/site1/image/customer/20230603_104947.jpg','Tomo caf� sempre que preciso de algo para me aquecer, �s vezes alternando com ch�, chocolate quente ou algumas variantes deles.')

create table coffcart(
coffcart_id int identity,
coffcart_name varchar(500),
coffcart_image varchar(max),
coffcart_price varchar(max)
);





