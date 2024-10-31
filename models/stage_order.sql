{{ config (
    materialized="table"
    )
}}

with orders as (
    SELECT 
        ORDER_ID, CUSTOMER_ID, ITEM_ID, AMOUNT 
    FROM 
        MYDB.PUBLIC.DBT_ORDER_003
)

SELECT * FROM orders