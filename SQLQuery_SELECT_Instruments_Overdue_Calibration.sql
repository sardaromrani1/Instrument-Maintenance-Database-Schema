-- A. Instrument Information & Status

-- 5. Instruments Overdue for Calibration
-- Lists instruments that are past their calibration due date.
-- This is a high-priority report for ensuring accuracy and reliability.

SELECT * FROM instruments
WHERE calibration_due_date < GETDATE()
ORDER BY calibration_due_date;