-- B. Failure Analysis

-- 7. Failures by Instrument
-- List all failures for a specific instrument.

SELECT f.* FROM failures f
JOIN instruments i
ON f.instrument_id = i.instrument_id
WHERE i.instrument_id = 'PT-101';