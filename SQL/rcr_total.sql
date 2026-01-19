CREATE TABLE rcr_total AS

SELECT
	status,
	count(*)
	
FROM raw_request_dataset
GROUP BY status;