with cte as (
    select distinct start_station_id station_id, 
    start_station_name station_name, 
    start_station_latitude station_latitude,
    start_station_longitude start_station_longitude
    from {{ source('orders', 'bikes_staging_shorter') }}
)

select * from 
cte