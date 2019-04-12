SELECT 
    Description, UniqueCarrier, AVG(ArrDelay) AS delayArribes
FROM
    USAirlineFlights2.Flights
        JOIN
    Carriers ON Carriers.CarrierCode = Flights.UniqueCarrier
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > '10.0000'
ORDER BY AVG(ArrDelay) DESC;