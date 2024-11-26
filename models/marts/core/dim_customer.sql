
with customers as (
    SELECT * FROM {{ ref ('stage_customer')}}
)

SELECT 
    * 
FROM 
    customers


