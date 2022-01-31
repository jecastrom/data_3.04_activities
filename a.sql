SELECT
    loan_id,
    account_id,
    format(amount, 2, 'de_DE') AS loan_amount,
    `status`
FROM
    loan
ORDER BY
    3 DESC
LIMIT
    10;