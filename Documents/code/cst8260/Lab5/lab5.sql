-- Create a report that displays the Code of a country along with the number of cities of that country. (GROUP BY, COUNT)
SELECT 
    countryCode, COUNT(*) AS 'number_of_cities'
FROM
    city
GROUP BY countryCode
LIMIT 9999;

-- Restrict the previous query to the countries with more than 200 cities. (GROUP BY, HAVING)
SELECT 
    countryCode, COUNT(*) AS 'number_of_cities'
FROM
    city
GROUP BY countryCode
HAVING number_of_cities > 200
ORDER BY Cities
LIMIT 9999;

-- Run the next query and explain what happens: 
SELECT 
    countrycode, COUNT(*) AS 'number_of_cities'
FROM
    city
GROUP BY countrycode
HAVING number_of_cities > 200;
-- You need to change where to having because you are grouping things.
-- Where statements go before the group by 

SELECT 
    countryCode,
    COUNT(district) AS 'number_of_cities',
    SUM(population) AS 'total_population'
FROM
    city
GROUP BY CountryCode
LIMIT 9999;

-- Create a report that displays the district, the code of a country along with the number of cities of that district. (GROUP BY on two fields, COUNT)
SELECT 
    countryCode,
    district,
    COUNT(*) AS 'number_of_cities_in_district'
FROM
    city
GROUP BY CountryCode , District
LIMIT 9999;

-- Create a report that displays the the code of a country along with the number of cities of that country, the total population of these cities and the average population (GROUP BY, COUNT, SUM, AVG)
SELECT 
    countryCode,
    COUNT(*) AS 'number_of_cities',
    SUM(population) AS 'total_population',
    AVG(population) AS 'average_population'
FROM
    city
GROUP BY countryCode
ORDER BY total_population DESC
LIMIT 9999;

-- Create a report that displays the district, the code of a country along with the number of cities of that district, the total population of these cities and the average population. Select only the district starting with 'a' (GROUP BY on two fields, COUNT, SUM, AVG, HAVING)
SELECT 
    district,
    countryCode,
    COUNT(*) AS 'number_of_cities',
    SUM(population) AS 'total_population',
    AVG(population) AS 'average_population'
FROM
    city
GROUP BY district , CountryCode
HAVING District LIKE 'a%'
LIMIT 9999;

-- Restrict the previous query to the districts with more than 10 cities. (HAVING, AND)
SELECT 
    district,
    countryCode,
    COUNT(*) AS 'number_of_cities',
    SUM(population) AS 'total_population',
    AVG(population) AS 'average_population'
FROM
    city
GROUP BY district , CountryCode
HAVING District LIKE 'a%'
    AND COUNT(District) > 10
LIMIT 9999;

-- Create a report that displays the number of cities in the table, the total population, the average population, the minimal population value and the maximal population value. (COUNT, SUM, AVG, MIN, MAX)
SELECT 
    COUNT(*) AS 'number_of_cities',
    SUM(population) AS 'total_population',
    AVG(population) AS 'average_population',
    MIN(population) AS 'lowest_populated_city',
    MAX(population) AS 'highest_populated_city'
FROM
    city
LIMIT 9999;