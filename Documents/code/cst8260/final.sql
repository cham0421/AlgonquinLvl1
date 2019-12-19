-- 1
SELECT 
    code, name, LifeExpectancy
FROM
    country
WHERE
    LifeExpectancy > (SELECT 
            AVG(LifeExpectancy)
        FROM
            country)
ORDER BY LifeExpectancy DESC
LIMIT 10; 

-- 2 
SELECT 
    flights.departure,
    flights.arrival,
    flights.flightnum,
    flights.airline,
    flights.duration,
    flights.day_op,
    airports.name as departure_airport,
    countries.name as departure_country
FROM
    flights
        INNER JOIN
    airports ON flights.departure = airports.code
        INNER JOIN
    countries ON airports.country = countries.code
WHERE
    day_op LIKE '%2%' AND duration >= 500
ORDER BY flights.duration DESC;

-- 3
SELECT 
    flights.airline,
    aircrafts.name,
    COUNT(*) AS total_flights_serviced
FROM
    flights
        INNER JOIN
    aircrafts ON flights.aircraft = aircrafts.code
GROUP BY flights.airline , aircrafts.name
HAVING total_flights_serviced >= 10
ORDER BY flights.airline , total_flights_serviced DESC;

-- 4
SELECT 
    airlines.name as airline_name, COUNT(*) as total_flights_serviced
FROM
    flights
        INNER JOIN
    airlines ON flights.airline = airlines.code
WHERE
    airlines.country != 'gb'
GROUP BY airline_name order by total_flights_serviced desc;

-- 5
CREATE VIEW q5_view_040969723 AS
    SELECT 
        airlines.name AS airline_name,
        AVG(flights.duration) AS avg_flight_duration
    FROM
        flights
            INNER JOIN
        airlines ON flights.airline = airlines.code
    GROUP BY airlines.name
    ORDER BY avg_flight_duration DESC;

-- 6
SELECT 
    flights.*, aircrafts.name
FROM
    flights
        LEFT JOIN
    aircrafts ON flights.aircraft = aircrafts.code;

-- Part 2 

SELECT 
    f.*,
    (SELECT 
            aircrafts.name
        FROM
            aircrafts
        WHERE
            aircrafts.code = f.aircraft) AS aircraft_name
FROM
    flights AS f
