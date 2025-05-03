-- A. Instrument Information & Status

-- 6. Instruments with Specific Criticality
-- Lists instruments with high criticality.
-- Useful for prioritizing maintenance and reliability efforts

SELECT * FROM instruments
WHERE criticality = 'High';