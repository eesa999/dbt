{{ config (
    materialized="table"
)}}



with test as (

    select
        id as customer_id,
        created_at,
        updated_at

    from dbt.orders

),
final as (
    select * from test
)
select * from final limit 10 