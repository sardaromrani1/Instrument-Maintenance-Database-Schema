-- B. Failure Analysis

-- 10. Downtime Analysis
-- Shows which instrument types are contributing the most to downtime

SELECT i.instrument_type, SUM(f.downtime_hours) AS total_downtime
FROM failures f
JOIN instruments i
ON f.instrument_id = i.instrument_id
GROUP BY i.instrument_type
ORDER BY total_downtime DESC;