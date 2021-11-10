with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount,
        created as created_at

    from datatonic-analytics-sandbox.jaffle_shop.stripe_payment

)
select * from payments