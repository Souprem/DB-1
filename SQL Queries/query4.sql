SELECT 
    p.name AS player_name,
    COUNT(DISTINCT rt.tournamentID) AS tournament_count,
    AVG(rt.ranking) AS average_ranking
FROM Player p
JOIN "Rankings Tournament" rt ON p.playerID = rt.playerID
GROUP BY p.playerID
HAVING COUNT(DISTINCT rt.tournamentID) >= 2
    AND AVG(rt.ranking) <= 5;

--shows all players that have participated in at least 2 tournaments and have an average ranking of 5 or less
--fulfils group by with having clause requirement