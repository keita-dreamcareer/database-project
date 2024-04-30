CREATE DATABASE day5;

CREATE TABLE products (
    ProductCode VARCHAR(10) NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ProductCode)
);