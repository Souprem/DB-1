SELECT 
    p.name AS player_name,
    d.name AS deck_name,
    t.name AS tournament_name,
    rt.ranking
FROM "Rankings Tournament" rt
JOIN Player p ON rt.playerID = p.playerID
JOIN Deck d ON rt.deckID = d.deckID
JOIN Tournament t ON rt.tournamentID = t.tournamentID;

--shows all rankings in all tournaments
--fulfils join 3 tables requirement