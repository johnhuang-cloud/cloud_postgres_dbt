with categories as  (
    select * from {{ source('inventory', 'categories' )}}
),


final as (

    select
      *
    from categories
)

select * from final