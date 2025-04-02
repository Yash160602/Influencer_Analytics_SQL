CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTotalSharesByWeek`(IN WeekNumber INT)
BEGIN
    SELECT 
        Post_type, 
        SUM(Shares) AS total_shares
    FROM 
        fact_content
    WHERE 
        WEEK(Date) = WeekNumber
    GROUP BY 
        Post_type
    ORDER BY 
        total_shares DESC;
END