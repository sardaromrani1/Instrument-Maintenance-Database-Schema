-- A. Instrument Information & Status

-- 4. Instruments Due for Calibration Soon
-- Identifies instruments that need calibration in the next month.
-- Crucial for proactive maintenance planning.

SELECT * FROM instruments
WHERE calibration_due_date BETWEEN GETDATE() AND DATEADD(month, 1, GETDATE())
ORDER BY calibration_due_date;