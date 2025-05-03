-- B. Failure Analysis

-- 11. MTBF ( Mean Time Between Failures) - Requires More Complex SQL
-- Calculates the average time between failures for each instrument.
-- This is a key metric for assessing instrument reliability ( Requires more advanced SQL and understanding of date calculations.

-- A complex query. The following one is a simplified version

SELECT i.instrument_id, AVG(DATEDIFF(day, f2.failure_date, f1.failure_date)) AS mtbf
FROM instruments i
JOIN failures f1
ON i.instrument_id = f1.instrument_id
LEFT JOIN failures f2
ON i.instrument_id = f2.instrument_id
AND f1.failure_date > f2.failure_date
GROUP BY i.instrument_id;


-- Simplified version for instruments that have at least 2 failure records
SELECT i.instrument_id, DATEDIFF(day, MIN(f.failure_date), MAX(f.failure_date)) / (COUNT(f.failure_id) -1) AS mtbf
FROM instruments i
JOIN failures f
ON I.instrument_id = f.instrument_id
GROUP BY i.instrument_id
HAVING COUNT(f.failure_id) > 1;