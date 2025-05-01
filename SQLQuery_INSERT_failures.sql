-- INSERT statements for the failures table

-- Example1: Failure of Pressure Transmitter PT-101
INSERT INTO failures(
	instrument_id,
	failure_date,
	failure_description,
	failure_cause,
	repair_details,
	downtime_hours,
	reported_by
	)
	VALUES(
	'PT-101',										--instrument_id (Foreign Key to instruments table)
	'2024-02-20 08:30:00',							-- failure date (YYYY-MM-DD HH:MM:SS)
	'Pressure reading erratic and unstable',		-- failure_description
	'Diaphragm rupture due to corrosion',			-- failure_cause
	'Replaced diaphragm and performed calibration',	-- repair_details
	4.5,											-- downtime_hours
	'John Smith'									-- reported_by
	);


-- Example2: Failure of Flow Meter FM-202
INSERT INTO failures(
	instrument_id,
	failure_date,
	failure_description,
	failure_cause,
	repair_details,
	downtime_hours,
	reported_by
	)
	VALUES(
	'FM-202',										--instrument_id (Foreign Key to instruments table)
	'2024-02-22 14:15:00',							-- failure date (YYYY-MM-DD HH:MM:SS)
	'No flow reading. Meter unresponsive.',	    	-- failure_description
	'Power supply failure to transmitter',			-- failure_cause
	'Replaced power supply unit.',					-- repair_details
	2.0,											-- downtime_hours
	'Jane Doe'									-- reported_by
	);


-- Example3: Failure of Temperature Sensor TS-303
INSERT INTO failures(
	instrument_id,
	failure_date,
	failure_description,
	failure_cause,
	repair_details,
	downtime_hours,
	reported_by
	)
	VALUES(
	'TS-303',										--instrument_id (Foreign Key to instruments table)
	'2024-02-25 10:00:00',							-- failure date (YYYY-MM-DD HH:MM:SS)
	'Temperature reading out of range and flactuating',		-- failure_description
	'Termocouple wire broken',						-- failure_cause
	'Replaced thermocouple and re-calibrated',		-- repair_details
	3.0,											-- downtime_hours
	'Robert Jones'									-- reported_by
	);


-- Example4: showing how to enter NULL values
INSERT INTO failures(
	instrument_id,
	failure_date,
	failure_description,
	failure_cause,
	repair_details,
	downtime_hours,
	reported_by
	)
	VALUES(
	'TS-303',										--instrument_id (Foreign Key to instruments table)
	'2024-02-25 10:00:00',							-- failure date (YYYY-MM-DD HH:MM:SS)
	'Temperature reading out of range and flactuating',		-- failure_description
	'Termocouple wire broken',						-- failure_cause
	NULL,											-- repair_details
	3.0,											-- downtime_hours
	'Robert Jones'									-- reported_by
	);


