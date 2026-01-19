CREATE TABLE rider_assignment_attempts AS
SELECT 
	rrd.ride_id,
	COUNT(dra.driver_id) AS assignment_attempts
	
FROM driver_ride_assignments AS dra
	RIGHT JOIN raw_request_dataset AS rrd
	USING(ride_id)
GROUP BY rrd.ride_id

ORDER BY assignment_attempts ASC;