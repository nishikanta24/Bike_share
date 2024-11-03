
with cte as(
select * from bike_share_yr_1
union all
select * from bike_share_yr_0)

select a.dteday,a.season,a.yr,a.weekday,a.hr,
a.rider_type,a.riders,price,COGS,riders*price as revenue,
riders*price - COGS as profit
from cte as a
/*left join cte and cost table*/
left join cost_table as b on a.yr = b.yr



