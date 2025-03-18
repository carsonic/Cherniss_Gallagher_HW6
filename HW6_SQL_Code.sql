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
-- My question 3 code does not work upon reinspection, let me fix it and update with a real answer
