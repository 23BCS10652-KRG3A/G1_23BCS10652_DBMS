-- G1_23BCS10652_KHUSHI_KHEMKA_SESSION1
CREATE DATABASE IF NOT EXISTS invoice_db;
USE invoice_db;

CREATE TABLE IF NOT EXISTS client_master (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS service_catalog (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100),
    hourly_rate DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS invoice_details (
    invoice_id INT PRIMARY KEY,
    invoice_date DATE,
    client_id INT,
    service_id INT,
    hours_worked INT,
    discount DECIMAL(10,2),
    FOREIGN KEY (client_id) REFERENCES client_master(client_id),
    FOREIGN KEY (service_id) REFERENCES service_catalog(service_id)
);

INSERT INTO client_master VALUES
(1, 'ABC Corp'),
(2, 'XYZ Ltd');

INSERT INTO service_catalog VALUES
(101, 'Consulting', 500),
(102, 'Development', 800);

INSERT INTO invoice_details VALUES
(1001, '2024-01-10', 1, 101, 5, 200),
(1002, '2024-01-12', 2, 102, 3, 100);

CREATE OR REPLACE VIEW vw_invoice_summary AS
SELECT
    i.invoice_id,
    i.invoice_date,
    c.client_name,
    s.service_name,
    (s.hourly_rate * i.hours_worked - i.discount) AS final_amount

FROM invoice_details i
JOIN client_master c ON i.client_id = c.client_id
JOIN service_catalog s ON i.service_id = s.service_id;

CREATE USER 'arjun_user'@'localhost' IDENTIFIED BY 'StrongPassword123!';
GRANT SELECT ON invoice_db.vw_invoice_summary TO 'arjun_user'@'localhost';
REVOKE SELECT ON invoice_db.vw_invoice_summary FROM 'arjun_user'@'localhost';
DROP USER 'arjun_user'@'localhost';
