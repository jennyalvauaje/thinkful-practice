--from stations, return the avg lat/long for each city
--and count how many stations
select
	city,
	AVG(lat) lat,
	AVG(long) long,
	COUNT(*) station_count
from
	stations
group by 1 
			
--hottest day
--from weather, return city and max temperature
select 
	zip,
	MAX(MaxTemperatureF)
from 
	weather	


--shortest trip
--from trips, return min duration and trip id
select	
	trip_id,
	MIN(duration)
from 
	trips

--avg trip duration by end stations
--from trips, return avg duration & group by end stations
select
	end_station,
	AVG(duration)
from 
	trips
group by end_station