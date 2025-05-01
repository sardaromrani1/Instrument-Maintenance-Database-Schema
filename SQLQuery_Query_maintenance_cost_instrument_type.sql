-- Analyze maintenance costs per instrument type


SELECT i.instrument_type, SUM(mr.maintenance_cost) AS total_maintenance_cost
FROM instruments i JOIN maintenance_records mr ON i.instrument_id = mr.instrument_id
GROUP BY i.instrument_type
ORDER BY total_maintenance_cost DESC;