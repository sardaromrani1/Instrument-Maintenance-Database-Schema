-- B. Failure Analysis

-- 9. Failure Causes
-- Identify the most common causes of instrument failures.
-- This is vital for addressing root causes and preventing future failures.

SELECT failure_cause , COUNT(*) AS failure_count
FROM failures
GROUP BY failure_cause
ORDER BY failure_count DESC;