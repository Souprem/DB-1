SELECT 
    p.name AS player_name,
    AVG(rt.ranking) AS average_ranking
FROM Player p
JOIN "Rankings Tournament" rt ON p.playerID = rt.playerID
GROUP BY p.name
ORDER BY AVG(rt.ranking) DESC
LIMIT 1;

--shows the player with the best average ranking in tournaments
