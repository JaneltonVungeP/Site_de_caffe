
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
insert into coffecustomers (coffecustomer_name , coffecustomer_image, coffecustomer_discription )values ('Janelton Vunge','~/site1/image/customer/20230603_152454.jpg','Escolas dos sábios? Eu amo isso! Não estou chocado com a média de 20 xícaras por semana. Estou pensando que está certo para mim. Informações impressionantes!')
insert into coffecustomers (coffecustomer_name, coffecustomer_image ,  coffecustomer_discription)values('Thokozile Mwanza','~/site1/image/customer/20230603_153545.jpg','Muito obrigado por fornecer esta informação aqui sobre o café. Na verdade, o café é uma bênção para a humanidade. O café é quem nos faz sentir vivos e cheios de energia. Eu sou um amante de café certificado')
insert into coffecustomers (coffecustomer_name, coffecustomer_image , coffecustomer_discription )values ('Scar Vunge','~/site1/image/customer/20230603_104947.jpg','Tomo café sempre que preciso de algo para me aquecer, às vezes alternando com chá, chocolate quente ou algumas variantes deles.')

create table coffcart(
coffcart_id int identity,
coffcart_name varchar(500),
coffcart_image varchar(max),
coffcart_price varchar(max)
);





