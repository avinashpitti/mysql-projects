create database library;

use library;

create table books(
book varchar(15),
no_of_books int);

alter table books
rename column book to book_name;

insert into books
values
("java",25),
("pathon",33),
("node",42),
("django",23);

set sql_safe_updates=0;

update books
set book_name="python"
where book_name="pathon";

alter table books
add book_id int auto_increment primary key;

select * from books;

create table members(
member_id int,
member_name varchar(20)
);

insert into members
values
(1,"avinash"),
(2,"anil"),
(3,"gowtham"),
(4,"srinivas");

alter table members
modify member_id int primary key;

select * from members;

create table borrowed_books(
member_id int,
book varchar(15)
);

alter table borrowed_books
rename column book to book_name;

insert into borrowed_books
values
(1,"node"),
(2,"django"),
(3,"java"),
(4,"python");

alter table borrowed_books
add borrow_id int auto_increment primary key;

select * from borrowed_books;

alter table borrowed_books
add constraint fk_member
foreign key (member_id) references members(member_id),
add constraint fk_book
foreign key(book_name) references books(book_name);

alter table books
add constraint unique_book_name unique(book_name);