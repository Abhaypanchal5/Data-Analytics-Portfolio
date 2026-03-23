-- Task 2 — Podium Finish Streak
-- Find all drivers who finished on the podium (top 3) in 3 or more consecutive rounds in any season.

WITH podium AS (
    SELECT 
        driver_name,
        season,
        round,
        LAG(round, 1) OVER (PARTITION BY driver_name, season ORDER BY round) AS prev_round,
        LAG(round, 2) OVER (PARTITION BY driver_name, season ORDER BY round) AS prev_2_round
    FROM f1_race_data
    WHERE finish_position <= 3
)
SELECT DISTINCT driver_name
FROM podium
WHERE round = prev_round + 1 
  AND prev_round = prev_2_round + 1;