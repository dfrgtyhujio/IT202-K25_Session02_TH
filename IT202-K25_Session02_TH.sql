create database db_book;
use db_book;

create table book (
	book_id char(5) primary key,
    book_name varchar(200) not null,
    quantity  int check(quantity >= 0),
    rent decimal(10,2) default(5000)
);

alter table book
add column entry_date date 
after rent;

create table borrow_books (
	borrow_book_id char(5) primary key,
    book_id char(5),
    foreign key (book_id) references book (book_id)
)