-- Using INNER JOIN ..ON, write a query that displays the name of cities, the cities' population and cities' continent. 
-- Sort the result by continent, then by city population, then by city name. 
-- Note that the field called 'name' is present in the two tables, use a table alias to resolve the conflict.
SELECT 
    city.name, city.Population, country.Continent
FROM
    city
        INNER JOIN
    country ON city.countryCode = country.code
ORDER BY country.Continent , city.population , city.name
LIMIT 99999;

-- Rewrite the previous query using WHERE/FROM.
SELECT 
    city.name, city.Population, country.Continent
FROM
    city,
    country
WHERE
    city.countryCode = country.code
ORDER BY country.Continent , city.population , city.name
LIMIT 99999;
    
-- Rewrite the query in question 1 to countries that became independent in 1960.
SELECT 
    city.name, city.Population, country.Continent
FROM
    city
        INNER JOIN
    country ON city.countryCode = country.code
WHERE
    country.IndepYear = 1960
ORDER BY country.Continent , city.population , city.name
LIMIT 99999;

-- Rewrite the previous query using WHERE/FROM.
SELECT 
    city.name, city.Population, country.Continent
FROM
    city,
    country
WHERE
    city.countryCode = country.code
        AND country.IndepYear = 1960
ORDER BY country.Continent , city.population , city.name
LIMIT 99999;

-- Using INNER JOIN ..ON, write a query that displays, for the city of Ottawa, the name of the city and the head of state of its country.
SELECT 
    city.name, country.HeadOfState
FROM
    city
        INNER JOIN
    country ON city.countryCode = country.code
WHERE
    city.name = 'Ottawa'
LIMIT 99999;

-- Using INNER JOIN ..ON, write a query that displays the name of the city, the city population, the continent, and the country population of the city of Toronto.
SELECT 
    city.name,
    city.Population,
    country.Continent,
    country.Population
FROM
    city
        INNER JOIN
    country ON city.countryCode = country.code
WHERE
    city.name = 'Toronto'
LIMIT 99999;

-- Using INNER JOIN ..ON, write a query that answers the following question. What languages along with their percentage are spoken in the city of Ottawa?
SELECT 
    countrylanguage.Language, countrylanguage.Percentage
FROM
    city
        INNER JOIN
    countrylanguage ON city.countryCode = countrylanguage.CountryCode
WHERE
    city.name = 'Ottawa'
LIMIT 99999;

-- Using WHERE/FROM, write a query that answers the following question. What official languages along with their percentage are spoken in the city of Ottawa?
SELECT 
    countrylanguage.Language, countrylanguage.Percentage
FROM
    city,
    countrylanguage
WHERE
    city.countryCode = countrylanguage.CountryCode
        AND city.name = 'Ottawa'
LIMIT 99999;

-- Using INNER JOIN ..ON, write a query that reports the percentage of people speaking an official language in the city of Ottawa 
-- as well as the number of people speaking Polish in the city of Ottawa?
SELECT 
    countrylanguage.Language,
    countrylanguage.Percentage,
    city.population * (countrylanguage.Percentage / 100) AS Total_Speakers
FROM
    city
        INNER JOIN
    countrylanguage ON city.countryCode = countrylanguage.CountryCode
WHERE
    city.name = 'Ottawa'
        AND (countrylanguage.Language = 'Polish'
        OR countrylanguage.IsOfficial = 'T')
LIMIT 99999;

-- Using INNER JOIN ..ON and SUM, write a query that reports the 
-- total percentage of people speaking an official language or speaking Italian in the city of Ottawa ?
SELECT 
    city.name, SUM(countrylanguage.Percentage)
FROM
    city
        INNER JOIN
    countrylanguage ON city.countryCode = countrylanguage.CountryCode
WHERE
    city.name = 'Ottawa'
        AND (countrylanguage.Language = 'Italian'
        OR countrylanguage.IsOfficial = 'T')
GROUP BY city.name
LIMIT 99999;

-- Using INNER JOIN ..ON the three tables, write a query that displays 
-- the name of the city, the city continent, the city head of state, the year of independence 
-- and the total number of people who speak Italian in the city of Toronto.
SELECT 
    city.name,
    country.Continent,
    country.HeadOfState,
    country.IndepYear,
    countrylanguage.Language,
    city.population * (countrylanguage.Percentage / 100) AS Total_Speakers
FROM
    city
        INNER JOIN
    countrylanguage ON city.countryCode = countrylanguage.CountryCode
        INNER JOIN
    country ON city.countryCode = country.Code
WHERE
    city.name = 'Toronto'
        AND countrylanguage.Language = 'Italian'
LIMIT 99999;

-- Rewrite the previous query using WHERE/FROM.
SELECT 
    city.name,
    country.Continent,
    country.HeadOfState,
    country.IndepYear,
    countrylanguage.Language,
    city.population * (countrylanguage.Percentage / 100) AS Total_Speakers
FROM
    city,
    country,
    countrylanguage
WHERE
    city.countryCode = countrylanguage.CountryCode
        AND city.countryCode = country.Code
        AND city.name = 'Toronto'
        AND countrylanguage.Language = 'Italian'
LIMIT 99999;

-- Using LEFT JOIN ..ON the three tables, write a query that displays the city continent, 
-- the country the city is in, the city name and the language spoken in that city
SELECT 
    country.Continent,
    country.name,
    city.name,
    countrylanguage.Language
FROM
    city
        LEFT JOIN
    country ON city.CountryCode = country.Code
        LEFT JOIN
    countrylanguage ON city.CountryCode = countrylanguage.CountryCode