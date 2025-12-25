SELECT 
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  member_casual,
  COUNT(ride_id) AS total_rides
FROM `cyclistic-482200.cyclistic_data.trips_cleaned`
GROUP BY hour_of_day, member_casual
ORDER BY hour_of_day;