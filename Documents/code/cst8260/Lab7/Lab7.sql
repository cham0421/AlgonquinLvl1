-- 1.Reverse engineer the world database so that you can use it to help with yourqueries. Take a screenshot.


-- 2.Using a UNION query, create a report that lists the name and the district of the cities in Canada (code CAN) 
-- and the Netherlands (code NLD). Note that this query can be written without using a UNION. 
-- The purpose of this question is to use UNION. (city table)
SELECT 
    city.name, city.District
FROM
    city
WHERE
    city.CountryCode = 'CAN' 
UNION ALL SELECT 
    city.name, city.District
FROM
    city
WHERE
    city.CountryCode = 'NLD';

-- 3.Using an INNER JOIN..ON, create a report that list the name of cities, the country and 
-- the indepyear of all countries whose indepYear field is not null. (city and country tables).
SELECT 
    city.name, country.name AS Country_Name, country.IndepYear
FROM
    city
        INNER JOIN
    country ON country.Code = city.CountryCode
WHERE
    country.IndepYear IS NOT NULL
LIMIT 99999;

-- 4.Rewrite the previous query using WHERE/FROM.
SELECT 
    city.name, country.name AS Country_Name, country.IndepYear
FROM
    city,
    country
WHERE
    country.Code = city.CountryCode
        AND country.IndepYear IS NOT NULL
LIMIT 99999;

-- 5.Using a subquery, list the name of the city, the countrycode, the population and 
-- the average city population of all cities with a population less than the average population. (city table)
SELECT 
    city.name, city.CountryCode, city.Population
FROM
    city
WHERE
    city.Population < (SELECT 
            AVG(city.Population)
        FROM
            city
        LIMIT 99999);

-- 6.Using INNER JOIN ..ON, write a query that displays, for the city of Toronto, the name of the city and
-- the head of state of its country. (city and country tables)
SELECT 
    city.name, country.HeadOfState
FROM
    city
        INNER JOIN
    country ON city.CountryCode = country.code
WHERE
    city.name = 'Toronto'
LIMIT 9999;

-- 7.Using INNER JOIN ..ON the three tables, write a query that displays the name of the city, the city continent, 
-- the city head of state, the year of independance and the percentage of people who speaks English in the city of Toronto. 
-- (city, countrylanguage and country tables)
SELECT 
    city.name,
    country.HeadOfState,
    country.IndepYear,
    countrylanguage.Language,
    countrylanguage.Percentage
FROM
    city
        INNER JOIN
    country ON city.CountryCode = country.code
        INNER JOIN
    countrylanguage ON city.CountryCode = countrylanguage.CountryCode
WHERE
    city.name = 'Toronto'
        AND countrylanguage.Language = 'English'
LIMIT 9999;

-- 8.Rewrite the previous query using WHERE/FROM.
SELECT 
    city.name,
    country.HeadOfState,
    country.IndepYear,
    countrylanguage.Language,
    countrylanguage.Percentage
FROM
    city,
    country,
    countrylanguage
WHERE
    city.CountryCode = country.code
        AND city.CountryCode = countrylanguage.CountryCode
        AND city.name = 'Toronto'
        AND countrylanguage.Language = 'English'
LIMIT 9999;

-- 9.Using a subquery, list the name of the city, the countrycode and the population of
-- the city with the largest population. (city table)
SELECT 
    city.name, city.CountryCode, city.Population
FROM
    city
WHERE
    city.Population = (SELECT 
            MAX(Population)
        FROM
            city)
LIMIT 9999;

-- 10.Using a subquery, list the name of the city, the countrycode and the population of all the cities 
-- whose population is larger than the average population. (city table)
SELECT 
    name, countrycode, population
FROM
    city
WHERE
    population > (SELECT 
            AVG(population)
        FROM
            city);

-- 11.What is wrong with the following subquery?
SELECT 
    name, countrycode, population, AVG(population)
FROM
    city
WHERE
    population > (SELECT 
            AVG(population)
        FROM
            city);
-- The outer query needs the have a group by for name countryCode and population

-- 12.Replace the first avg(population) with (SELECT AVG(population) from city)What happens? Why?
SELECT 
    name,
    countrycode,
    population,
    (SELECT 
            AVG(population)
        FROM
            city)
FROM
    city
WHERE
    population > (SELECT 
            AVG(population)
        FROM
            city);
-- It works as intended except that the subquery is ran for each row which is not really needed. 
-- The reason for this is becasue the subquery run independently and returns only the result.

-- 13.Using a subquery, list the name of the country, the continent and the life expectancy of all countries whose 
-- life expectancy is less thanthe average life expectancy. (country table)
SELECT 
    country.continent, country.name, country.LifeExpectancy
FROM
    country
WHERE
    country.LifeExpectancy < (SELECT 
            AVG(LifeExpectancy)
        FROM
            country)
LIMIT 9999;