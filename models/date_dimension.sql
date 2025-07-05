with cte as 
(
    select
    to_timestamp(starttime) as starttime, 
    date(to_timestamp(starttime) ) as start_date,
    dayname(to_timestamp(starttime) ) day_of_week

    from {{ source('orders', 'bikes_staging_shorter') }}
)

select * from cte