-- INSERT statements for the maintenance_records table

-- Example 1: Calibration of Pressure Transmitter PT-101
INSERT INTO maintenance_records(
	instrument_id,
	maintenance_date,
	maintenance_type,
	maintenance_description,
	performed_by,
	maintenance_cost,
	parts_used,
	next_maintenance_date
	)
VALUES(
	'PT-101',					-- instrument_id (Foreign Key)
	'2024-02-15 09:00:00',		-- maintenance date
	'Calibration',				-- maintenance type
	'Performed calibration check and adjusted zero and span.',	-- maintenance description
	'Technician A',							-- performed_by
	150.00,									-- maintenance cost
	'Calibration Standard X',				-- parts_used
	'2025-02-15'							-- next_maintenance_date
);


-- Example 2: Repair of Flow Meter FM-202
INSERT INTO maintenance_records(
	instrument_id,
	maintenance_date,
	maintenance_type,
	maintenance_description,
	performed_by,
	maintenance_cost,
	parts_used,
	next_maintenance_date
	)
VALUES(
	'FM-202',					-- instrument_id (Foreign Key)
	'2024-02-18 13:30:00',		-- maintenance date
	'Repair',				-- maintenance type
	'Replaced faulty sensor wiring.',	-- maintenance description
	'Technician B',							-- performed_by
	275.50,									-- maintenance cost
	'Wiring Harness, Connector',				-- parts_used
	NULL			-- next_maintenance_date (Not Scheduled
);


-- Example 3: Preventative Maintenance of Temperature Sensor TS-303
INSERT INTO maintenance_records(
	instrument_id,
	maintenance_date,
	maintenance_type,
	maintenance_description,
	performed_by,
	maintenance_cost,
	parts_used,
	next_maintenance_date
	)
VALUES(
	'TS-303',					-- instrument_id (Foreign Key)
	'2024-02-21 11:15:00',		-- maintenance date
	'Preventative Maintenance',				-- maintenance type
	'Cleaned sensor and checked connection.',	-- maintenance description
	'Technician C',							-- performed_by
	75.00,									-- maintenance cost
	'Cleaning Solution',				-- parts_used
	'2024-08-21'							-- next_maintenance_date
);


-- Example 4: Showing GETDATE() and NULL
INSERT INTO maintenance_records(
	instrument_id,
	maintenance_date,
	maintenance_type,
	maintenance_description,
	performed_by,
	maintenance_cost,
	parts_used,
	next_maintenance_date
	)
VALUES(
	'TS-303',					-- instrument_id (Foreign Key)
	GETDATE(),		-- maintenance date current date time
	'Preventative Maintenance',				-- maintenance type
	'Cleaned sensor and checked connections.',	-- maintenance description
	'Technician C',							-- performed_by
	75.00,									-- maintenance cost
	NULL,				-- parts_used
	NULL							-- next_maintenance_date
);