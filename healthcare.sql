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