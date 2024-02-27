/* Write your T-SQL query statement below */
Select  unique_id , E.name From Employees E LEFT JOIN EmployeeUNI EU ON E.id=EU.id;