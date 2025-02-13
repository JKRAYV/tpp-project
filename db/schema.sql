-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(50) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(50) REFERENCES Customers(customer_id),
    status VARCHAR(50) CHECK (status IN ('Shipped', 'Cancelled', 'Pending', 'Delivered')),
    fulfilment_method VARCHAR(50) CHECK (fulfilment_method IN ('Amazon', 'Merchant')),
    sales_channel VARCHAR(50) REFERENCES Sales_Channels(channel_name),
    ship_service_level VARCHAR(50),
    currency VARCHAR(10) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL
);

-- Order_Items Table
CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id VARCHAR(50) REFERENCES Orders(order_id) ON DELETE CASCADE,
    product_id VARCHAR(50) REFERENCES Products(product_id),
    sku VARCHAR(50),
    quantity INT CHECK (quantity > 0),
    item_price DECIMAL(10,2) NOT NULL,
    b2b BOOLEAN DEFAULT FALSE
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(100) NOT NULL,
    style VARCHAR(100),
    size VARCHAR(50),
    sku VARCHAR(50) UNIQUE NOT NULL,
    asin VARCHAR(50) UNIQUE,
    label_count INT
);

-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(255),
    customer_email VARCHAR(255) UNIQUE,
    country VARCHAR(50),
    region VARCHAR(50)
);

-- Shipping Table
CREATE TABLE Shipping (
    shipping_id SERIAL PRIMARY KEY,
    order_id VARCHAR(50) REFERENCES Orders(order_id) ON DELETE CASCADE,
    courier_status VARCHAR(100) CHECK (courier_status IN ('Shipped', 'Delivered', 'In Transit', 'Cancelled')),
    courier_name VARCHAR(100),
    estimated_delivery DATE
);

-- Sales Channels Table
CREATE TABLE Sales_Channels (
    channel_id SERIAL PRIMARY KEY,
    channel_name VARCHAR(100) UNIQUE NOT NULL CHECK (channel_name IN ('Amazon.in', 'Non-Amazon'))
);

-- Indexes for Performance
CREATE INDEX idx_order_date ON Orders(order_date);
CREATE INDEX idx_status ON Orders(status);
CREATE INDEX idx_order_id ON Order_Items(order_id);
CREATE INDEX idx_product_id ON Order_Items(product_id);
CREATE INDEX idx_category ON Products(category);
CREATE INDEX idx_customer_email ON Customers(customer_email);
CREATE INDEX idx_shipping_status ON Shipping(courier_status);