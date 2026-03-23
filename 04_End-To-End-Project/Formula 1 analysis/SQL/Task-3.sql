-- Task 3 — Team Dominance Index
-- For each team and season calculate:

-- Total races
-- Total wins
-- Win rate % (wins / races × 100)
-- Rank teams within each season by win rate using RANK()


WITH team_stats AS (
    SELECT 
        team,
        season,
        COUNT(*) AS total_races,
        SUM(CASE WHEN finish_position = 1 THEN 1 ELSE 0 END) AS wins,
        ROUND(SUM(CASE WHEN finish_position = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS win_rate
    FROM f1_race_data
    GROUP BY team, season
)
SELECT 
    *,
    RANK() OVER (PARTITION BY season ORDER BY win_rate DESC) AS rank
FROM team_stats
ORDER BY season, rank;
