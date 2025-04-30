-- Analyze maintenance costs per instrument type

SELECT instrument_type, SUM(maintenance_cost) AS total_cost 
FROM maintenance_records
GROUP BY instrument_type;