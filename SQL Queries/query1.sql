SELECT DISTINCT name
FROM Player
WHERE playerID IN (
    SELECT DISTINCT playerID
    FROM "Rankings Tournament"
);
--shows all players that participated in at least 1 tournament
--fulfils subquery requirement