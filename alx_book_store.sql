CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Books (
    book_id(primary key),
    title VARCHAR(130),
    author_id(Foreign Key referncing Authors table),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE Authors (
    author_id(Primary Key),
    author_name VARCHAR(215),
);
CREATE TABLE Customers (
    customer_id(Primary Key),
    customer_name VARCHAR(215,)
    email VARCHAR(215),
    address TEXT,
); 
CREATE TABLE orders (
  order_id(Primary Key),
  customer_id(Foreign Key referencing Customers table),
  order_date DATE,
);
CREATE TABLE Order_Details (
    order_detail/id(Primary Key),
    order_id(Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE,
);