-- Task 4 — Driver Head to Head
-- For each pair of teammates (same team, same season, same race), show who finished ahead and count how many times each driver beat their teammate across the season.

WITH teammate_races AS (
    SELECT 
        a.season,
        a.team,
        a.driver_name AS driver_1,
        b.driver_name AS driver_2,
        CASE WHEN a.finish_position < b.finish_position 
             THEN a.driver_name 
             ELSE b.driver_name 
        END AS winner
    FROM f1_race_data a
    JOIN f1_race_data b 
        ON a.race_id = b.race_id
        AND a.team = b.team
        AND a.driver_name < b.driver_name
)
SELECT 
    season,
    team,
    driver_1,
    driver_2,
    COUNT(CASE WHEN winner = driver_1 THEN 1 END) AS driver_1_wins,
    COUNT(CASE WHEN winner = driver_2 THEN 1 END) AS driver_2_wins
FROM teammate_races
GROUP BY season, team, driver_1, driver_2
ORDER BY season, team;