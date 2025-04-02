SELECT 
    post_type,
    MAX(impressions) AS highest_impressions,
    MIN(impressions) AS lowest_impressions
FROM
    fact_content
GROUP BY post_type
