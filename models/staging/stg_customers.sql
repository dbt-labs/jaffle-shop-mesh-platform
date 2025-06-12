with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name,
        
        ---------- categorizations
        customer_type,
        customer_tier,
        age_group,
        
        ---------- metrics
        lifetime_value,
        
        ---------- booleans
        is_active

    from source

)

select * from renamed
