-- INSERT statements for the instruments table

-- Example1: Pressure Transmitter
INSERT INTO instruments(
	instrument_id,
	instrument_type,
	manufacturer,
	model,
	serial_number, 
	location,
	installation_date,
	calibration_due_date,
	calibration_frequency,
	last_calibration_date,
	range_min,
	range_max,
	units,
	criticality
	) 
	VALUES(
	'PT-101',				-- instrument_id
	'Pressure Transmitter',	-- instrument_type
	'Rosemount',			-- manufacturer
	'30515',				-- model
	'1234567890',			-- serial_number
	'Unit 1 - Reactor Inlet',	-- location
	'2023-01-15',			-- installation_date
	'2024-01-15',			-- calibration_due_date
	12,						-- calibration_frequency (months)
	'2023-01-15',			-- last_calibration_date
	0,						-- range_min
	100,					-- range_max
	'PSI',					-- units
	'High'					-- criticality
	);


-- Example2: Flow Meter
INSERT INTO instruments(
	instrument_id,
	instrument_type,
	manufacturer,
	model,
	serial_number, 
	location,
	installation_date,
	calibration_due_date,
	calibration_frequency,
	last_calibration_date,
	range_min,
	range_max,
	units,
	criticality
	) 
	VALUES(
	'FM-202',				-- instrument_id
	'Flow Meter',			-- instrument_type
	'Endress+Hauser',		-- manufacturer
	'Promag W 400',			-- model
	'ABCDEFGHIJ',			-- serial_number
	'Unit 2 - Feed Line',	-- location
	'2022-05-20',			-- installation_date
	'2024-05-20',			-- calibration_due_date
	24,						-- calibration_frequency (months)
	'2022-05-20',			-- last_calibration_date
	0,						-- range_min
	500,					-- range_max
	'GPM',					-- units
	'Medium'				-- criticality
	);


-- Example3: Temperature Sensor
INSERT INTO instruments(
	instrument_id,
	instrument_type,
	manufacturer,
	model,
	serial_number, 
	location,
	installation_date,
	calibration_due_date,
	calibration_frequency,
	last_calibration_date,
	range_min,
	range_max,
	units,
	criticality
	) 
	VALUES(
	'TS-303',				-- instrument_id
	'Temperature Sensor',	-- instrument_type
	'Honeywell',			-- manufacturer
	'TC500',				-- model
	'ZYXWUTSRQ',			-- serial_number
	'Unit 3 - Outlet',		-- location
	'2023-09-10',			-- installation_date
	'2024-09-10',			-- calibration_due_date
	6,						-- calibration_frequency (months)
	'2023-09-10',			-- last_calibration_date
	50,						-- range_min
	200,					-- range_max
	'C',					-- units
	'Low'					-- criticality
	);