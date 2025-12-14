USE alx_book_store;

  CREATE TABLE Books (
    book_id INT PRIMARY KEY
    title VARCHAR(130)
    author_id FOREIGN KEY
    Price DOUBLE
    publication_date DATE
    FOREIGN KEY (author_id) REFERENCES (Authors)
  ) ;
  CREATE TABLE Authors (
    author_id PRIMARY KEY
    author_name VARCHAR (215)

    );

  CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    ) ;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    );

CREATE TABLE  Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
    ) ;

    
    



    
