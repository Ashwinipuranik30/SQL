/* Write your T-SQL query statement below */
Select id, movie , description , rating 
    FROM 
        Cinema 
    WHERE 
        id%2<>0   AND description NOT LIKE '%boring%' 
    ORDER BY 
        rating DESC;