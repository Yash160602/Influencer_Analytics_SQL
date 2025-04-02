WITH LikesByCategory AS (
    SELECT 
        post_category, 
        SUM(likes) AS total_likes
    FROM fact_content
    WHERE MONTH(date) = 7  -- Filters for July
    GROUP BY post_category
)
SELECT * 
FROM LikesByCategory
ORDER BY total_likes DESC;
