-- C. Maintenance Activity Analysis

-- 12. Maintenance Activities by Instrument
-- Lists all maintenance activities for a specific instrument

SELECT mr.* 
FROM maintenance_records mr
JOIN instruments i
ON mr.instrument_id = i.instrument_id
WHERE i.instrument_id = 'PT-101';