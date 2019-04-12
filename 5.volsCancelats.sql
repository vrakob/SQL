SELECT 
	Carriers.Description,
    Flights.UniqueCarrier,
    Flights.colYear,
    Flights.colMonth,
    SUM(Flights.Cancelled) AS totalCancelados
FROM
    Flights
INNER JOIN
	Carriers ON Carriers.CarrierCode = Flights.UniqueCarrier
GROUP BY Flights.UniqueCarrier , Flights.colYear , Flights.colMonth
ORDER BY totalCancelados DESC, Flights.colYear DESC