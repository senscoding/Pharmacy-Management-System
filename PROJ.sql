CREATE DATABASE PROJ;
USE PROJ;
CREATE TABLE Medicine (
    med_id INT PRIMARY KEY,
    name VARCHAR(100),
    manufacturer VARCHAR(100),
    price_per_unit DECIMAL(10,2),
    expiry_date DATE,
    stock_quantity INT
);
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    bill_date DATE,
    total_amount DECIMAL(10,2)
);
CREATE TABLE Prescription (
    presc_id INT PRIMARY KEY,
    name VARCHAR(100),
    quantity INT
);
SHOW TABLES;
INSERT INTO Medicine (med_id, name, manufacturer, price_per_unit, expiry_date, stock_quantity) VALUES
(1, 'Paracetamol', 'Cipla', 12.50, '2025-12-31', 100),
(2, 'Amoxicillin', 'Sun Pharma', 20.00, '2026-03-15', 80),
(3, 'Ibuprofen', 'Zydus', 15.75, '2025-11-20', 60),
(4, 'Cetirizine', 'Dr Reddy', 10.00, '2026-06-10', 50),
(5, 'Azithromycin', 'Glenmark', 25.00, '2025-08-01', 70),
(6, 'Metformin', 'Cipla', 5.00, '2027-01-01', 120),
(7, 'Aspirin', 'Bayer', 8.50, '2025-10-10', 90),
(8, 'Pantoprazole', 'Abbott', 18.00, '2026-02-14', 110),
(9, 'Dolo 650', 'Micro Labs', 14.00, '2025-09-30', 130),
(10, 'Crocin', 'GlaxoSmithKline', 11.25, '2025-07-20', 75);
INSERT INTO Billing (bill_id, bill_date, total_amount) VALUES
(101, '2025-06-01', 125.00),
(102, '2025-06-02', 210.50),
(103, '2025-06-03', 150.75),
(104, '2025-06-03', 85.00),
(105, '2025-06-04', 98.50),
(106, '2025-06-05', 175.00),
(107, '2025-06-05', 250.25),
(108, '2025-06-06', 190.00),
(109, '2025-06-06', 60.00),
(110, '2025-06-07', 143.50);
INSERT INTO Prescription (presc_id, name, quantity) VALUES
(201, 'Paracetamol', 2),
(202, 'Ibuprofen', 1),
(203, 'Dolo 650', 3),
(204, 'Amoxicillin', 2),
(205, 'Crocin', 1),
(206, 'Pantoprazole', 2),
(207, 'Cetirizine', 1),
(208, 'Aspirin', 2),
(209, 'Metformin', 4),
(210, 'Azithromycin', 1);
SELECT * FROM Medicine;
SHOW TABLES;
DESCRIBE Medicine;
DESCRIBE Billing;
DESCRIBE Prescription;
DESCRIBE Medicine;
DESCRIBE Billing;
DESCRIBE Prescription;
SELECT * FROM Prescription;
SELECT * FROM Medicine LIMIT 5;
SELECT * FROM Medicine WHERE name LIKE '%para%';
SELECT * FROM Medicine WHERE stock_quantity < 70;
SELECT * FROM Medicine ORDER BY expiry_date ASC;
SELECT SUM(stock_quantity) FROM Medicine;
SELECT COUNT(*) FROM Medicine;
