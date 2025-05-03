-- D. Time-Based Analysis

-- 18. Maintenance Costs Over Time
-- Shows trends in maintenance costs over time.
-- Useful for identifying seasonal patterns or the impact of process changes.

SELECT FORMAT(maintenance_date, 'yyy-MM') AS maintenance_month, SUM(maintenance_cost) AS total_cost
FROM maintenance_records
GROUP BY FORMAT(maintenance_date, 'yyy-MM')
ORDER BY maintenance_month