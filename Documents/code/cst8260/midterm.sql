-- 1. Calculate the number of British cities stored in the table (code GBR)
SELECT 
    COUNT(*)
FROM
    city
WHERE
    CountryCode = 'GBR'
LIMIT 9999;

-- 2. Calculate the average population of the cities of China (code CHN)
SELECT 
    AVG(Population)
FROM
    city
WHERE
    countrycode = 'CHN'
LIMIT 9999;

-- 3. Create the following query:
-- Select all available data matching the constraints below
-- Select data from all countries except those in Europe and Africa
-- Sort the output by continent and then by name
SELECT 
    *
FROM
    country
WHERE
    Continent NOT IN ('Europe' , 'Africa')
ORDER BY Continent , name
LIMIT 9999;

-- 4. Create the following query:
-- Select all data for all countries whose IndepYear field (column) is not defined
-- Only return countries whose names contain the letter 'a'
-- Only return countries whose names have at least 5 characters
-- Sort the result by the country name
-- Return only 20 countries, omitting the first 10 countries in the list
SELECT 
    *
FROM
    country
WHERE
    IndepYear IS NULL
        AND (name LIKE '%_____%' AND name LIKE '%a%')
ORDER BY name
LIMIT 10 , 20;

-- 5. Create the following report:
-- Display the district, the country code and the following aggregations:
-- the total population of the cities in each district
-- the average population of the cities in each district
-- the maximum population of the cities in each district
-- the minimum population of the cities in each district
-- the population difference between the most populated and least populated city in each district
-- Select only the districts the contain the letter 'c' in their name
-- Limit the result set to the top 50 most populated districts
SELECT 
    district,
    countryCode,
    SUM(population) AS 'total_population',
    AVG(population) AS 'average_population',
    MAX(population) AS 'max_population',
    MIN(population) AS 'min_population',
    MAX(population) - MIN(population) AS 'population_difference'
FROM
    city
WHERE
    name LIKE '%c%'
GROUP BY CountryCode , district
ORDER BY max_population DESC
LIMIT 50;

-- 6. Please run the following query and note the errors it generates. Fix the query and submit it once it runs with no errors.
-- SELECT CountryCode
-- COUNT* AS Total Population
-- FROM city WHERE Population. > 50000 AND Name LIKE '%c%'
-- ORDER BY Population DESCND LIMIT 5,10,1000;

SELECT 
    CountryCode, COUNT(*) AS 'Total Population'
FROM
    city
WHERE
    Population > 50000 AND Name LIKE '%c%'
GROUP BY countrycode
ORDER BY Population DESC
LIMIT 5 , 10;

-- 7. Create the following report:
-- Displays the CountryCode of a country along with the number of cities in that country and the total population of its cities
-- Returns the population of the city with the most inhabitants
-- Returns the population of the city with the least inhabitants
-- Returns only countries that have at least 50 cities
-- Sort the result by the most populated cities in ascending order
SELECT 
    countrycode,
    COUNT(*) AS 'num_cities',
    SUM(population) AS 'total_population',
    MAX(population) AS 'max_population',
    MIN(population) AS 'min_population'
FROM
    city
GROUP BY CountryCode
HAVING num_cities >= 50
ORDER BY max_population
LIMIT 9999;

-- 8. Create the following report:
-- Select the continent name, the total population, and the average life expectancy
-- Return only countries that are in Europe, North America and Africa
-- Return only countries that have a life expectancy of more than 60 years
-- Exclude countries that have no data for life expectancy
-- Return only continents that have an average life expectancy of at least 50 years
-- Return only continents that have a maximum life expectancy in one of their countries of at least 70 years
-- Sort the result by life expectancy*
SELECT 
    Continent,
    SUM(population) AS 'total_population',
    AVG(LifeExpectancy) AS 'average_life_expectancy'
FROM
    country
WHERE
    Continent IN ('Africa' , 'North America', 'Africa')
        AND LifeExpectancy > 60
        AND LifeExpectancy IS NOT NULL
GROUP BY Continent
HAVING average_life_expectancy >= 50
    AND MAX(LifeExpectancy) >= 70
ORDER BY total_population
LIMIT 9999;
-- You cant orderby life expectancy because you can only order by an agrigate of the the data or a column that has been placed in the group by clause

SELECT 
    Continent,
    AVG(IndepYear),
    MIN(IndepYear) AS 'Minimum_Country_Independence',
    MAX(IndepYear) AS 'Maximum_Country_Independence'
FROM
    country
WHERE
    ((IndepYear > 1700 AND IndepYear < 1900)
        OR IndepYear > 1918)
        AND IndepYear IS NOT NULL
        AND Population >= 1000000
        AND LifeExpectancy >= 55
        AND Continent IN ('North America' , 'Africa', 'Asia')
        AND Continent NOT IN ('Europe')
GROUP BY Continent
ORDER BY Minimum_Country_Independence
LIMIT 9999;

-- 10. Please run the following query and note the errors it generates. Fix the query and submit it once it runs with no errors.
-- SELECT Continent, AVG(Indepyear AS Avg_Indep_Year), MAX (Population),
-- FROM country
-- ORDER BY MAX(Population) AND Continent HAVING MIN(Population) > 10000 WHERE 1 LIMIT 10;
SELECT 
    Continent, AVG(Indepyear) AS Avg_Indep_Year, MAX(Population)
FROM
    country
GROUP BY Continent
HAVING MIN(Population) > 10000
ORDER BY MAX(Population) , Continent
LIMIT 10;
