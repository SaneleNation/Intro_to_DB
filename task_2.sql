CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE IF NOT EXISTS authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT
);

CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    genre VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT
);

