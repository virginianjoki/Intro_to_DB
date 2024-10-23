CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Books (
    book_id  INT Primary Key,
    title VARCHAR(130) NOT NULL,
    author_id(Foreign Key referncing Authors table),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE Authors (
    author_id INT Primary Key,
    author_name VARCHAR(215) NOT NULL,
);
CREATE TABLE Customers (
    customer_id INT Primary Key,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT,
); 
CREATE TABLE orders (
  order_id INT Primary Key,
  customer_id(Foreign Key referencing Customers table),
  order_date DATE not null ,
);
CREATE TABLE Order_Details (
    order_detail/id INT Primary Key,
    order_id(Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE,
);