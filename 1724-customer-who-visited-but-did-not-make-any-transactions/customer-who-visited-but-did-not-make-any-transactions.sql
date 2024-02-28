/* Write your T-SQL query statement below */
Select v.customer_id, count(v.customer_id) AS count_no_trans FROM Visits v LEFT JOIN Transactions t ON v.visit_id=t.visit_id   
Where transaction_id is NULL 
GROUP BY customer_id; 