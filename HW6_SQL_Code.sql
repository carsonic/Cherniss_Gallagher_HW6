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
SELECT DISTINCT ON (origin) origin AS airport, -- Had to google the "DISTINCT ON" thing, let me know if you know an easier way
       dest AS top_destination,
       COUNT(*) AS flight_count
FROM flights.main.flights
GROUP BY origin, dest
ORDER BY origin, flight_count;
