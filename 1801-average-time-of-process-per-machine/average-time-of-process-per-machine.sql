/* Write your T-SQL query statement below */
WITH Process_Time AS (
Select machine_id,process_id ,
SUM(CASE 
WHEN activity_type='end' then timestamp ELSE 0 END)-SUM(
    CASE 
    WHEN activity_type='start' then timestamp ELSE 0 END)
AS Process_time
FROM Activity 
GROUP BY machine_id , process_id
),
AVG_table AS
(Select machine_id , 
AVG(process_time) AS processi_time
FROM Process_Time 
GROUP BY machine_id
)
Select machine_id , 
ROUND(processi_time,3) AS processing_time FROM AVG_table;