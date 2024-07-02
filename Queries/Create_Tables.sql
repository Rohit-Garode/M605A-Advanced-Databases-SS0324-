-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100)NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

-- Create Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT NOT NULL,
    stock_quantity INT NOT NULL
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATETIME,
    status VARCHAR(50),
    total_amount DECIMAL(10, 2) NOT NULL
);

-- Create Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Create Reviews table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    review_date DATETIME
);

-- Create Payments table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    payment_date DATETIME,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method_id INT NOT NULL, -- Add the missing column
    status VARCHAR(50) NOT NULL
);

-- Create Shipping table
CREATE TABLE Shipping (
    shipping_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    shipping_date DATETIME,
    delivery_date DATETIME,
    shipping_method VARCHAR(50) NOT NULL,
    shipping_cost DECIMAL(10, 2) NOT NULL,
    tracking_number VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL
);

-- Create Product_Inventory table
CREATE TABLE Product_Inventory (
    inventory_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    warehouse_location VARCHAR(100)
);

-- Create Discounts table
CREATE TABLE Discounts (
    discount_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    discount_percentage DECIMAL(5, 2) NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    description TEXT
);

-- Create Wishlist table
CREATE TABLE Wishlist (
    wishlist_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    added_date DATETIME
);

-- Create Cart table
CREATE TABLE Cart (
    cart_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    added_date DATETIME
);

-- Create Payment_Methods table
CREATE TABLE Payment_Methods (
    payment_method_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    method_name VARCHAR(50) NOT NULL,
    details TEXT
);

-- Create Suppliers table
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Create Returns table
CREATE TABLE Returns (
    return_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    return_date DATETIME NOT NULL,
    quantity INT NOT NULL,
    reason TEXT,
    status VARCHAR(50) NOT NULL
);


ALTER TABLE Products
ADD CONSTRAINT fk_products_category
FOREIGN KEY (category_id) REFERENCES Categories(category_id);

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);

ALTER TABLE Order_Items
ADD CONSTRAINT fk_order_items_order
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
ADD CONSTRAINT fk_order_items_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Reviews
ADD CONSTRAINT fk_reviews_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
ADD CONSTRAINT fk_reviews_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Payments
ADD CONSTRAINT fk_payments_order
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
ADD CONSTRAINT fk_payments_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);

ALTER TABLE Shipping
ADD CONSTRAINT fk_shipping_order
FOREIGN KEY (order_id) REFERENCES Orders(order_id);

ALTER TABLE Product_Inventory
ADD CONSTRAINT fk_inventory_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Discounts
ADD CONSTRAINT fk_discounts_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Wishlist
ADD CONSTRAINT fk_wishlist_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
ADD CONSTRAINT fk_wishlist_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Cart
ADD CONSTRAINT fk_cart_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
ADD CONSTRAINT fk_cart_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Products
ADD COLUMN supplier_id INT,
ADD CONSTRAINT fk_supplier_id
FOREIGN KEY (supplier_id)
REFERENCES Suppliers(supplier_id);

ALTER TABLE Product_Inventory
ADD COLUMN supplier_id INT,
ADD CONSTRAINT fk_supplier_id_inventory
FOREIGN KEY (supplier_id)
REFERENCES Suppliers(supplier_id);

ALTER TABLE Returns
ADD CONSTRAINT fk_returns_order
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
ADD CONSTRAINT fk_returns_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Payments
ADD CONSTRAINT fk_payments_payment_method
FOREIGN KEY (payment_method_id) REFERENCES Payment_Methods(payment_method_id);
