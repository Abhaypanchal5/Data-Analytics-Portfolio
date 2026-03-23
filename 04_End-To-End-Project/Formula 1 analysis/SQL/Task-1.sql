-- Task 1 — Cumulative Championship Points

SELECT 
    driver_name,
    season,
    round,
    points,
    SUM(points) OVER (
        PARTITION BY driver_name, season 
        ORDER BY round
    ) AS cumulative_points
FROM f1_race_data
ORDER BY driver_name, season, round; 