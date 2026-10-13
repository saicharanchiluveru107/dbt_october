
{% snapshot snap_customer %}
{{
    config(
      target_schema='SNAPSHOTS',
      unique_key='customer_id',
      strategy='timestamp',
      updated_at='updated_at'
    )
}}

SELECT * FROM {{ source('ins_raw','raw_customers') }}

{% endsnapshot %}