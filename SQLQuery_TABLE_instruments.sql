-- Table: instruments
CREATE TABLE instruments(
	instrument_id VARCHAR(50) PRIMARY KEY, -- Unique instrument identifier (e.g. tag number)
	instrument_type VARCHAR(50), -- Types of instrument (e.g. pressure transmitter, flow meter)
	manufacturer VARCHAR(50), -- Instrument manufacturer
	model VARCHAR(50), -- Instrument model number
	serial_number VARCHAR(50), -- Instrument serial number
	location VARCHAR(100), --Physical location of the instrument
	installation_date DATE, -- Date of instrument installation
	calibration_due_date DATE, -- Date the instrument is due for calibration
	calibration_frequency INT, -- Calibration frequency in months
	last_calibration_date DATE, -- Last calibration date
	range_min DECIMAL(10, 2), --Mininmum measurement range
	range_max DECIMAL(10, 2), -- Maximum measurement range
	units VARCHAR(20), -- Units of measurement (e.g. PSI, GPM, C)
	criticality VARCHAR(20), -- Instrument criticality (e.g. high, medium, low)
	-- Add other relevant instrument characteristics here
	);