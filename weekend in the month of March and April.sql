SELECT 
    *
FROM
    fact_content
WHERE
    MONTH(date) IN (3 , 5)
        AND WEEKDAY(date) IN (5 , 6)

