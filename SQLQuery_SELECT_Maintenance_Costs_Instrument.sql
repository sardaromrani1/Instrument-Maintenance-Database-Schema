-- C. Maintenance Activity Analysis

-- 14. Maintenance Costs by Instrument
-- Lists the total maintenance cost for each instrument

SELECT i.instrument_id, i.instrument_type, SUM(mr.maintenance_cost) AS total_cost
FROM maintenance_records mr
JOIN instruments i
ON mr.instrument_id = i.instrument_id
GROUP BY i.instrument_id, i.instrument_type
ORDER BY total_cost DESC;