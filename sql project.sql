select * from hotel_revenue_historical_2018;
alter table hotel_revenue_historical_2018 rename revenue_2018;
alter table hotel_revenue_historical_2019 rename revenue_2019;
alter table hotel_revenue_historical_2020 rename revenue_2020;
alter table hotel_revenue_historical_marketsegment rename marketsegment;
alter table hotel_revenue_historical_mealcost rename mealcost;

with hotels as (
Select * from revenue_2018
union
select * from revenue_2019
union
select * from revenue_2020)
select * from hotels
left join marketsegment
on hotels.market_segment =marketsegment.market_segment
left join mealcost
on mealcost.meal = hotels.meal;











