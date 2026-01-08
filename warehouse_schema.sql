-- =========================
-- DIM_DATE (30 records: Jan–Feb 2024)
-- =========================
INSERT INTO dim_date VALUES
(20240101,'2024-01-01','Monday',1,1,'January','Q1',2024,false),
(20240102,'2024-01-02','Tuesday',2,1,'January','Q1',2024,false),
(20240103,'2024-01-03','Wednesday',3,1,'January','Q1',2024,false),
(20240104,'2024-01-04','Thursday',4,1,'January','Q1',2024,false),
(20240105,'2024-01-05','Friday',5,1,'January','Q1',2024,false),
(20240106,'2024-01-06','Saturday',6,1,'January','Q1',2024,true),
(20240107,'2024-01-07','Sunday',7,1,'January','Q1',2024,true),
(20240108,'2024-01-08','Monday',8,1,'January','Q1',2024,false),
(20240109,'2024-01-09','Tuesday',9,1,'January','Q1',2024,false),
(20240110,'2024-01-10','Wednesday',10,1,'January','Q1',2024,false),
(20240113,'2024-01-13','Saturday',13,1,'January','Q1',2024,true),
(20240114,'2024-01-14','Sunday',14,1,'January','Q1',2024,true),
(20240115,'2024-01-15','Monday',15,1,'January','Q1',2024,false),
(20240120,'2024-01-20','Saturday',20,1,'January','Q1',2024,true),
(20240121,'2024-01-21','Sunday',21,1,'January','Q1',2024,true),
(20240125,'2024-01-25','Thursday',25,1,'January','Q1',2024,false),
(20240128,'2024-01-28','Sunday',28,1,'January','Q1',2024,true),
(20240201,'2024-02-01','Thursday',1,2,'February','Q1',2024,false),
(20240202,'2024-02-02','Friday',2,2,'February','Q1',2024,false),
(20240203,'2024-02-03','Saturday',3,2,'February','Q1',2024,true),
(20240204,'2024-02-04','Sunday',4,2,'February','Q1',2024,true),
(20240205,'2024-02-05','Monday',5,2,'February','Q1',2024,false),
(20240208,'2024-02-08','Thursday',8,2,'February','Q1',2024,false),
(20240210,'2024-02-10','Saturday',10,2,'February','Q1',2024,true),
(20240211,'2024-02-11','Sunday',11,2,'February','Q1',2024,true),
(20240214,'2024-02-14','Wednesday',14,2,'February','Q1',2024,false),
(20240217,'2024-02-17','Saturday',17,2,'February','Q1',2024,true),
(20240218,'2024-02-18','Sunday',18,2,'February','Q1',2024,true),
(20240224,'2024-02-24','Saturday',24,2,'February','Q1',2024,true),
(20240225,'2024-02-25','Sunday',25,2,'February','Q1',2024,true);

-- =========================
-- DIM_PRODUCT (15 products, 3 categories)
-- =========================
INSERT INTO dim_product (product_id, product_name, category, subcategory) VALUES
('P001','Laptop Pro','Electronics','Computers'),
('P002','Smartphone X','Electronics','Mobiles'),
('P003','Wireless Earbuds','Electronics','Accessories'),
('P004','Gaming Mouse','Electronics','Accessories'),
('P005','4K Monitor','Electronics','Displays'),

('P006','Running Shoes','Apparel','Footwear'),
('P007','Leather Jacket','Apparel','Outerwear'),
('P008','T-Shirt','Apparel','Casual'),
('P009','Jeans','Apparel','Denim'),
('P010','Sports Cap','Apparel','Accessories'),

('P011','Office Chair','Home','Furniture'),
('P012','Dining Table','Home','Furniture'),
('P013','LED Lamp','Home','Lighting'),
('P014','Cookware Set','Home','Kitchen'),
('P015','Bedsheet Set','Home','Bedroom');

-- =========================
-- DIM_CUSTOMER (12 customers, 4 cities)
-- =========================
INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('C001','John Doe','Mumbai','Maharashtra','Retail'),
('C002','Amit Shah','Ahmedabad','Gujarat','Retail'),
('C003','Neha Verma','Delhi','Delhi','Corporate'),
('C004','Rahul Mehta','Mumbai','Maharashtra','Retail'),
('C005','Pooja Singh','Bangalore','Karnataka','Retail'),
('C006','Arjun Rao','Bangalore','Karnataka','Corporate'),
('C007','Karan Malhotra','Delhi','Delhi','Retail'),
('C008','Sneha Iyer','Chennai','Tamil Nadu','Retail'),
('C009','Rohit Patel','Ahmedabad','Gujarat','Corporate'),
('C010','Ananya Das','Kolkata','West Bengal','Retail'),
('C011','Vikram Joshi','Pune','Maharashtra','Retail'),
('C012','Meera Nair','Trivandrum','Kerala','Corporate');

-- =========================
-- FACT_SALES (40 transactions, realistic patterns)
-- =========================
INSERT INTO fact_sales
(date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount)
VALUES
(20240106,1,1,2,50000,5000,95000),
(20240107,2,4,1,30000,2000,28000),
(20240113,3,2,3,4000,0,12000),
(20240114,5,3,1,25000,1500,23500),
(20240120,6,5,2,3500,0,7000),
(20240121,7,6,1,12000,1000,11000),
(20240128,8,7,4,800,0,3200),
(20240203,9,8,2,2200,200,4200),
(20240204,10,9,3,600,0,1800),
(20240210,11,10,1,18000,2000,16000),

(20240102,12,11,1,45000,5000,40000),
(20240103,13,12,5,900,0,4500),
(20240104,14,1,2,6500,500,12500),
(20240105,15,2,3,1800,0,5400),
(20240108,1,3,1,50000,3000,47000),
(20240109,2,4,2,30000,4000,56000),
(20240110,3,5,3,4000,0,12000),
(20240115,4,6,1,2500,0,2500),
(20240125,5,7,1,25000,2000,23000),
(20240201,6,8,2,3500,0,7000),

(20240202,7,9,1,12000,1000,11000),
(20240205,8,10,5,800,0,4000),
(20240208,9,11,2,2200,0,4400),
(20240211,10,12,3,600,0,1800),
(20240214,11,1,1,18000,1500,16500),
(20240217,12,2,1,45000,5000,40000),
(20240218,13,3,4,900,0,3600),
(20240224,14,4,2,6500,500,12500),
(20240225,15,5,3,1800,0,5400),
(20240101,1,6,1,50000,2000,48000),

(20240102,2,7,1,30000,1500,28500),
(20240103,3,8,2,4000,0,8000),
(20240104,4,9,1,2500,0,2500),
(20240105,5,10,1,25000,2000,23000),
(20240106,6,11,2,3500,0,7000),
(20240107,7,12,1,12000,1000,11000),
(20240113,8,1,4,800,0,3200),
(20240114,9,2,2,2200,0,4400),
(20240120,10,3,3,600,0,1800),
(20240121,11,4,1,18000,1500,16500);
