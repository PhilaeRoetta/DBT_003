with items as (
    SELECT * FROM {{ ref ('stage_item')}}
)

SELECT 
    * 
FROM 
    items


