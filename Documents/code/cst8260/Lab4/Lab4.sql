-- Display everything that is known about the city with the ID of 31.
select * from city where id=31 limit 9999;

-- List the names of all cities in Holland (code of NLD).
select name,district from city where countrycode='NLD' AND district like "%Holland" limit 9999;

-- List the name and the code off all the cities with a population larger than 20000. Sort the output by Population in descending order.
select name,countrycode from city where population < 20000 order by population desc limit 9999;

-- List the names, the region, the year of Independence and the population of the countries that became independent in 1993 as well as the countries that became independent before 1991 (exclusively) and whose population is less than 22000000.
select name,region,indepyear,population from country where Population < 22000000 AND (indepyear=1993 OR IndepYear < 1991) limit 9999;

-- List the names and the IndepYear of all the countries that became independent between 1960 and 1980 (both exclusively). Sort the output by independence year.
select name, indepyear from country where ( indepyear>1960 AND IndepYear < 1980) order by IndepYear desc
-- List the names and the continent of all the countries that became independent between 1960 and 1980 (both exclusively). Sort the output by independence year.
-- Using OR, list the names and the continent of all the countries in Europe and North America. Sort the output by continent then by name.
-- Using NOT IN, list the names and the continent of all the countries not in Europe nor North America. Sort the output by continent then by name.
-- List the names and the continent of all the countries whose continent's name contains the string America. Sort the output by continent then by name.
-- Using LIKE, list the names and the continent of all the countries whose name contains exactly 5 characters. Sort the output by continent then by name. (hint: _)
-- Using LIKE, list the names and the continent of all the countries whose name contains exactly 5 characters and whose third character in the name is a y. Sort the output by continent then by name. (hint: _)
-- List the names, the continent and the IndepYear of all the countries whose IndepYear field is not defined. Sort the output by continent then by name.
-- List the names, the continent and the IndepYear of all the countries whose IndepYear field is defined. Sort the output by continent then by name.
-- Using LIMIT, extract the first 5 records of the previous query.