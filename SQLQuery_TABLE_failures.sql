-- Table: failures
CREATE TABLE failures(
	failure_id INT PRIMARY KEY IDENTITY(1,1),	-- Unique failure identifier
	instrument_id VARCHAR(50),	-- Instrument identifier (Foreign key)
	failure_date DATETIME,	-- Date and time of failure
	failure_description TEXT,	-- Description of the failure
	failure_cause VARCHAR(255),	-- Cause of the failure
	repair_details TEXT,	-- Details of the repair
	downtime_hours DECIMAL(10, 2),	-- Downtime in hours
	reported_by VARCHAR(50),	-- Person who reported the failure
	FOREIGN KEY (instrument_id) REFERENCES instruments(instrument_id)
	);