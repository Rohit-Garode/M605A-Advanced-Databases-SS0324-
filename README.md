# M605A-Advanced-Databases-SS0324
M605A Advanced Databases (SS0324) - Final Assesment

# Sportzkart Online Shop Database

## Overview

This project involves designing and developing a comprehensive database schema for Sportzkart Company's online sports products shop in Europe. The database is implemented using PostgreSQL and includes tables for customers, categories, products, orders, order items, reviews, payments, shipping, product inventory, discounts, wishlist, cart, payment methods, suppliers, and returns.

## Database Schema

### Tables and Relationships

1. **Customers**: Stores customer information.
   - `customer_id`: Primary key.
   - `first_name`, `last_name`, `email`, `address`, `city`, `country`, `postal_code`, `phone`: Customer details.
   - Constraints: `email` is unique.

2. **Categories**: Stores product categories.
   - `category_id`: Primary key.
   - `category_name`: Category name, unique.

3. **Products**: Stores product information.
   - `product_id`: Primary key.
   - `product_name`, `description`, `price`, `category_id`, `stock_quantity`, `supplier_id`: Product details.
   - Constraints: Foreign keys `category_id` references `Categories(category_id)`, `supplier_id` references `Suppliers(supplier_id)`.

4. **Orders**: Stores customer orders.
   - `order_id`: Primary key.
   - `customer_id`, `order_date`, `status`, `total_amount`, `supplier_id`: Order details.
   - Constraints: Foreign keys `customer_id` references `Customers(customer_id)`, `supplier_id` references `Suppliers(supplier_id)`.

5. **Order_Items**: Stores items in an order.
   - `order_item_id`: Primary key.
   - `order_id`, `product_id`, `quantity`, `price`: Order item details.
   - Constraints: Foreign keys `order_id` references `Orders(order_id)`, `product_id` references `Products(product_id)`.

6. **Reviews**: Stores product reviews by customers.
   - `review_id`: Primary key.
   - `customer_id`, `product_id`, `rating`, `comment`, `review_date`: Review details.
   - Constraints: Foreign keys `customer_id` references `Customers(customer_id)`, `product_id` references `Products(product_id)`.

7. **Payments**: Stores payment information for orders.
   - `payment_id`: Primary key.
   - `order_id`, `customer_id`, `payment_date`, `amount`, `payment_method_id`, `status`: Payment details.
   - Constraints: Foreign keys `order_id` references `Orders(order_id)`, `customer_id` references `Customers(customer_id)`, `payment_method_id` references `Payment_Methods(payment_method_id)`.

8. **Shipping**: Stores shipping information for orders.
   - `shipping_id`: Primary key.
   - `order_id`, `shipping_date`, `delivery_date`, `shipping_method`, `shipping_cost`, `tracking_number`, `status`: Shipping details.
   - Constraints: Foreign keys `order_id` references `Orders(order_id)`.

9. **Product_Inventory**: Stores inventory information for products.
   - `inventory_id`: Primary key.
   - `product_id`, `quantity`, `warehouse_location`, `supplier_id`: Inventory details.
   - Constraints: Foreign keys `product_id` references `Products(product_id)`, `supplier_id` references `Suppliers(supplier_id)`.

10. **Discounts**: Stores discount information for products.
    - `discount_id`: Primary key.
    - `product_id`, `discount_percentage`, `start_date`, `end_date`, `description`: Discount details.
    - Constraints: Foreign keys `product_id` references `Products(product_id)`.

11. **Wishlist**: Stores customer wishlist information.
    - `wishlist_id`: Primary key.
    - `customer_id`, `product_id`, `added_date`: Wishlist details.
    - Constraints: Foreign keys `customer_id` references `Customers(customer_id)`, `product_id` references `Products(product_id)`.

12. **Cart**: Stores customer cart information.
    - `cart_id`: Primary key.
    - `customer_id`, `product_id`, `quantity`, `added_date`: Cart details.
    - Constraints: Foreign keys `customer_id` references `Customers(customer_id)`, `product_id` references `Products(product_id)`.

13. **Payment_Methods**: Stores payment method information.
    - `payment_method_id`: Primary key.
    - `method_name`, `details`: Payment method details.

14. **Suppliers**: Stores supplier information.
    - `supplier_id`: Primary key.
    - `supplier_name`, `contact_name`, `address`, `city`, `postal_code`, `country`, `phone`, `email`: Supplier details.

15. **Returns**: Stores returned items information.
    - `return_id`: Primary key.
    - `order_id`, `product_id`, `return_date`, `quantity`, `reason`, `status`, `supplier_id`: Return details.
    - Constraints: Foreign keys `order_id` references `Orders(order_id)`, `product_id` references `Products(product_id)`, `supplier_id` references `Suppliers(supplier_id)`.

### Sample Data

Sample data has been added to the tables to simulate real-world scenarios. This includes 10 rows for each table with various details.

## Queries

Example queries for the business requirements include:
- Detail information about suppliers and the number of products they provide.
- 10 best-selling products with the total amount and their supplier.
- List of customers and their total purchases.
- List of returned items.

## Views

A view combining `Customers`, `Products`, and `Orders` can be created to simplify complex queries and provide a unified dataset for reporting purposes.

## Conclusion

This project demonstrates the creation of a comprehensive database schema for an online sports products shop. The schema covers various aspects of the business, including customer management, product inventory, orders, payments, shipping, reviews, and returns. The design ensures data integrity, supports efficient queries, and allows for future scalability.
