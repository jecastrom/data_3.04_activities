SELECT
    loan_id,
    account_id,
    format(amount, 2, 'de_DE') AS loan_amount
FROM
    (
        SELECT
            *,
            row_number() over (
                ORDER BY
                    amount DESC
            ) AS `row`
        FROM
            loan
    ) t
WHERE
    `row` <= (
        SELECT
            count(*) * (0.1)
        FROM
            loan
    )
LIMIT
    5;