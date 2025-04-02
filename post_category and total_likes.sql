 SELECT 
    post_category, SUM(likes) AS total_likes
FROM
    fact_content
WHERE
    MONTH(date) = 7
GROUP BY post_category
ORDER BY total_likes DESC