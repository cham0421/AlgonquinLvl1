-- Using INNER JOIN ..ON, write a query that displays the name of cities, the cities' population and cities' continent. Sort the result by continent, then by city population, then by city name. Note that the field called 'name' is present in the two tables, use a table alias to resolve the conflict.
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
-- Rewrite the previous query using WHERE/FROM.
-- Using INNER JOIN ..ON, write a query that displays, for the city of Ottawa, the name of the city and the head of state of its country.
-- Using INNER JOIN ..ON, write a query that displays the name of the city, the city population, the continent, and the country population of the city of Toronto.
-- Using INNER JOIN ..ON, write a query that answers the following question. What languages along with their percentage are spoken in the city of Ottawa?
-- Using WHERE/FROM, write a query that answers the following question. What official languages along with their percentage are spoken in the city of Ottawa?
-- Using INNER JOIN ..ON, write a query that reports the percentage of people speaking an official language in the city of Ottawa as well as the number of people speaking Polish in the city of Ottawa?
-- Using INNER JOIN ..ON and SUM, write a query that reports the total percentage of people speaking an official language or speaking Russian in the city of Ottawa ?
-- Using INNER JOIN ..ON the three tables, write a query that displays the name of the city, the city continent, the city head of state, the year of independence and the total number of people who speak Italian in the city of Toronto.
-- Rewrite the previous query using WHERE/FROM.
-- Using LEFT JOIN ..ON the three tables, write a query that displays the city continent, the country the city is in, the city name and the language spoken in that city
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
