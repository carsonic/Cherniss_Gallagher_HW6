-- Question 1
SELECT origin AS airport, 
       AVG(temp) AS mean_temperature
FROM flights.main.weather
GROUP BY origin

-- Question 2
SELECT origin AS airport,
       COUNT(*) / COUNT(DISTINCT day) AS avg_flights_per_day
FROM flights.main.flights
WHERE month = 1
GROUP BY origin
ORDER BY avg_flights_per_day DESC;

-- Question 3
SELECT origin AS airport,
       dest AS top_destination,
       flight_count
FROM (
    SELECT origin, 
           dest, 
           COUNT(*) AS flights_count
    FROM flights.main.flights
    GROUP BY origin, dest
) AS flight_counts
WHERE flight_count = 

-- This code is still in progress, but I wanted to save my work here.
