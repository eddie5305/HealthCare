-- Monthly report query
SELECT
    p.provider_name,
    YEAR(c.claim_date) AS claim_year,
    MONTH(c.claim_date) AS claim_month,
    COUNT(c.claim_id) AS total_claims,
    SUM(c.claim_amount) AS total_claim_amount,
    AVG(c.claim_amount) AS average_claim_amount
FROM Claims c
JOIN Providers p
    ON c.provider_id = p.provider_id
WHERE c.status = 'Approved'
GROUP BY
    p.provider_name,
    YEAR(c.claim_date),
    MONTH(c.claim_date)
ORDER BY
    p.provider_name,
    claim_year,
    claim_month;

-- Status breakdown
SELECT
    p.provider_name,
    c.status,
    COUNT(*) AS claim_count,
    SUM(c.claim_amount) AS total_amount
FROM Claims c
JOIN Providers p
    ON c.provider_id = p.provider_id
GROUP BY
    p.provider_name,
    c.status;