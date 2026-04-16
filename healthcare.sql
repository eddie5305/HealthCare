CREATE TABLE Providers (
    provider_id INT PRIMARY KEY,
    provider_name VARCHAR(100),
    specialty VARCHAR(100),
);

CREATE TABLE Claims(
    claim_id INT PRIMARY KEY,
    provider_id INT,
    patient_name VARCHAR(100),
    claim_date DATE,
    claim_amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (provider_id) REFERENCES Providers(provider_id)
);

INSERT INTO Providers VALUES
(1, 'Dr. Tena', 'Cardiologist'),
(2, 'Dr. Ramos', 'Dermatologist'),
(3, 'Dr. Jones', 'Endocrinologists'),
(4, 'Dr. Peters', 'Neurologist'),
(5, 'Dr. James', 'Oncologists');

INSERT INTO Claims VALUES
(101, 1, 'Alice Brown', '2026-01-05', 250.00, 'Approved'),
(102, 1, 'Bob White', '2026-01-10', 300.00, 'Approved'),
(103, 1, 'Carol Green', '2026-02-03', 200.00, 'Pending'),
(104, 2, 'David Black', '2026-01-08', 150.00, 'Approved'),
(105, 2, 'Eva Gray', '2026-02-15', 175.00, 'Approved'),
(106, 2, 'Frank Hall', '2026-02-20', 225.00, 'Denied'),
(107, 3, 'Grace King', '2026-01-25', 500.00, 'Approved'),
(108, 3, 'Henry Scott', '2026-02-12', 400.00, 'Approved');

SELECT * FROM Claims;