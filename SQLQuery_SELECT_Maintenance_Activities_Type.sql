-- C. Maintenance Activity Analysis

-- 13. Maintenance Activities by Type
-- Shows which maintenance types are most common for each instrument type.
-- Helps optimize maintenance schedules.

SELECT i.instrument_type, mr.maintenance_type, COUNT(*) AS activity_count
FROM maintenance_records mr JOIN instruments i
ON mr.instrument_id = i.instrument_id
GROUP BY i.instrument_type, mr.maintenance_type
ORDER BY activity_count DESC;