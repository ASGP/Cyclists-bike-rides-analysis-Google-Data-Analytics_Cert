CREATE OR REPLACE TABLE bikes.trips_cleaned AS

WITH combined AS (
  SELECT * FROM bikes.trips_202505 UNION ALL
  SELECT * FROM bikes.trips_202506 UNION ALL
  SELECT * FROM bikes.trips_202507 UNION ALL
  SELECT * FROM bikes.trips_202508 UNION ALL
  SELECT * FROM bikes.trips_202509 UNION ALL
  SELECT * FROM bikes.trips_202510 UNION ALL
  SELECT * FROM bikes.trips_202511 UNION ALL
  SELECT * FROM bikes.trips_202512 UNION ALL
  SELECT * FROM bikes.trips_202601 UNION ALL
  SELECT * FROM bikes.trips_202602 UNION ALL
  SELECT * FROM bikes.trips_202603 UNION ALL
  SELECT * FROM bikes.trips_202604
),

deduped AS (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY started_at) AS dup
  FROM combined
)

SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
  FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,
  FORMAT_DATE('%B', DATE(started_at)) AS month,
  EXTRACT(HOUR FROM started_at) AS hour
FROM deduped
WHERE
  dup = 1
  AND ride_id IS NOT NULL
  AND started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND member_casual IS NOT NULL
  AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0



SELECT
  COUNT(DISTINCT ride_id) AS unique_rides,
  MIN(ride_length_seconds) AS min_duration,
  MAX(ride_length_seconds) AS max_duration
FROM bikes.trips_cleaned;


SELECT count(*)
FROM `bikes.trips_cleaned`


SELECT *
FROM bikes.trips_cleaned
LIMIT 10;


