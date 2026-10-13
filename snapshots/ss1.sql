{% snapshot Cust_ss1 %}
    {{
        config(
            target_schema='RAW_SC',
            target_database='ORACLE',
            unique_key='CUSTOMER_ID',
            strategy='check',
            check_cols=['PHONE','LAST_NAME'],
            hard_deletes='new_record'
        )
    }}

    select * from {{ source('GNIT', 'CUSTOMER') }}
 {% endsnapshot %}