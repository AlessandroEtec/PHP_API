/**
 * Author:  Alessandro
 * Created: 21/04/2021
 */
create database if not exists api_produto;
use api_produto;

drop table produto;
create table produto(
    pro_id int not null primary key auto_increment,
    pro_descricao varchar(50) null,
    pro_preco decimal (12,2) not null default 0.00,
    pro_validade date not null default 0
);

insert into produto(pro_descricao,pro_preco, pro_validade) values ('Batata', 2.39, '2021-06-28');
insert into produto(pro_descricao,pro_preco, pro_validade) values ('Cebola', 1.19, '2021-07-15');
insert into produto(pro_descricao,pro_preco, pro_validade) values ('Arroz', 21.75, '2021-09-11');