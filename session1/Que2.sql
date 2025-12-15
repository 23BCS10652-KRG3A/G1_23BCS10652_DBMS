-- G1_23BCS10652_KHUSHI_KHEMKA_SESSION1
CREATE TABLE Customer (
    C_id INT PRIMARY KEY,
    C_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);
CREATE TABLE Orders (
    O_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    C_id INT,
    CONSTRAINT fk_customer
        FOREIGN KEY (C_id)
        REFERENCES Customer(C_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
INSERT INTO Customer VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com'),
(2, 'Anita Verma', 'anita@gmail.com'),
(3, 'Karan Singh', 'karan@gmail.com');
INSERT INTO Orders VALUES
(101, '2025-01-10', 2500.00, 1),
(102, '2025-01-12', 1800.50, 2),
(103, '2025-01-15', 3200.75, 1);
INSERT INTO Orders VALUES
(104, '2025-01-18', 4000.00, 5);
UPDATE Customer
SET C_id = 10
WHERE C_id = 1;
DELETE FROM Customer
WHERE C_id = 10;
SELECT * FROM Customer;
SELECT * FROM Orders;
