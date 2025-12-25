CREATE TABLE `cyclistic-482200.cyclistic_data.trips_cleaned` AS

SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  member_casual,
  start_station_name,
  end_station_name,

  -- 1. CALCULAR DURACIÓN (En minutos)
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS duration_minutes,

  -- 2. CALCULAR DÍA DE LA SEMANA (Para ver si usan la bici el finde o lunes)
  FORMAT_DATE('%A', started_at) AS day_of_week,

  -- 3. CALCULAR MES (Para ver estacionalidad)
  FORMAT_DATE('%B', started_at) AS month_name

FROM `cyclistic-482200.cyclistic_data.trips_year`

WHERE 
  -- 4. FILTROS DE LIMPIEZA
  start_station_name IS NOT NULL -- Elimina estaciones sin nombre
  AND end_station_name IS NOT NULL 
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 1 -- Elimina viajes menores a 1 min (errores/intentos fallidos)
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) < 1440; -- (Opcional) Elimina viajes de más de 24 horas (suelen ser robos o bicis no devueltas)