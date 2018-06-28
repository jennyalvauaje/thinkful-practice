--join station and trips
--return lat/long for start station for every trips
--include trip id
/*
select
    trips.trip_id,
    trips.start_station,
    stations.lat,
    stations.long
from
    trips 
join
    stations
on
    trips.start_station = stations.name
	

SELECT
    (CASE WHEN dockcount > 20 THEN 'large' ELSE 'small' END) station_size,
    COUNT(*) as station_count
FROM 
    stations
GROUP BY 1



--What are the three longest trips on rainy days?
--define rainy
--select trip date & duration
--join tables
with rainy as 
	(
	SELECT 
		date
	From 
		weather
	WHERE 
		events = 'Rain'
	GROUP BY 1
	)

SELECT
	trip_id,
	duration,
DATE
	(start_date) trip_date
FROM 
	trips
JOIN 
	rainy
on 
	rainy.date = trip_date
ORDER BY 
	duration DESC
LIMIT 3


--What's the length of the longest trip for each day it rains anywhere?
--define what 'rainy' is (with)
--define what a rainy trip is
--of the rainy trips, find the longest one
with rainy as 
	(
	SELECT 
		date
	From 
		weather
	WHERE 	
		events = 'Rain'
	GROUP BY 1
	),

	rain_trips as 
	(
	SELECT
		trip_id,
		duration,
	DATE
		(start_date) trip_date
	FROM 
		trips
	JOIN 
		rainy
	on 
		rainy.date = trip_date
	ORDER BY 
		duration DESC
	)

	SELECT 
		trip_date,
		max(duration)
	from 
		rain_trips
	GROUP BY 1

	
--Which station is full most often?
--define full & find find max count
--return station id, zip code

with full_station as
	(
	select
	from
	where 
*/

--Return a list of stations with a count of number of trips starting at that station but ordered by dock count.
--need to join stations (dockcount) and trips (start station)
--
	
select
    trips.start_station,
    stations.station_id,
	stations.dockcount
from
    trips 
join
    stations
on
    trips.start_station = stations.name
order by 
	stations.dockcount 

	