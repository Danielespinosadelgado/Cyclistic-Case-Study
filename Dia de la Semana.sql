SELECT 
  day_of_week,
  member_casual,
  COUNT(ride_id) AS total_rides
FROM `cyclistic-482200.cyclistic_data.trips_cleaned`
GROUP BY day_of_week, member_casual
ORDER BY member_casual, total_rides DESC;