USE FantasyFootball;

-- remove suffixes of names from FStats table to match RInfo table
UPDATE FantasyStats_13to23
SET Player = 
    CASE 
        WHEN Player LIKE '% II' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
        WHEN Player LIKE '% III' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 3))
		WHEN Player LIKE '% IV' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
		WHEN Player LIKE '% V' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 1))
        ELSE Player
    END;

UPDATE RInfo13_23
SET Player = 
    CASE 
        WHEN Player LIKE '% II' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
        WHEN Player LIKE '% III' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 3))
		WHEN Player LIKE '% IV' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
		WHEN Player LIKE '% V' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 1))
        ELSE Player
    END;


UPDATE FantasyStats_13to23
SET Player = 
    CASE 
        WHEN Player LIKE '% Sr' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
        WHEN Player LIKE '% Jr' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
        ELSE Player
    END;

	
UPDATE RInfo13_23
SET Player = 
    CASE 
        WHEN Player LIKE '% Sr' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
        WHEN Player LIKE '% Jr' THEN TRIM(SUBSTRING(Player, 1, LEN(Player) - 2))
        ELSE Player
    END;

GO;

-- Aggregating scores over the years and creating a view fot Tableau
CREATE VIEW All_Fantasy_Info_21_to_23 AS 
SELECT f.Name, f.POS, AVG(r.Rnd) AS Round, AVG(r.Pick) AS Pick, AVG(r.Age) AS Age, ROUND(AVG(f.GP), 0) AS GP, ROUND(AVG(f.PTS), 2) AS PTS, 
		ROUND(AVG(f.PTS_PG), 2) AS PTS_G, ROUND(AVG(f.TGT), 0) AS TGT, ROUND(AVG(f.REC), 0) AS REC, ROUND(AVG(f.REC_YDS), 0) AS REC_YDS, 
		ROUND(AVG(f.REC_TD), 1) AS REC_TD, ROUND(AVG(f.CMP), 0) AS CMP, ROUND(AVG(f.PASS_YDS), 0) AS YDS, ROUND(AVG(f.PASS_TD), 0) AS PASS_TD,
		ROUND(AVG(f.RUSH_ATT), 0) AS RUSH_ATT, ROUND(AVG(f.RUSH_YDS), 0) AS RUSH_YDS, ROUND(AVG(f.RUSH_TD), 1) AS RUSH_TD
FROM [FFStats_21-23] f 
INNER JOIN [Rookie_Draft_Info_21-23] r 
ON f.Name = r.Player
WHERE f.POS IN ('QB', 'WR', 'RB', 'TE')
GROUP BY f.Pos, f.Name;