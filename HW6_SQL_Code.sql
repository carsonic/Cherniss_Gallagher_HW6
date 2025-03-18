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
           COUNT(*) AS flight_count
    FROM flights.main.flights
    GROUP BY origin, dest
) AS flight_counts
WHERE flight_count = (
       SELECT MAX(count)
       FROM (
        SELECT COUNT(*) AS count
        FROM flights.main.flights AS sub_flights
        WHERE sub_flights.origin = flight_counts.origin
        GROUP BY sub_flights.dest
    ) AS max_counts
)
ORDER BY airport;
/*
Pretty sure there has to be a simpler way of doing this. 
This is very convoluted, but at least it actually works. 
Please let me know if you can improve this at all I don't think it looks very nice.
*/

