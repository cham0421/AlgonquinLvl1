-- View 1 (base)
CREATE VIEW base AS
    SELECT 
        city.name AS cName,
        city.district,
        city.population,
        country.Code,
        country.name,
        country.Continent,
        country.Region,
        country.GNP,
        country.SurfaceArea
    FROM
        city
            LEFT JOIN
        country ON city.CountryCode = country.code
    LIMIT 8999; 

-- 2 (Part 1)
SELECT 
    c.Continent,
    c.Region,
    c.name,
    c.GNP / (SELECT 
            COUNT(city.name)
        FROM
            city
        WHERE
            city.CountryCode = c.Code) AS average_gnp_per_city,
    c.GNP / c.SurfaceArea AS average_gnp_per_squarekilometer
FROM
    country AS c
WHERE
    (SELECT 
            SUM(percentage)
        FROM
            countrylanguage
        WHERE
            CountryCode = c.code
                AND IsOfficial = TRUE) > 60 and 
ORDER BY average_gnp_per_squarekilometer DESC
lIMIT 10; 
