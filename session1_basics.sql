-- Session 1: SQL Fundamentals
-- Date: July 2026
-- Tools: Snowflake (DE_LEARNING.PRACTICE)

-- Setup
CREATE DATABASE de_learning;
CREATE SCHEMA de_learning.practice;
USE DATABASE de_learning;
USE SCHEMA practice;

-- Orders table
CREATE TABLE orders (
    order_id      INT,
    customer_name VARCHAR(100),
    city          VARCHAR(50),
    amount        DECIMAL(10,2),
    status        VARCHAR(20),
    order_date    DATE
);

INSERT INTO orders VALUES
  (1001, 'Arun Kumar',   'Chennai',   4500.00,  'delivered', '2024-01-10'),
  (1002, 'Priya Sharma', 'Mumbai',    12000.00, 'shipped',   '2024-01-12'),
  (1003, 'Ravi Nair',    'Chennai',   750.00,   'pending',   '2024-01-13'),
  (1004, 'Meena Iyer',   'Bangalore', 8200.00,  'delivered', '2024-01-14'),
  (1005, 'Karthik Raj',  'Chennai',   3100.00,  'cancelled', '2024-01-15');

-- Practice queries
select * from orders;
select customer_name, city from orders;
select * from orders where status = 'pending';
select * from orders where amount >= 4000;
select * from orders where city = 'Chennai' order by amount desc;
select order_id, amount from orders where status = 'delivered' or status = 'shipped';

-- Products table
CREATE TABLE products (
    product_id     INT,
    product_name   VARCHAR(100),
    category       VARCHAR(50),
    price          DECIMAL(10,2),
    stock_quantity INT
);

INSERT INTO products VALUES
  (1111, 'Apple',          'Fruits',       450.00,   2),
  (1112, 'Carrot',         'Vegetables',   120.00,   3),
  (1113, 'Orange',         'Fruits',       750.00,  50),
  (1114, 'Lemon',          'Fruits',        82.00,  22),
  (1115, 'Mushroom',       'Vegetables',   310.00,   7),
  (1116, 'Mobile',         'Gadgets',    31000.00,   7),
  (1117, 'TV',             'Electronics', 21000.00,  7),
  (1118, 'Cotton T-Shirt', 'Clothing',    1200.00,  15);

-- Mini project queries
select * from products where price > 2000;
select * from products where category = 'Fruits';
select * from products where stock_quantity < 10;
select * from products order by price desc;
select * from products where category = 'Electronics' or category = 'Gadgets' order by price desc;
