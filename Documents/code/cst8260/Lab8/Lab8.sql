SELECT 
    city.name as cName, city.district, city.population, country.Code, country.name, country.Continent, country.Region, country.GNP, country.SurfaceArea
FROM
    city
        LEFT JOIN
    country ON city.CountryCode = country.code
LIMIT 8999; 

SELECT 
   c.Continent, c.Region, c.name, c.GNP/(select count(city.name) from city where city.CountryCode = c.Code ) as average_gnp_per_city,c.GNP/c.SurfaceArea as average_gnp_per_squarekilometer
FROM
    country as c
where (select sum(percentage) from countrylanguage where CountryCode = c.code and IsOfficial = true    ) > 60
LIMIT 8999; 


SELECT 
   c.Continent, c.Region, c.name, c.GNP/(select count(city.name) from city where city.CountryCode = c.Code ) as average_gnp_per_city,c.GNP/c.SurfaceArea as average_gnp_per_squarekilometer
FROM
    country as c
where (select sum(percentage) from countrylanguage where CountryCode = c.code and IsOfficial = true    ) > 60
LIMIT 8999; 