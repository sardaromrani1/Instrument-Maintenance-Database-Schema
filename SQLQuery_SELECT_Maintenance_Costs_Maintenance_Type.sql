-- C. Maintenance Activity Analysis

-- 15. Maintenance Costs by Maintenance Type
-- Shows which maintenance types are the most expensive.

SELECT maintenance_type, SUM(maintenance_cost) AS total_cost
FROM maintenance_records
GROUP BY maintenance_type
ORDER BY total_cost DESC;