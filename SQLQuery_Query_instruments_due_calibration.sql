-- Find instruments due for calibration
SELECT instrument_id, calibration_due_date
FROM instruments
WHERE calibration_due_date < GETDATE();