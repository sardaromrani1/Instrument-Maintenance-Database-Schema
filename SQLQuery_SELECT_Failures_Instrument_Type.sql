-- B. Failure Analysis

-- 8. Failures by Instrument Type
-- Shows which instrument types are failing most frequently

SELECT i.instrument_type, COUNT(*) AS failure_count
FROM failures f
JOIN instruments i
ON f.instrument_id = i.instrument_id
GROUP BY instrument_type
ORDER BY failure_count DESC;