-- tems And Customers
--Create items table
CREATE TABLE items (
  item_id SERIAL PRIMARY KEY,
  item_name VARCHAR(50) NOT NULL,
  price INTEGER NOT NULL
);
--insert value into items
INSERT INTO items (item_name, price)VALUES 
('Small Desk', 100),
('Large Desk', 300),
('Fan', 80);

-- All items, ordered by price (lowest to highest).
SELECT * FROM items ORDER BY price  ASC;

-- 1Items with a price above 80 (80 included), ordered by price (highest to lowest).

SELECT * FROM items WHERE price >= 80 ORDER BY price DESC;

-- The first 3 customers in alphabetical order of the first name (A-Z) – exclude the primary key column from the results.

SELECT last_name, first_name, adresse FROM customers ORDER BY first_name ASC LIMIT 3;

-- All last names (no other columns!), in reverse alphabetical order (Z-A)
SELECT last_name FROM  customers ORDER BY last_name DESC;  
 