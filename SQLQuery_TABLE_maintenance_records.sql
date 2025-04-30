-- Table: maintenance_records
CREATE TABLE maintenance_records(
	maintenance_id INT PRIMARY KEY IDENTITY(1,1),	-- Unique maintenance record identifier, auto-incrementing
	instrument_id VARCHAR(50),	-- Instrument identifier (Foreign key)
	maintenance_date DATETIME,	-- Date and time of maintenance
	maintenance_type VARCHAR(50),	-- Type of maintenance (e.g., calibration, repair, PM)
	maintenance_description TEXT,	-- Description of the maintenance task
	performed_by VARCHAR(50),	-- Person who performed the maintenance
	maintenance_cost DECIMAL(10, 2),	-- Cost of the maintenance task
	parts_used TEXT,	-- List of parts used during maintenance
	next_maintenance_date DATE,	-- Date of next scheduled maintenance
	FOREIGN KEY (instrument_id) REFERENCES instruments(instrument_id)
	);
