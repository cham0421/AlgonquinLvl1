SELECT 
    city.name, city.district, city.population, country.Code, country.name, country.Continent, country.Region, country.GNP, country.SurfaceArea
FROM
    city
        LEFT JOIN
    country ON city.CountryCode = country.code
LIMIT 8999; 