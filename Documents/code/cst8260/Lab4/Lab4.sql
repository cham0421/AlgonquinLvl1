-- Display everything that is known about the city with the ID of 31.
SELECT 
    *
FROM
    city
WHERE
    id = 31
LIMIT 9999;

-- List the names of all cities in Holland (code of NLD).
SELECT 
    name, district
FROM
    city
WHERE
    countrycode = 'NLD'
        AND district LIKE '%Holland'
LIMIT 9999;

-- List the name and the code off all the cities with a population larger than 20000. Sort the output by Population in descending order.
SELECT 
    name, countrycode
FROM
    city
WHERE
    population < 20000
ORDER BY population DESC
LIMIT 9999;

-- List the names, the region, the year of Independence and the population of the countries that became independent in 1993 as well as the countries that became independent before 1991 (exclusively) and whose population is less than 22000000.
SELECT 
    name, region, indepyear, population
FROM
    country
WHERE
    Population < 22000000
        AND (indepyear = 1993 OR IndepYear < 1991)
LIMIT 9999;

-- List the names and the IndepYear of all the countries that became independent between 1960 and 1980 (both exclusively). Sort the output by independence year.
SELECT 
    name, indepyear
FROM
    country
WHERE
    (indepyear > 1960 AND IndepYear < 1980)
ORDER BY IndepYear DESC
LIMIT 9999;

-- List the names and the continent of all the countries that became independent between 1960 and 1980 (both exclusively). Sort the output by independence year.
SELECT 
    name, Continent
FROM
    country
WHERE
    (indepyear > 1960 AND IndepYear < 1980)
ORDER BY IndepYear DESC
LIMIT 9999;

-- Using OR, list the names and the continent of all the countries in Europe and North America. Sort the output by continent then by name.
SELECT 
    name, Continent
FROM
    country
WHERE
    Continent = 'Europe'
        || Continent = 'North America'
ORDER BY Continent , name ASC
LIMIT 9999;

-- Using NOT IN, list the names and the continent of all the countries not in Europe nor North America. Sort the output by continent then by name.
SELECT 
    name, Continent
FROM
    country
WHERE
    Continent NOT IN ('Europe' , 'North America')
ORDER BY Continent , name ASC
LIMIT 9999;

-- List the names and the continent of all the countries whose continent's name contains the string America. Sort the output by continent then by name.
SELECT 
    name, Continent
FROM
    country
WHERE
    Continent LIKE ('%America%')
ORDER BY Continent , name ASC
LIMIT 9999;

-- Using LIKE, list the names and the continent of all the countries whose name contains exactly 5 characters. Sort the output by continent then by name. (hint: _)
SELECT 
    name, Continent
FROM
    country
WHERE
    name LIKE ('_____')
ORDER BY Continent , name ASC
LIMIT 9999;

-- Using LIKE, list the names and the continent of all the countries whose name contains exactly 5 characters and whose third character in the name is a y. Sort the output by continent then by name. (hint: _)
SELECT 
    name, Continent
FROM
    country
WHERE
    name LIKE ('__y__')
ORDER BY Continent , name ASC
LIMIT 9999;

-- List the names, the continent and the IndepYear of all the countries whose IndepYear field is not defined. Sort the output by continent then by name.
SELECT 
    name, Continent, IndepYear
FROM
    country
WHERE
    IndepYear IS NULL
ORDER BY Continent , name ASC
LIMIT 9999;

-- List the names, the continent and the IndepYear of all the countries whose IndepYear field is defined. Sort the output by continent then by name.
SELECT 
    name, Continent, IndepYear
FROM
    country
WHERE
    IndepYear IS NOT NULL
ORDER BY Continent , name ASC
LIMIT 9999;

-- Using LIMIT, extract the first 5 records of the previous query.
SELECT 
    name, Continent, IndepYear
FROM
    country
WHERE
    IndepYear IS NOT NULL
ORDER BY Continent , name ASC
LIMIT 5;
