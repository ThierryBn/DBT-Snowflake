select * from
{{ source('orders', 'bikes_staging_shorter') }}
limit 20

