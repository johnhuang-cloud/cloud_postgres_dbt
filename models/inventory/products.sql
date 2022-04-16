with products as  (
    select * from {{ source('inventory', 'products' )}}
),


final as (

    select
      *
    from products
)

select * from final
