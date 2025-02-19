-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT City.Name 
FROM City 
JOIN Country  ON CITY.CountryCode=COUNTRY.Code
WHERE Country.continent="AFRICA";