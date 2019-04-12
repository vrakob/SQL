/*SELECT tailNum, SUM(Distance) AS distanciaTotal FROM Flights WHERE tailNum IS NOT NULL GROUP BY TailNum ORDER BY distanciaTotal DESC;*/
SELECT 
    tailNum, SUM(Distance) AS distanciaTotal
FROM
    Flights
WHERE
    tailNum != ''
GROUP BY TailNum
ORDER BY distanciaTotal DESC;