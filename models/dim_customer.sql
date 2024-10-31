{{ config (
    materialized="table"
    )
}}

with orders as (
    SELECT * FROM {{ ref ('stage_order')}}
),

customers as (
    SELECT * FROM {{ ref ('stage_customer')}}
),

items as (
    SELECT * FROM {{ ref ('stage_item')}}
),

results as (
    SELECT 
        o.ORDER_ID, c.CUST_NAME, i.ITEM_NAME, o.AMOUNT 
    FROM 
        orders o 
    LEFT JOIN 
        customers c 
        ON c.CUSTOMER_ID = o.CUSTOMER_ID 
    LEFT JOIN 
        items i 
        ON o.ITEM_ID = i.ITEM_ID
)

SELECT 
    * 
FROM 
    results


