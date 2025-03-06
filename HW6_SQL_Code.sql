SELECT origin, AVG(temp) AS mean_temperature
FROM flights.main.weather
GROUP BY origin

