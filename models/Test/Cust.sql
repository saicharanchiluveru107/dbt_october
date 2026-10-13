
select * from {{ source('CBIT', 'CUSTOMERS') }}
where AGE = 18