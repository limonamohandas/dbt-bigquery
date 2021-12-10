with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers') }}

),
employees as (
    
    select * from {{ ref('employees') }}
)
select
    *, 
    employees.employee_id is not null as is_employee 
from customers
left join employees using (customer_id)