-- Identify instruments with high failure rates
SELECT instrument_id, COUNT(*) AS failure_count
FROM failures
GROUP BY instrument_id
ORDER BY failure_count DESC;