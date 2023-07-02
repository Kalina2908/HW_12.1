CREATE DATABASE market;
USE market;
CREATE TABLE phones
(id INT PRIMARY KEY NOT NULL,
product_name VARCHAR(30) NOT NULL,
manufacturer VARCHAR(30) NOT NULL,
product_count INT NOT NULL,
price 	INT NOT NULL);

SELECT *FROM phones;
INSERT INTO phones (id, product_name, manufacturer, product_count, price)
VALUES
(1, "iPhone X", "Apple", 3, 76000),
(2, "iPhone 8", "Apple", 2, 51000),
(3, "Galaxy S9", "Samsung", 2, 56000),
(4, "Galaxy S8", "Samsung", 1, 41000),
(5, "P20 Pro", "Huawei", 5, 36000);

-- Выведите название, производителя и цену для товаров, количество которых превышает 2 
SELECT product_name, price
FROM phones
WHERE product_count > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM phones
WHERE manufacturer LIKE "Samsung";

-- Товары, в которых есть ЦИФРА "8"  
SELECT * FROM phones
WHERE product_name LIKE "%8%";