CREATE TABLE driver_assignment_each_ride AS
SELECT 
	rrd.ride_id,
	COUNT(dra.driver_id) AS driver_count
	
FROM driver_ride_assignments AS dra
	RIGHT JOIN raw_request_dataset AS rrd
	USING(ride_id)
GROUP BY rrd.ride_id

ORDER BY driver_count ASC;