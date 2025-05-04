# Instrument Maintenance Database Schema
This repository contains a SQL database schema designed for tracking and managing instrument maintenance in a facility,
such as a gas refinery or chemical plant. The schema includes tables for instruments, failures, and maintenance records,
and with example queries for analyzing maintenance data.

## Tables
The database schema consists of the following three tables:
* **'instruments':** Stores information about each instrument in the facility, including its type, manufacturer, location,
  calibration details, and criticality.
* **'failures':** Records instances of instrument failures, including the date of the failure, a description of the problem,
  the cause, and the downtime incurred.
* **'maintenance_records':** Tracks maintenance activities performed on instruments, including the date of the maintenance,
  the type of maintenance, a description of the work, the technician who performed the work, the cost, parts used, and the
  next scheduled maintenance date.

### 'instruments' Table Schema
sql
CREATE TABLE instruments(
  instrument_id VARCHAR(50) PRIMARY KEY,  -- Unique instrument identifier (e.g., tag number)
  instrument_type VARCHAR(50),  -- Type of instrument (e.g., pressure transmitter, flow meter)
  manufacturer VARCHAR(50),  -- Instrument manufacturer
  model VARCHAR(50),  -- Instrument model number
  serial_number VARCHAR(50),  -- Instrument serial number
  location VARCHAR(100),  -- Physical location of the instrument
  installation_date DATE,  -- Date of intrument installation
  calibration_due_date DATE,  -- Date the instrument is due for calibration
  calibration_frequency INT,  -- Calibration frequency in months
  last_calibration_date DATE,  -- Last calibration date
  range_min DECIMAL(10,2),  -- Minimum measurement range
  range_max DECIMAL(10,2),  -- Maximum measurement range
  units VARCHAR(20),  -- Units of measurement (e.g., PSI, GPM, C)
  criticality VARCHAR(20)  -- Instrument criticality (e.g. high, medium, low)
  -- Add other relevant instrument characteristics here
  );

  
### 'failures' Table Schema
sql
CREATE TABLE failures(
  failure_id INT PRIMARY KEY IDENTITY(1,1),  -- Unique failure identifier, auto-increasing (SQL server)
  instrument_id VARCHAR(50) NOT NULL,  -- Instrument identifier (foreign key)
  failure_date DATETIME NOT NULL,  -- Date and time of failure
  failure_description TEXT,  -- Description of the failure
  failure_cause VARCHAR(255),  -- Cause of the failure
  repair_details TEXT,  -- Details of the repair
  downtime_hours DECIMAL(10,2),  -- Downtime in hours
  reported_by VARCHAR(50),  -- Person who reported the failure
  FOREIGN KEY(instrument_id) REFERENCES instruments(instrument_id)
);

### 'maintenance_records' Table Schema
sql
CREATE TABLE maintenance_records(
  maintenance_id INT PRIMARY KEY IDENTITY(1,1),  -- Unique maintenance record identifier, auto-increasing (SQL Server)
  instrument_id VARCHAR(50) NOT NULL,  -- Instrument_identifier (foreign key)
  maintenance_date DATETIME NOT NULL DEFAULT GETDATE(),  -- Date and time of maintenance, defaults to current date/time
  (SQL Server)
  maintenance_type VARCHAR(50) NOT NULL,  -- Type of maintenance (e.g., calibration, repair, PM)
  maintenance_descriptiokn TEXT,
