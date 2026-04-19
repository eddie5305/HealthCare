USE HealthcareDB;
GO

INSERT INTO Providers VALUES
(1, 'Dr. Tena', 'Cardiologist'),
(2, 'Dr. Ramos', 'Dermatologist'),
(3, 'Dr. Jones', 'Endocrinologists'),
(4, 'Dr. Peters', 'Neurologist'),
(5, 'Dr. James', 'Oncologists'),
(6, 'Dr. Martinez', 'General Practice');

INSERT INTO Claims VALUES
-- January
(109, 4, 'Patient A', '2026-01-03', 320.00, 'Approved'),
(110, 5, 'Patient B', '2026-01-07', 180.00, 'Approved'),
(111, 6, 'Patient C', '2026-01-11', 210.00, 'Denied'),

-- February
(112, 4, 'Patient D', '2026-02-05', 400.00, 'Approved'),
(113, 5, 'Patient E', '2026-02-10', 220.00, 'Approved'),
(114, 6, 'Patient F', '2026-02-14', 150.00, 'Pending'),

-- March
(115, 1, 'Patient G', '2026-03-02', 275.00, 'Approved'),
(116, 2, 'Patient H', '2026-03-06', 190.00, 'Approved'),
(117, 3, 'Patient I', '2026-03-09', 350.00, 'Approved'),

-- April
(118, 4, 'Patient J', '2026-04-01', 420.00, 'Approved'),
(119, 5, 'Patient K', '2026-04-08', 260.00, 'Denied'),
(120, 6, 'Patient L', '2026-04-15', 300.00, 'Approved'),

-- May
(121, 1, 'Patient M', '2026-05-03', 310.00, 'Approved'),
(122, 2, 'Patient N', '2026-05-10', 175.00, 'Pending'),
(123, 3, 'Patient O', '2026-05-18', 290.00, 'Approved'),

-- June
(124, 4, 'Patient P', '2026-06-05', 380.00, 'Approved'),
(125, 5, 'Patient Q', '2026-06-12', 240.00, 'Approved'),
(126, 6, 'Patient R', '2026-06-20', 200.00, 'Denied');