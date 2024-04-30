CREATE DATABASE day5;

-- テーブル作成
CREATE TABLE products (
    ProductCode VARCHAR(10) NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ProductCode)
);

-- データ挿入
INSERT INTO products (ProductCode, ProductName, UnitPrice) VALUES
('P1001', 'Product 1', 10.00),
('P1002', 'Product 2', 15.50),
('P1003', 'Product 3', 8.75),
('P1004', 'Product 4', 12.00),
('P1005', 'Product 5', 9.25);

-- トランザクション処理
START TRANSACTION;

INSERT INTO products (ProductCode, ProductName, UnitPrice) VALUES
('P1006', 'Product 6', 14.95);

ROLLBACK;

INSERT INTO products (ProductCode, ProductName, UnitPrice) VALUES
('P1006', 'Product 6', 14.95);

COMMIT;


