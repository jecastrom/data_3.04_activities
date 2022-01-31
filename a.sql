SELECT
    *,
    row_number() over (
        ORDER BY
            amount DESC
    ) AS `row`
FROM
    loan;