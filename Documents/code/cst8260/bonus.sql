-- 1
SELECT 
    flights.departure,
    flights.arrival,
    flights.flightnum,
    flights.airline,
    flights.day_op,
    airports.name,
    countries.name
FROM
    flights
        INNER JOIN
    airports ON flights.departure = airports.code
        INNER JOIN
    countries ON airports.country = countries.code
ORDER BY flights.departure , flights.flightnum;

-- 2
SELECT 
    flights.departure,
    flights.arrival,
    flights.flightnum,
    flights.airline,
    flights.day_op,
    airports.name,
    countries.name
FROM
    flights
        INNER JOIN
    airports ON flights.arrival = airports.code
        INNER JOIN
    countries ON airports.country = countries.code
ORDER BY flights.departure , flights.flightnum;

-- 3
SELECT 
    arrival.departure,
    departure.country_name,
    arrival.arrival,
    arrival.country_name,
    arrival.flightnum,
    arrival.airline,
    arrival.day_op
FROM
    (SELECT 
        flights.departure,
            flights.arrival,
            flights.flightnum,
            flights.airline,
            flights.day_op,
            airports.name AS airpot_name,
            countries.name AS country_name
    FROM
        flights
    INNER JOIN airports ON flights.departure = airports.code
    INNER JOIN countries ON airports.country = countries.code) AS departure,
    (SELECT 
        flights.departure,
            flights.arrival,
            flights.flightnum,
            flights.airline,
            flights.day_op,
            airports.name AS airport_name,
            countries.name AS country_name
    FROM
        flights
    INNER JOIN airports ON flights.arrival = airports.code
    INNER JOIN countries ON airports.country = countries.code) AS arrival
WHERE
    arrival.departure = departure.departure
        AND arrival.arrival = departure.arrival
        AND arrival.flightnum = departure.flightnum
        AND arrival.airline = departure.airline
        AND arrival.day_op = departure.day_op
ORDER BY departure.departure , arrival.flightnum;

-- 4
SELECT 
    flights.airline,
    aircrafts.name,
    COUNT(*) AS total_flights_serviced
FROM
    flights
        INNER JOIN
    aircrafts ON flights.aircraft = aircrafts.code
GROUP BY flights.airline , aircrafts.name
ORDER BY flights.airline , total_flights_serviced DESC;

-- 5
SELECT 
    flights.airline,
    airlines.name,
    COUNT(*) AS total_flights_serviced
FROM
    flights
        INNER JOIN
    airlines ON flights.airline = airlines.code
GROUP BY flights.airline , airlines.name
ORDER BY total_flights_serviced DESC;
    
-- 6

-- 7
SELECT 
    countries.name, COUNT(*) AS total_flights
FROM
    flights
        INNER JOIN
    airports ON flights.arrival = airports.code
        INNER JOIN
    countries ON airports.country = countries.code
GROUP BY countries.name
ORDER BY total_flights DESC;

-- 8
-- 9