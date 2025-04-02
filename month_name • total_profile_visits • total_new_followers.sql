SELECT 
    MONTHNAME(date) AS month_name,
    SUM(profile_visits) AS total_profile_visits,
    SUM(new_followers) AS total_new_followers
FROM
    fact_account
GROUP BY MONTHNAME(date)
ORDER BY MONTHNAME(date);
