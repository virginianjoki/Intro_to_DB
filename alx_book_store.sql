CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Books (
    book_id  INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id (Foreign Key referncing Authors table),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL,
);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT,
); 
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id(FOREIGN KEY referencing Customers TABLE),
  order_date DATE NOT NULL ,
);
CREATE TABLE Order_Details (
    order_detail/id INT PRIMARY KEY,
    order_id FOREIGN KEY referencing Orders TABLE),
    book_id (FOREIGN KEY referencing Books TABLE),
    quantity DOUBLE,
);