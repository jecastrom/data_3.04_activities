SELECT
    loan_id,
    account_id,
    format(amount, 2, 'de_DE') AS loan_amount,
    row_number() over (
        ORDER BY
            amount DESC
    ) AS `row`
FROM
    loan
LIMIT
    10;