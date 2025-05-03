-- A. Instrument Information & Status

-- Instruments by Type
-- Lists instruments of a specific type.
-- Helpful for focusing on common issues with particular types of instruments.

SELECT * FROM instruments
WHERE instrument_type = 'Pressure Transmitter';