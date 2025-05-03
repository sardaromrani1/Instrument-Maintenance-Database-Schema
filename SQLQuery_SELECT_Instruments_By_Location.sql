-- A. Instrument Information & Status

-- 2. Instruments by Location
-- Lists instruments at a specific location (e.g., "Unit 1- Reactor Inlet"
-- Useful for planning maintenance activities in a particular area.

SELECT * FROM instruments
WHERE location = 'Unit 1'	-- Specific Location