SELECT 
    USAirports.city, Flights.colYear, Flights.colMonth, AVG(Flights.ArrDelay) AS prom_arribades
FROM
    USAirlineFlights2.Flights
INNER JOIN
USAirports ON USAirports.IATA = Flights.Origin

GROUP BY Flights.Origin , Flights.colYear , Flights.colMonth
ORDER BY Flights.Origin , Flights.colYear , Flights.ColMonth ASC;