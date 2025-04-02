WITH RankedFollowers AS (
    SELECT 
        MONTHNAME(Date) AS month,
        Date,
        Follows AS new_followers,  
        RANK() OVER (PARTITION BY MONTH(Date), YEAR(Date) ORDER BY Follows DESC) AS rank_num
    FROM 
        fact_content
)
SELECT 
    month, 
    Date, 
    new_followers
FROM 
    RankedFollowers
WHERE 
    rank_num <= 3
ORDER BY 
    YEAR(Date), MONTH(Date), rank_num;
