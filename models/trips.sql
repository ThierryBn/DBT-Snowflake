with cte as(

    select 
    date(starttime) start_date, 
    date(stoptime) stop_date, 
    start_station_id, 
    end_station_id, 
    bikeid bike_id, 
    DATEDIFF(SECOND, to_timestamp(starttime), to_timestamp(stoptime)) AS trip_duration_seconds


    from {{ source('orders', 'bikes_staging_shorter') }}
)

select * from cte