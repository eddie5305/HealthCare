CREATE OR ALTER PROCEDURE GetMonthlyProviderClaimsReport
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT
        p.provider_name,
        CONCAT(YEAR(c.claim_date), '-', RIGHT('0' + CAST(MONTH(c.claim_date) AS VARCHAR(2)), 2)) AS report_month,
        COUNT(c.claim_id) AS total_claims,
        SUM(c.claim_amount) AS total_claim_amount,
        AVG(c.claim_amount) AS average_claim_amount
    FROM Claims c
    JOIN Providers p
        ON c.provider_id = p.provider_id
    WHERE c.status = 'Approved'
      AND c.claim_date BETWEEN @StartDate AND @EndDate
    GROUP BY
        p.provider_name,
        YEAR(c.claim_date),
        MONTH(c.claim_date)
    ORDER BY
        p.provider_name,
        report_month;
END;