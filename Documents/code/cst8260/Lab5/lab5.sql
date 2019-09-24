-- Create a report that displays the Code of a country along with the number of cities of that country. (GROUP BY, COUNT)
select countryCode, count(countryCode) as "Cities" from city  group by countryCode limit 9999;

-- Restrict the previous query to the countries with more than 200 cities. (GROUP BY, HAVING)
select countryCode, count(countryCode) as "Cities" from city  group by countryCode  having count(countryCode) > 200 limit 9999;

-- Run the next query and explain what happens: 
SELECT countrycode, COUNT(*) FROM city GROUP BY countrycode having COUNT(*) > 200;
	-- You need to change where to having because you are grouping things. Having a filter after grouping uses unneccessary processing power

-- Create a report that displays the Code of a country along with the number of cities of that country and the total population of these cities. (GROUP BY, COUNT,SUM)
select countryCode, Count(district), sum(population) from city group by CountryCode limit 9999;

-- Create a report that displays the district, the code of a country along with the number of cities of that district. (GROUP BY on two fields, COUNT)
select district, countryCode, count(district) from city group by CountryCode, District limit 9999;
-- Create a report that displays the the code of a country along with the number of cities of that country, the total population of these cities and the average population (GROUP BY, COUNT, SUM, AVG)
-- Create a report that displays the district, the code of a country along with the number of cities of that district, the total population of these cities and the average population. Select only the district starting with 'a' (GROUP BY on two fields, COUNT, SUM, AVG, HAVING)
-- Restrict the previous query to the districts with more than 10 cities. (HAVING, AND)
-- Create a report that displays the number of cities in the table, the total population, the average population, the minimal population value and the maximal population value. (COUNT, SUM, AVG, MIN, MAX)