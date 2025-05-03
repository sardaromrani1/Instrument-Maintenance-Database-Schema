-- C. Maintenance Activity Analysis

-- 16. Maintenance Activities Performed by Technician
-- Tracks maintenance activities by technician, which can be helpful for performance evaluation an resource allocation.

SELECT performed_by, COUNT(*) AS activity_count
FROM maintenance_records
GROUP BY performed_by
ORDER BY activity_count DESC;