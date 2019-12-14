-- View 1 (base)
CREATE or replace VIEW base AS
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
CREATE or replace view c_data as
SELECT 
    c.Continent,
    c.Region,
    c.name,
    ROUND(c.GNP / (SELECT 
                    COUNT(*)
                FROM
                    city
                WHERE
                    city.CountryCode = c.Code),
            2) AS average_gnp_per_city,
    ROUND(c.GNP / c.SurfaceArea, 2) AS average_gnp_per_squarekilometer
FROM
    country AS c
WHERE
    (SELECT 
            SUM(percentage)
        FROM
            countrylanguage
        WHERE
            CountryCode = c.code
                AND IsOfficial = TRUE) > 60
        AND (SELECT 
            MAX(city.Population / country.population) * country.GNP AS max_city
        FROM
            country
                LEFT JOIN
            city ON city.CountryCode = country.code
        WHERE
            country.Code = c.Code
        GROUP BY country.name) > (SELECT 
            MIN(country.GNP)
        FROM
            country)
ORDER BY average_gnp_per_squarekilometer DESC
LIMIT 10; 

-- 2 (Part 2)
create or replace view c_data as
    SELECT 
    c.Continent,
    c.Region,
    c.name,
    ROUND(c.GNP / (SELECT 
                    COUNT(*)
                FROM
                    city
                WHERE
                    city.CountryCode = c.Code),
            2) AS average_gnp_per_city,
    ROUND(c.GNP / c.SurfaceArea, 2) AS average_gnp_per_sq_km,
    c.GNP / c.population AS average_gnp_per_person
FROM
    country AS c
WHERE
    (SELECT 
            SUM(percentage)
        FROM
            countrylanguage
        WHERE
            CountryCode = c.code
                AND IsOfficial = TRUE) > 60
        AND (SELECT 
            MAX(city.Population / country.population) * country.GNP AS max_city
        FROM
            country
                LEFT JOIN
            city ON city.CountryCode = country.code
        WHERE
            country.Code = c.Code
        GROUP BY country.name) > (SELECT 
            MIN(country.GNP)
        FROM
            country)
ORDER BY average_gnp_per_person DESC
LIMIT 10; 

-- 2 (Part 3)
create or replace view c_data as
    SELECT 
    c.Continent,
    c.Region,
    c.name,
    ROUND(c.GNP / (SELECT 
                    COUNT(*)
                FROM
                    city
                WHERE
                    city.CountryCode = c.Code),
            2) AS average_gnp_per_city,
    ROUND(c.GNP / c.SurfaceArea, 2) AS average_gnp_per_sq_km,
    c.GNP / c.population AS average_gnp_per_person,
    (select count(*) from countrylanguage where countrylanguage.CountryCode = c.Code) as number_languages
FROM
    country AS c
WHERE
    (SELECT 
            SUM(percentage)
        FROM
            countrylanguage
        WHERE
            CountryCode = c.code
                AND IsOfficial = TRUE) > 60
        AND (SELECT 
            MAX(city.Population / country.population) * country.GNP AS max_city
        FROM
            country
                LEFT JOIN
            city ON city.CountryCode = country.code
        WHERE
            country.Code = c.Code
        GROUP BY country.name) > (SELECT 
            MIN(country.GNP)
        FROM
            country)
ORDER BY average_gnp_per_person DESC
LIMIT 10; 

SELECT * FROM world.c_data;