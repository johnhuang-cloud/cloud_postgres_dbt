{% set old_fct_orders_query %}
  select
    order_id as order_id,
    total_amount_paid,
    customer_id
  from test_ws.customer_orders_legecy

{% endset %}

{% set new_fct_orders_query %}
  select
    order_id,
    total_amount_paid,
    customer_id
  from {{ ref('fct_customer_orders') }}
{% endset %}

{{ audit_helper.compare_queries(
    a_query=old_fct_orders_query,
    b_query=new_fct_orders_query,
    primary_key="order_id"
) }}