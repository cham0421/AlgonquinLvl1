-- List the names of all the cities.
SELECT 
    name
FROM
    city
LIMIT 9999;

-- List the names of all the cities sorted in descending order.
SELECT 
    name
FROM
    city
ORDER BY name DESC
LIMIT 9999;

-- List the names of unique cities.
SELECT DISTINCT
    name
FROM
    city
LIMIT 9999;

-- List the names of all cities in Canada (code of CAN).
SELECT 
    name
FROM
    city
WHERE
    countrycode = 'CAN'
LIMIT 9999;

-- List the names of all cities in Ontario sorted in ascending order.
SELECT 
    name
FROM
    city
WHERE
    district = 'Ontario'
ORDER BY name ASC
LIMIT 9999;

-- Calculate the total population of Argentina's cities (code ARG).
SELECT 
    SUM(population)
FROM
    city
WHERE
    CountryCode = 'ARG'
LIMIT 9999;

-- Calculate the number of Belgian cities stored in the table (code BEL).
SELECT 
    COUNT(name)
FROM
    city
WHERE
    countryCode = 'BEL'
LIMIT 9999;

-- List unique districts in Brazil (code BRA).
SELECT DISTINCT
    district
FROM
    city
WHERE
    CountryCode = 'BRA'
LIMIT 9999;

-- Calculate the average population of the cities of Brazil (code BRA).
SELECT 
    AVG(Population)
FROM
    city
WHERE
    CountryCode = 'BRA'
LIMIT 9999;

-- Calculate the number of records stored in the city table.
SELECT 
    COUNT(*)
FROM
    city
LIMIT 9999;