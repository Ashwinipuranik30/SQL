/* Write your T-SQL query statement below */
Select product_name , year , price  From Sales S INNER JOIN Product P ON S.product_id=P.product_id;