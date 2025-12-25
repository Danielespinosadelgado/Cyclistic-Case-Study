SELECT 
  member_casual,
  AVG(duration_minutes) AS avg_duration
FROM `cyclistic-482200.cyclistic_data.trips_cleaned`
GROUP BY member_casual;