-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to  4 decimal places.

SELECT CAST(MAX(LAT_N) AS DECIMAL(10,4) )
FROM STATION 
WHERE LAT_N<137.2345;