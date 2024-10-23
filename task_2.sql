CREATE TABLE IF NOT EXISTS  Books (
    book_id  INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id (Foreign Key referncing Authors table),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL,
);
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT,
); 
CREATE TABLE IF NOT EXISTS orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL ,
   FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE, 
);
CREATE TABLE IF NOT EXISTS Order_Details (
    order_detail/id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
     FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE ON UPDATE CASCADE, 
    