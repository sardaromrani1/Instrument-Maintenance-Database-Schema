-- C. Maintenance Activity Analysis

-- 17. Parts Usage Analysis
-- Identifies the most frequently used parts.
-- Useful for optimizing inventory levels and negotiating better prices with suppliers. ( This query requires string splitting )

-- This is more complex and depends on how you store 'parts_used'
-- Assuming comma separated list

SELECT VALUE, COUNT(*) AS part_count
FROM maintenance_records
CROSS APPLY string_split(parts_used, ',')	-- SQL Server 2016+ only
WHERE parts_used IS NOT NULL
GROUP BY VALUE
ORDER BY part_count DESC;

-- Older SQL Server Version - Requires a different string split method

