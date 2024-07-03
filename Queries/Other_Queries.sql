-- Detail information about suppliers and the number of products that they provide
SELECT s.supplier_id, s.supplier_name, COUNT(p.product_id) AS num_products
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY num_products DESC;

-- 10 best-selling products with the total amount and their supplier
SELECT p.product_name, s.supplier_name, SUM(oi.quantity * oi.price) AS total_amount
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
GROUP BY p.product_id, p.product_name, s.supplier_name
ORDER BY total_amount DESC
LIMIT 10;

-- List of customers and their total purchases
SELECT c.customer_id, c.first_name, c.last_name, c.email, SUM(o.total_amount) AS total_purchases
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_purchases DESC;

-- List of returned items
SELECT r.return_id,r.order_id,r.product_id, p.product_name,r.return_date,r.quantity,
    r.reason,r.status,o.customer_id,c.first_name,c.last_name, s.supplier_name
FROM Returns r
JOIN Orders o ON r.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON r.product_id = p.product_id
JOIN Suppliers s ON r.supplier_id = s.supplier_id
ORDER BY r.return_date DESC;


--View (Customer,Product,Order)

CREATE VIEW Customer_Order_Details AS
SELECT o.order_id, c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.email, c.address, c.city, c.country, c.postal_code, c.phone, o.order_date,
    o.status, o.total_amount, p.product_id, p.product_name, p.description, p.price
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;

--Index

CREATE INDEX idx_customers_email ON Customers(email);
CREATE INDEX idx_products_name ON Products(product_name);
CREATE INDEX idx_orders_customer_id ON Orders(customer_id);
