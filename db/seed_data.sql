-- Insert Customers
INSERT INTO Customers (customer_id, customer_name, customer_email, country, region)
VALUES 
('CUST123', 'John Doe', 'john.doe@email.com', 'USA', 'West'),
('CUST456', 'Jane Smith', 'jane.smith@email.com', 'UK', 'South');

-- Insert Products
INSERT INTO Products (product_id, category, style, size, sku, asin, label_count)
VALUES 
('PROD001', 'Set', 'Modern', 'M', 'SET389-KR-NP-S', 'B08XYZ1234', 2580),
('PROD002', 'Kurta', 'Traditional', 'L', 'KURTA123-XXL', 'B07ABC5678', 1500);

-- Insert Sales Channels
INSERT INTO Sales_Channels (channel_name)
VALUES ('Amazon.in'), ('Non-Amazon');

-- Insert Orders
INSERT INTO Orders (order_id, order_date, customer_id, status, fulfilment_method, sales_channel, ship_service_level, currency, total_amount)
VALUES 
('405-8078784-5731545', '2022-04-30', 'CUST123', 'Shipped', 'Amazon', 'Amazon.in', 'Standard', 'USD', 129.99),
('407-1069790-7240320', '2022-04-30', 'CUST456', 'Delivered', 'Merchant', 'Non-Amazon', 'Expedited', 'GBP', 89.99);

-- Insert Order Items
INSERT INTO Order_Items (order_id, product_id, sku, quantity, item_price, b2b)
VALUES 
('405-8078784-5731545', 'PROD001', 'SET389-KR-NP-S', 2, 64.99, FALSE),
('407-1069790-7240320', 'PROD002', 'KURTA123-XXL', 1, 89.99, TRUE);

-- Insert Shipping Data
INSERT INTO Shipping (order_id, courier_status, courier_name, estimated_delivery)
VALUES 
('405-8078784-5731545', 'Shipped', 'JNE3797', '2022-05-02'),
('407-1069790-7240320', 'Delivered', 'JNE3405', '2022-04-30');
