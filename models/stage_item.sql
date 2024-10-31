{{ config (
    materialized="table"
    )
}}

with items as (
    SELECT 
        ITEM_ID, ITEM_NAME 
    FROM 
        MYDB.PUBLIC.DBT_ITEM_003
)

select * from items