CREATE DATABASE fashion_trends_db;
USE fashion_trends_db;

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Gender VARCHAR(20),
    Price DECIMAL(10,2),
    Stock_Quantity INT
);

CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY,
    Product_ID INT,
    Sale_Date DATE,
    Quantity_Sold INT,
    Discount_Percent DECIMAL(5,2),
    Payment_Method VARCHAR(30),
    Customer_Rating DECIMAL(2,1),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

USE fashion_trends_db;

INSERT INTO Products
(Product_ID, Product_Name, Category, Brand, Gender, Price, Stock_Quantity)
VALUES
(1,'Classic Shirt','Shirts','UrbanStyle','Men',499,25),
(2,'Slim Jeans','Jeans','TrendWear','Women',799,40),
(3,'Cotton Tee','T-Shirts','FashionHub','Unisex',999,35),
(4,'Floral Dress','Dresses','StylePro','Women',1299,20),
(5,'Running Shoes','Shoes','NovaWear','Men',1599,30),
(6,'Denim Jacket','Jackets','UrbanStyle','Men',1999,18),
(7,'Mini Skirt','Skirts','TrendWear','Women',2499,22),
(8,'Formal Trousers','Trousers','FashionHub','Men',2999,15),
(9,'Winter Hoodie','Hoodies','StylePro','Unisex',3499,28),
(10,'Fashion Belt','Accessories','NovaWear','Men',3999,32),
(11,'Casual Shirt','Shirts','TrendWear','Men',599,45),
(12,'Straight Jeans','Jeans','FashionHub','Women',899,30),
(13,'Printed Tee','T-Shirts','StylePro','Unisex',699,50),
(14,'Party Dress','Dresses','NovaWear','Women',1499,25),
(15,'Sports Shoes','Shoes','UrbanStyle','Men',1899,40),
(16,'Leather Jacket','Jackets','TrendWear','Men',2599,20),
(17,'Long Skirt','Skirts','FashionHub','Women',999,35),
(18,'Casual Trousers','Trousers','StylePro','Men',1199,18),
(19,'Oversized Hoodie','Hoodies','NovaWear','Unisex',1599,22),
(20,'Fashion Cap','Accessories','UrbanStyle','Unisex',399,30),
(21,'Linen Shirt','Shirts','FashionHub','Men',799,28),
(22,'Bootcut Jeans','Jeans','StylePro','Women',1099,38),
(23,'Graphic Tee','T-Shirts','NovaWear','Unisex',599,42),
(24,'Maxi Dress','Dresses','UrbanStyle','Women',1799,24),
(25,'Canvas Shoes','Shoes','TrendWear','Unisex',999,33),
(26,'Bomber Jacket','Jackets','FashionHub','Men',2299,16),
(27,'Pleated Skirt','Skirts','NovaWear','Women',899,27),
(28,'Cargo Trousers','Trousers','UrbanStyle','Men',1399,19),
(29,'Zip Hoodie','Hoodies','TrendWear','Unisex',1299,31),
(30,'Leather Wallet','Accessories','FashionHub','Men',699,26),
(31,'Oxford Shirt','Shirts','StylePro','Men',899,37),
(32,'Wide Leg Jeans','Jeans','NovaWear','Women',1199,29),
(33,'Polo Tee','T-Shirts','UrbanStyle','Unisex',799,44),
(34,'A-Line Dress','Dresses','TrendWear','Women',1599,21),
(35,'Walking Shoes','Shoes','FashionHub','Unisex',1299,36),
(36,'Puffer Jacket','Jackets','StylePro','Men',2799,17),
(37,'Denim Skirt','Skirts','UrbanStyle','Women',1099,23),
(38,'Chino Trousers','Trousers','NovaWear','Men',1499,14),
(39,'Fleece Hoodie','Hoodies','FashionHub','Unisex',1699,34),
(40,'Sunglasses','Accessories','StylePro','Unisex',599,20),
(41,'Striped Shirt','Shirts','NovaWear','Men',699,41),
(42,'Ripped Jeans','Jeans','UrbanStyle','Women',1299,32),
(43,'V-Neck Tee','T-Shirts','TrendWear','Unisex',499,26),
(44,'Cocktail Dress','Dresses','FashionHub','Women',2199,39),
(45,'Training Shoes','Shoes','StylePro','Men',1799,27),
(46,'Windbreaker Jacket','Jackets','NovaWear','Unisex',1999,24),
(47,'Wrap Skirt','Skirts','TrendWear','Women',999,18),
(48,'Slim Trousers','Trousers','FashionHub','Men',1599,33),
(49,'Pullover Hoodie','Hoodies','UrbanStyle','Unisex',1399,21),
(50,'Wrist Watch','Accessories','TrendWear','Unisex',2499,29),
(51,'Check Shirt','Shirts','UrbanStyle','Men',749,30),
(52,'Mom Jeans','Jeans','TrendWear','Women',1199,42),
(53,'Oversized Tee','T-Shirts','FashionHub','Unisex',599,37),
(54,'Midi Dress','Dresses','StylePro','Women',1399,19),
(55,'Slip-On Shoes','Shoes','NovaWear','Unisex',899,31),
(56,'Quilted Jacket','Jackets','UrbanStyle','Men',2399,22),
(57,'Pencil Skirt','Skirts','TrendWear','Women',799,25),
(58,'Track Trousers','Trousers','FashionHub','Men',999,16),
(59,'Printed Hoodie','Hoodies','StylePro','Unisex',1499,38),
(60,'Travel Bag','Accessories','NovaWear','Unisex',1899,24),
(61,'Formal Shirt','Shirts','TrendWear','Men',999,34),
(62,'Tapered Jeans','Jeans','FashionHub','Women',1399,27),
(63,'Henley Tee','T-Shirts','StylePro','Men',699,40),
(64,'Shift Dress','Dresses','NovaWear','Women',1199,23),
(65,'High-Top Shoes','Shoes','UrbanStyle','Unisex',1599,35),
(66,'Fleece Jacket','Jackets','TrendWear','Unisex',1799,19),
(67,'Tiered Skirt','Skirts','FashionHub','Women',1099,32),
(68,'Pleated Trousers','Trousers','StylePro','Men',1699,20),
(69,'Graphic Hoodie','Hoodies','NovaWear','Unisex',1899,26),
(70,'Leather Handbag','Accessories','UrbanStyle','Women',2299,18),
(71,'Party Shirt','Shirts','FashionHub','Men',899,39),
(72,'Relaxed Jeans','Jeans','StylePro','Women',999,24),
(73,'Raglan Tee','T-Shirts','NovaWear','Unisex',649,36),
(74,'Wrap Dress','Dresses','UrbanStyle','Women',1699,28),
(75,'Hiking Shoes','Shoes','TrendWear','Unisex',2199,17),
(76,'Rain Jacket','Jackets','FashionHub','Unisex',1499,30),
(77,'A-Line Skirt','Skirts','NovaWear','Women',899,21),
(78,'Work Trousers','Trousers','UrbanStyle','Men',1299,37),
(79,'Cropped Hoodie','Hoodies','TrendWear','Unisex',1199,25),
(80,'Backpack','Accessories','FashionHub','Unisex',1599,33),
(81,'Denim Shirt','Shirts','StylePro','Men',1099,22),
(82,'Skinny Jeans','Jeans','NovaWear','Women',999,35),
(83,'Basic Tee','T-Shirts','UrbanStyle','Unisex',399,29),
(84,'Bodycon Dress','Dresses','TrendWear','Women',1899,41),
(85,'Loafers','Shoes','FashionHub','Men',1799,20),
(86,'Track Jacket','Jackets','StylePro','Unisex',1699,32),
(87,'Printed Skirt','Skirts','UrbanStyle','Women',799,16),
(88,'Linen Trousers','Trousers','NovaWear','Men',1499,28),
(89,'Classic Hoodie','Hoodies','FashionHub','Unisex',1299,23),
(90,'Scarf','Accessories','StylePro','Women',499,19),
(91,'Mandarin Shirt','Shirts','NovaWear','Men',899,36),
(92,'Flared Jeans','Jeans','UrbanStyle','Women',1399,31),
(93,'Sleeveless Tee','T-Shirts','TrendWear','Unisex',449,43),
(94,'Shirt Dress','Dresses','FashionHub','Women',1599,26),
(95,'Tennis Shoes','Shoes','StylePro','Unisex',1499,34),
(96,'Varsity Jacket','Jackets','NovaWear','Men',2599,15),
(97,'Pleated Mini Skirt','Skirts','TrendWear','Women',999,29),
(98,'Jogger Trousers','Trousers','FashionHub','Unisex',1199,22),
(99,'Fuzzy Hoodie','Hoodies','UrbanStyle','Unisex',1799,27),
(100,'Fashion Watch','Accessories','NovaWear','Unisex',1999,30);

select * from products;

USE fashion_trends_db;

INSERT INTO Sales
(Sale_ID, Product_ID, Sale_Date, Quantity_Sold, Discount_Percent, Payment_Method, Customer_Rating)
VALUES
(1,1,'2025-01-01',4,5,'UPI',4.0),
(2,2,'2025-01-02',2,10,'Cash',4.5),
(3,3,'2025-01-03',5,15,'Credit Card',4.2),
(4,4,'2025-01-04',3,20,'Debit Card',5.0),
(5,5,'2025-01-05',6,0,'Net Banking',3.5),
(6,6,'2025-01-06',2,25,'UPI',4.8),
(7,7,'2025-01-07',7,30,'Cash',4.0),
(8,8,'2025-01-08',1,5,'Credit Card',4.5),
(9,9,'2025-01-09',3,10,'Debit Card',4.2),
(10,10,'2025-01-10',4,15,'Net Banking',5.0),
(11,11,'2025-01-11',5,20,'UPI',3.5),
(12,12,'2025-01-12',2,0,'Cash',4.8),
(13,13,'2025-01-13',6,25,'Credit Card',4.0),
(14,14,'2025-01-14',3,30,'Debit Card',4.5),
(15,15,'2025-01-15',1,5,'Net Banking',4.2),
(16,16,'2025-01-16',4,10,'UPI',5.0),
(17,17,'2025-01-17',7,15,'Cash',3.5),
(18,18,'2025-01-18',2,20,'Credit Card',4.8),
(19,19,'2025-01-19',5,0,'Debit Card',4.0),
(20,20,'2025-01-20',3,25,'Net Banking',4.5),
(21,21,'2025-01-21',6,30,'UPI',4.2),
(22,22,'2025-01-22',1,5,'Cash',5.0),
(23,23,'2025-01-23',4,10,'Credit Card',3.5),
(24,24,'2025-01-24',2,15,'Debit Card',4.8),
(25,25,'2025-01-25',7,20,'Net Banking',4.0),
(26,26,'2025-01-26',3,0,'UPI',4.5),
(27,27,'2025-01-27',5,25,'Cash',4.2),
(28,28,'2025-01-28',2,30,'Credit Card',5.0),
(29,29,'2025-02-01',6,5,'Debit Card',3.5),
(30,30,'2025-02-02',1,10,'Net Banking',4.8),
(31,31,'2025-02-03',4,15,'UPI',4.0),
(32,32,'2025-02-04',3,20,'Cash',4.5),
(33,33,'2025-02-05',7,0,'Credit Card',4.2),
(34,34,'2025-02-06',2,25,'Debit Card',5.0),
(35,35,'2025-02-07',5,30,'Net Banking',3.5),
(36,36,'2025-02-08',4,5,'UPI',4.8),
(37,37,'2025-02-09',1,10,'Cash',4.0),
(38,38,'2025-02-10',6,15,'Credit Card',4.5),
(39,39,'2025-02-11',3,20,'Debit Card',4.2),
(40,40,'2025-02-12',2,0,'Net Banking',5.0),
(41,41,'2025-02-13',5,25,'UPI',3.5),
(42,42,'2025-02-14',7,30,'Cash',4.8),
(43,43,'2025-02-15',2,5,'Credit Card',4.0),
(44,44,'2025-02-16',4,10,'Debit Card',4.5),
(45,45,'2025-02-17',1,15,'Net Banking',4.2),
(46,46,'2025-02-18',6,20,'UPI',5.0),
(47,47,'2025-02-19',3,0,'Cash',3.5),
(48,48,'2025-02-20',5,25,'Credit Card',4.8),
(49,49,'2025-02-21',2,30,'Debit Card',4.0),
(50,50,'2025-02-22',7,5,'Net Banking',4.5),
(51,51,'2025-02-23',4,10,'UPI',4.2),
(52,52,'2025-02-24',1,15,'Cash',5.0),
(53,53,'2025-02-25',6,20,'Credit Card',3.5),
(54,54,'2025-02-26',3,0,'Debit Card',4.8),
(55,55,'2025-02-27',5,25,'Net Banking',4.0),
(56,56,'2025-02-28',2,30,'UPI',4.5),
(57,57,'2025-03-01',7,5,'Cash',4.2),
(58,58,'2025-03-02',4,10,'Credit Card',5.0),
(59,59,'2025-03-03',1,15,'Debit Card',3.5),
(60,60,'2025-03-04',6,20,'Net Banking',4.8),
(61,61,'2025-03-05',3,0,'UPI',4.0),
(62,62,'2025-03-06',5,25,'Cash',4.5),
(63,63,'2025-03-07',2,30,'Credit Card',4.2),
(64,64,'2025-03-08',7,5,'Debit Card',5.0),
(65,65,'2025-03-09',4,10,'Net Banking',3.5),
(66,66,'2025-03-10',1,15,'UPI',4.8),
(67,67,'2025-03-11',6,20,'Cash',4.0),
(68,68,'2025-03-12',3,0,'Credit Card',4.5),
(69,69,'2025-03-13',5,25,'Debit Card',4.2),
(70,70,'2025-03-14',2,30,'Net Banking',5.0),
(71,71,'2025-03-15',7,5,'UPI',3.5),
(72,72,'2025-03-16',4,10,'Cash',4.8),
(73,73,'2025-03-17',1,15,'Credit Card',4.0),
(74,74,'2025-03-18',6,20,'Debit Card',4.5),
(75,75,'2025-03-19',3,0,'Net Banking',4.2),
(76,76,'2025-03-20',5,25,'UPI',5.0),
(77,77,'2025-03-21',2,30,'Cash',3.5),
(78,78,'2025-03-22',7,5,'Credit Card',4.8),
(79,79,'2025-03-23',4,10,'Debit Card',4.0),
(80,80,'2025-03-24',1,15,'Net Banking',4.5),
(81,81,'2025-03-25',6,20,'UPI',4.2),
(82,82,'2025-03-26',3,0,'Cash',5.0),
(83,83,'2025-03-27',5,25,'Credit Card',3.5),
(84,84,'2025-03-28',2,30,'Debit Card',4.8),
(85,85,'2025-04-01',7,5,'Net Banking',4.0),
(86,86,'2025-04-02',4,10,'UPI',4.5),
(87,87,'2025-04-03',1,15,'Cash',4.2),
(88,88,'2025-04-04',6,20,'Credit Card',5.0),
(89,89,'2025-04-05',3,0,'Debit Card',3.5),
(90,90,'2025-04-06',5,25,'Net Banking',4.8),
(91,91,'2025-04-07',2,30,'UPI',4.0),
(92,92,'2025-04-08',7,5,'Cash',4.5),
(93,93,'2025-04-09',4,10,'Credit Card',4.2),
(94,94,'2025-04-10',1,15,'Debit Card',5.0),
(95,95,'2025-04-11',6,20,'Net Banking',3.5),
(96,96,'2025-04-12',3,0,'UPI',4.8),
(97,97,'2025-04-13',5,25,'Cash',4.0),
(98,98,'2025-04-14',2,30,'Credit Card',4.5),
(99,99,'2025-04-15',7,5,'Debit Card',4.2),
(100,100,'2025-04-16',4,10,'Net Banking',5.0);

select * from sales;
USE fashion_trends_db;

-- 1. Display all products
SELECT * FROM Products;

-- 2. Display all sales
SELECT * FROM Sales;

-- 3. Display product names and prices
SELECT Product_Name, Price
FROM Products;

-- 4. Find products above ₹2000
SELECT *
FROM Products
WHERE Price > 2000;

-- 5. Find products below ₹1000
SELECT *
FROM Products
WHERE Price < 1000;

-- 6. Find products by category
SELECT *
FROM Products
WHERE Category = 'Clothing';

-- 7. Find products for men
SELECT *
FROM Products
WHERE Gender = 'Male';

-- 8. Display products in ascending price order
SELECT *
FROM Products
ORDER BY Price ASC;

-- 9. Display products in descending price order
SELECT *
FROM Products
ORDER BY Price DESC;

-- 10. Find the top 10 expensive products
SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 10;

-- 11. Count total products
SELECT COUNT(*) AS Total_Products
FROM Products;

-- 12. Find average product price
SELECT AVG(Price) AS Average_Price
FROM Products;

-- 13. Find maximum product price
SELECT MAX(Price) AS Maximum_Price
FROM Products;

-- 14. Find minimum product price
SELECT MIN(Price) AS Minimum_Price
FROM Products;

-- 15. Count products in each category
SELECT Category, COUNT(*) AS Total_Products
FROM Products
GROUP BY Category;

-- 16. Find average price by category
SELECT Category, AVG(Price) AS Average_Price
FROM Products
GROUP BY Category;

-- 17. Calculate total quantity sold
SELECT SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM Sales;

-- 18. Find total quantity sold by payment method
SELECT Payment_Method,
       SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM Sales
GROUP BY Payment_Method;

-- 19. Display product details with sales details
SELECT P.Product_Name, P.Category, S.Quantity_Sold,
       S.Sale_Date, S.Payment_Method
FROM Products P
INNER JOIN Sales S
ON P.Product_ID = S.Product_ID;

-- 20. Find total quantity sold for each product
SELECT P.Product_Name,
       SUM(S.Quantity_Sold) AS Total_Sold
FROM Products P
INNER JOIN Sales S
ON P.Product_ID = S.Product_ID
GROUP BY P.Product_ID, P.Product_Name;

-- 21. Find sales amount by product
SELECT P.Product_Name,
       SUM(P.Price * S.Quantity_Sold) AS Sales_Amount
FROM Products P
INNER JOIN Sales S
ON P.Product_ID = S.Product_ID
GROUP BY P.Product_ID, P.Product_Name;

-- 22. Find products with a customer rating of 4 or above
SELECT P.Product_Name, S.Customer_Rating
FROM Products P
INNER JOIN Sales S
ON P.Product_ID = S.Product_ID
WHERE S.Customer_Rating >= 4;

-- 23. Display products with their discount percentages
SELECT P.Product_Name, P.Brand,
       S.Discount_Percent
FROM Products P
INNER JOIN Sales S
ON P.Product_ID = S.Product_ID;

-- 24. Products priced above average price
SELECT *
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
);

-- 25. Products with the highest price
SELECT *
FROM Products
WHERE Price = (
    SELECT MAX(Price)
    FROM Products
);

-- 26. Sales with quantity above average quantity sold
SELECT *
FROM Sales
WHERE Quantity_Sold > (
    SELECT AVG(Quantity_Sold)
    FROM Sales
);

-- 27. Products that have sales
SELECT *
FROM Products
WHERE Product_ID IN (
    SELECT Product_ID
    FROM Sales
);




