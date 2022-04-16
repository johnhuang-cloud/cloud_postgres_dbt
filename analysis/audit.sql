{% set old_etl_relation=adapter.get_relation(
      database="cio-sea-team-lab-57d4fd",
      schema="test_ws",
      identifier="customer_orders_legecy"
) %}

{% set dbt_relation=ref('fct_customer_orders') %}

{{ audit_helper.compare_relations(
    a_relation=old_etl_relation,
    b_relation=dbt_relation,
    exclude_columns=["fods"],
    primary_key="order_id"
) }}