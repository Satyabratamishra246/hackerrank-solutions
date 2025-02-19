-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT Country.continent, FLOOR(AVG(City.population)) 
FROM Country 
JOIN City ON Country.code=City.Countrycode
GROUP BY Country.continent;