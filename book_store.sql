show databases;
create database bookstore;
use bookstore;
show tables;

create table books (
id int auto_increment primary key,
author1 varchar(100) not null,
author2 varchar(100),
author3 varchar(100),
title varchar(100),
description text,
place_sell varchar(3),
stock int default 0,
creation_date timestamp default current_timestamp on update current_timestamp
);

alter table books
add price int default 0,
add status enum ('available','out of stock', 'limited');

insert into books(author1,author2,author3,title,description,place_sell,stock,creation_date,price,status) values
('john','jacob','jingleheimer','book of book',"it's a book about booking a book", 'buy', '100', default, '50000', 'available'),
('smith','omega','danielson','one winged angel',"it's a book about wrestling a book", 'buy', '75', default, '45000', 'available'),
('jericho','lee','parker','JA Society',"it's a book about society", 'buy', '1', default, '30000', 'limited');

select * from books;

select id as ID, author1 as A1, author2 as A2, author3 as A3
from books;

select id from books where id>1;

select price from books where price > 35000 and price < 50000;

select price from books where price > 35000 or price < 50000;

select price from books where not price < 40000;

select * from books
order by id asc;

select * from books
limit 2;

update books
set author1 = 'kenny', price = '25000'
where id = 2;

delete from books where id = 1;