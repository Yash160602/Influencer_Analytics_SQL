SELECT 
    COUNT(DISTINCT (post_type)) AS uniuqe_post_types
FROM
    fact_content