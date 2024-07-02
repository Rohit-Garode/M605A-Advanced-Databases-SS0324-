-- Insert Customers sample data
INSERT INTO Customers (first_name, last_name, email, address, city, country, postal_code, phone)
VALUES 
('Bruce', 'Wayne', 'bruce.wayne@batman.com', '123 Main St', 'Gotham', 'UK', 'E1 6AN', '1234567890'),
('Clark','Kent', 'clark.kent@superman.com', '456 Maple Rd', 'Metropolis', 'France', '75001', '0987654321'),
('Tony', 'Stark', 'tony.stark@ironman.com', '789 Oak St', 'Malibu', 'Germany', '10115', '1122334455'),
('Barry', 'Allen', 'barry.allen@flash.com', '101 Pine St', 'Missouri', 'Spain', '28001', '2233445566'),
('Hal', 'Jordan', 'hal.jordan@greenlantern.com', '202 Cedar St', 'Coast City', 'Italy', '00184', '3344556677'),
('Peter','Parker', 'peter.parker@spiderman.com', '303 Birch St', 'New York', 'Netherlands', '1012 WX', '4455667788'),
('Steve', 'Rogers', 'steve.rogers@captainamerica.com', '404 Elm St', 'Brooklyn', 'Belgium', '1000', '5566778899'),
('Bruce', 'Banner', 'bruce.banner@hulk.com', '505 Ash St', 'Ohio', 'Austria', '1010', '6677889900'),
('Arthur', 'Curry', 'arthur.curry@aquaman.com', '606 Fir St', 'Maine', 'Ireland', 'D02', '7788990011'),
('Victor', 'Doom', 'victor.doom@drdoom.com', '707 Spruce St', 'Latveria', 'Portugal', '1100-000', '8899001122');

-- Insert Categories sample data
INSERT INTO Categories (category_name)
VALUES 
('Running'),
('Cycling'),
('Swimming'),
('Football'),
('Basketball'),
('Tennis'),
('Yoga'),
('Gym Equipment'),
('Hiking'),
('Winter Sports');

-- Insert Products sample data
INSERT INTO Products (product_name, description, price, category_id, stock_quantity)
VALUES 
('Running Shoes', 'Comfortable running shoes', 59.99, 1, 100),
('Cycling Helmet', 'Safety first', 29.99, 2, 150),
('Swimming Goggles', 'Clear vision underwater', 19.99, 3, 200),
('Football', 'Official size', 24.99, 4, 300),
('Basketball', 'Indoor/outdoor', 29.99, 5, 250),
('Tennis Racket', 'Lightweight and durable', 79.99, 6, 75),
('Yoga Mat', 'Non-slip surface', 19.99, 7, 120),
('Dumbbells', 'Set of 2', 39.99, 8, 80),
('Hiking Boots', 'Waterproof and durable', 89.99, 9, 60),
('Ski Jacket', 'Warm and waterproof', 129.99, 10, 50);

-- Insert Orders sample data
INSERT INTO Orders (customer_id, order_date, status, total_amount)
VALUES 
(1, '2023-06-01 10:00:00', 'Shipped', 84.98),
(2, '2023-06-02 11:00:00', 'Processing', 29.99),
(3, '2023-06-03 12:00:00', 'Delivered', 19.99),
(4, '2023-06-04 13:00:00', 'Shipped', 54.98),
(5, '2023-06-05 14:00:00', 'Processing', 109.98),
(6, '2023-06-06 15:00:00', 'Cancelled', 29.99),
(7, '2023-06-07 16:00:00', 'Shipped', 59.99),
(8, '2023-06-08 17:00:00', 'Processing', 169.98),
(9, '2023-06-09 18:00:00', 'Delivered', 89.99),
(10, '2023-06-10 19:00:00', 'Shipped', 59.98);

-- Insert Order_Items sample data
INSERT INTO Order_Items (order_id, product_id, quantity, price)
VALUES 
(1, 1, 1, 59.99),
(1, 2, 1, 24.99),
(2, 2, 1, 29.99),
(3, 3, 1, 19.99),
(4, 4, 1, 24.99),
(4, 5, 1, 29.99),
(5, 6, 1, 79.99),
(5, 7, 1, 19.99),
(6, 2, 1, 29.99),
(7, 1, 1, 59.99),
(8, 8, 1, 39.99),
(8, 9, 1, 89.99),
(9, 9, 1, 89.99),
(10, 10, 1, 129.99),
(10, 1, 1, 59.99);

-- Insert Reviews sample data
INSERT INTO Reviews (customer_id, product_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Excellent product! Highly recommend.', '2023-06-15 10:34:00'),
(2, 2, 4, 'Very good quality, but a bit pricey.', '2023-06-16 12:21:00'),
(3, 3, 3, 'Average product, not very impressed.', '2023-06-17 15:45:00'),
(4, 4, 5, 'Amazing! Exceeded my expectations.', '2023-06-18 09:30:00'),
(5, 5, 2, 'Not satisfied, the product was damaged.', '2023-06-19 14:10:00'),
(6, 6, 4, 'Good product, but delivery was late.', '2023-06-20 11:55:00'),
(7, 7, 5, 'Fantastic! Will buy again.', '2023-06-21 13:40:00'),
(8, 8, 3, 'It\'s okay, nothing special.', '2023-06-22 16:20:00'),
(9, 9, 4, 'Really good product, worth the money.', '2023-06-23 10:15:00'),
(10, 10, 5, 'Perfect! Exactly what I needed.', '2023-06-24 12:00:00');

-- Insert Payments sample data
INSERT INTO Payments (order_id, customer_id, payment_date, amount,payment_method_id, status)
VALUES 
(1, 1, '2023-06-01 10:05:00', 84.98, 1, 'Completed'),
(2, 2, '2023-06-02 11:05:00', 29.99, 1, 'Completed'),
(3, 3, '2023-06-03 12:05:00', 19.99, 3, 'Completed'),
(4, 4, '2023-06-04 13:05:00', 54.98, 1, 'Completed'),
(5, 5, '2023-06-05 14:05:00', 109.98, 3, 'Pending')  ,
(6, 6, '2023-06-06 15:05:00', 29.99, 1, 'Refunded') ,
(7, 7, '2023-06-07 16:05:00', 59.99, 1, 'Completed'),
(8, 8, '2023-06-08 17:05:00', 169.98, 3, 'Pending')  ,
(9, 9, '2023-06-09 18:05:00', 89.99, 1, 'Completed'),
(10, 10 , '2023-06-10 19:05:00', 59.98, 1, 'Completed');

-- Insert Shipping sample data
INSERT INTO Shipping (order_id, shipping_date, delivery_date, shipping_method, shipping_cost, tracking_number, status) VALUES
(1, '2024-06-01 10:00:00', '2024-06-05 15:30:00', 'Standard', 5.00, 'TRACK123456789', 'Delivered'),
(2, '2024-06-02 11:00:00', '2024-06-06 16:00:00', 'Express', 10.00, 'TRACK234567890', 'Delivered'),
(3, '2024-06-03 12:00:00', '2024-06-07 17:00:00', 'Standard', 5.00, 'TRACK345678901', 'In Transit'),
(4, '2024-06-04 13:00:00', '2024-06-08 18:00:00', 'Express', 10.00, 'TRACK456789012', 'Delivered'),
(5, '2024-06-05 14:00:00', '2024-06-09 19:00:00', 'Standard', 5.00, 'TRACK567890123', 'Pending'),
(6, '2024-06-06 15:00:00', '2024-06-10 20:00:00', 'Express', 10.00, 'TRACK678901234', 'Delivered'),
(7, '2024-06-07 16:00:00', '2024-06-11 21:00:00', 'Standard', 5.00, 'TRACK789012345', 'In Transit'),
(8, '2024-06-08 17:00:00', '2024-06-12 22:00:00', 'Express', 10.00, 'TRACK890123456', 'Delivered'),
(9, '2024-06-09 18:00:00', '2024-06-13 23:00:00', 'Standard', 5.00, 'TRACK901234567', 'Pending'),
(10, '2024-06-10 19:00:00', '2024-06-14 24:00:00', 'Express', 10.00, 'TRACK012345678', 'Delivered');

-- Insert Product_Inventory sample data
INSERT INTO Product_Inventory (product_id, quantity, warehouse_location) VALUES
(1, 100, 'Warehouse A - Shelf 1'),
(2, 150, 'Warehouse A - Shelf 2'),
(3, 200, 'Warehouse A - Shelf 3'),
(4, 120, 'Warehouse B - Shelf 1'),
(5, 130, 'Warehouse B - Shelf 2'),
(6, 140, 'Warehouse B - Shelf 3'),
(7, 110, 'Warehouse C - Shelf 1'),
(8, 90, 'Warehouse C - Shelf 2'),
(9, 80, 'Warehouse C - Shelf 3'),
(10, 70, 'Warehouse D - Shelf 1');

-- Insert Discounts sample data
INSERT INTO Discounts (product_id, discount_percentage, start_date, end_date, description) VALUES
(1, 10.00, '2024-06-01 00:00:00', '2024-06-15 23:59:59', 'Summer Sale'),
(2, 15.00, '2024-06-05 00:00:00', '2024-06-20 23:59:59', 'Mid-Year Discount'),
(3, 20.00, '2024-06-10 00:00:00', '2024-06-25 23:59:59', 'End of Season Sale'),
(4, 25.00, '2024-06-15 00:00:00', '2024-06-30 23:59:59', 'Clearance Sale'),
(5, 5.00, '2024-06-01 00:00:00', '2024-06-10 23:59:59', 'Flash Sale'),
(6, 30.00, '2024-06-20 00:00:00', '2024-07-05 23:59:59', 'Mega Sale'),
(7, 12.50, '2024-06-25 00:00:00', '2024-07-10 23:59:59', 'Special Offer'),
(8, 18.00, '2024-06-30 00:00:00', '2024-07-15 23:59:59', 'Summer Discount'),
(9, 22.00, '2024-07-01 00:00:00', '2024-07-20 23:59:59', 'Exclusive Discount'),
(10, 8.00, '2024-07-05 00:00:00', '2024-07-25 23:59:59', 'Limited Time Offer');

-- Insert Wishlist sample data
INSERT INTO Wishlist (customer_id, product_id, added_date) VALUES
(1, 2, '2024-06-01 10:00:00'),
(2, 3, '2024-06-02 11:00:00'),
(3, 4, '2024-06-03 12:00:00'),
(4, 5, '2024-06-04 13:00:00'),
(5, 6, '2024-06-05 14:00:00'),
(6, 7, '2024-06-06 15:00:00'),
(7, 8, '2024-06-07 16:00:00'),
(8, 9, '2024-06-08 17:00:00'),
(9, 10, '2024-06-09 18:00:00'),
(10, 1, '2024-06-10 19:00:00');

-- Insert Cart sample data
INSERT INTO Cart (customer_id, product_id, quantity, added_date) VALUES
(1, 1, 2, '2024-06-01 10:00:00'),
(2, 2, 1, '2024-06-02 11:00:00'),
(3, 3, 3, '2024-06-03 12:00:00'),
(4, 4, 1, '2024-06-04 13:00:00'),
(5, 5, 2, '2024-06-05 14:00:00'),
(6, 6, 1, '2024-06-06 15:00:00'),
(7, 7, 4, '2024-06-07 16:00:00'),
(8, 8, 2, '2024-06-08 17:00:00'),
(9, 9, 1, '2024-06-09 18:00:00'),
(10, 10, 3, '2024-06-10 19:00:00');

-- Insert Payment_Methods sample data
INSERT INTO Payment_Methods (method_name, details) VALUES
('Credit Card', 'Visa, MasterCard, American Express'),
('Debit Card', 'Visa, MasterCard'),
('PayPal', 'Online payment via PayPal'),
('Bank Transfer', 'Direct bank transfer'),
('Cash on Delivery', 'Pay with cash upon delivery'),
('Apple Pay', 'Pay using Apple Pay'),
('Google Pay', 'Pay using Google Pay'),
('Gift Card', 'Payment using a gift card'),
('Cryptocurrency', 'Pay using Bitcoin, Ethereum'),
('Afterpay', 'Buy now, pay later with Afterpay');

-- Insert Suppliers sample data
INSERT INTO Suppliers (supplier_name, contact_name, address, city, postal_code, country, phone, email) VALUES
('Acme Corp', 'John Doe', '123 Acme St', 'Berlin', '10115', 'Germany', '030-1234567', 'contact@acme-corp.com'),
('Global Supply', 'Jane Smith', '456 Global Rd', 'Munich', '80331', 'Germany', '089-9876543', 'jane.smith@globalsupply.com'),
('Euro Parts', 'Thomas Müller', '789 Euro Pkwy', 'Frankfurt', '60311', 'Germany', '069-1122334', 'thomas.muller@europarts.de'),
('Tech Distributors', 'Anna Becker', '101 Tech Ave', 'Hamburg', '20095', 'Germany', '040-5566778', 'anna.becker@techdist.com'),
('Best Supplies', 'Robert Fischer', '202 Supply Ln', 'Cologne', '50667', 'Germany', '0221-4455667', 'robert.fischer@bestsupplies.com'),
('Prime Goods', 'Laura Schmidt', '303 Prime Blvd', 'Stuttgart', '70173', 'Germany', '0711-3344556', 'laura.schmidt@primegoods.com'),
('First Class Supplies', 'Markus Weber', '404 Class St', 'Düsseldorf', '40210', 'Germany', '0211-2233445', 'markus.weber@firstclasssupplies.com'),
('Quality Parts', 'Petra Meyer', '505 Quality Dr', 'Leipzig', '04109', 'Germany', '0341-5566778', 'petra.meyer@qualityparts.de'),
('Reliable Suppliers', 'Stefan Wagner', '606 Reliable Way', 'Dresden', '01067', 'Germany', '0351-6677889', 'stefan.wagner@reliablesuppliers.com'),
('Ultimate Supplies', 'Katrin Neumann', '707 Ultimate Ln', 'Hannover', '30159', 'Germany', '0511-7788990', 'katrin.neumann@ultimatesupplies.com');

-- Insert Returns sample data
INSERT INTO Returns (order_id, product_id, return_date, quantity, reason, status)
VALUES 
(1, 1, '2024-01-15 10:00:00', 1, 'Defective item', 'Pending'),
(2, 2, '2024-02-10 14:30:00', 2, 'Wrong size', 'Approved'),
(3, 3, '2024-03-05 09:20:00', 1, 'Changed mind', 'Rejected'),
(4, 4, '2024-04-12 11:45:00', 1, 'Late delivery', 'Pending'),
(5, 5, '2024-05-20 15:15:00', 3, 'Not as described', 'Approved'),
(6, 6, '2024-06-25 13:50:00', 2, 'Received damaged', 'Approved'),
(7, 7, '2024-07-30 08:40:00', 1, 'Ordered by mistake', 'Pending'),
(8, 8, '2024-08-18 12:10:00', 2, 'Better price found', 'Rejected'),
(9, 9, '2024-09-10 16:25:00', 1, 'Product no longer needed', 'Approved'),
(10, 10, '2024-10-05 10:05:00', 1, 'Wrong item received', 'Pending');

