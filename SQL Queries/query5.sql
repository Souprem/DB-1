SELECT 
    p.name AS player_name,
    COUNT(DISTINCT rt.tournamentID) AS tournaments_participated
FROM Player p
JOIN "Rankings Tournament" rt ON p.playerID = rt.playerID
JOIN "Deck" d ON rt.deckID = d.deckID
JOIN "Cards in Deck" cid1 ON d.deckID = cid1.deckID
JOIN "Cards in Deck" cid2 ON d.deckID = cid2.deckID
JOIN "Card" c1 ON cid1.cardID = c1.cardID
JOIN "Card" c2 ON cid2.cardID = c2.cardID
WHERE c1.name = 'Opt' AND c2.name = 'Brainstorm'
GROUP BY p.playerID;

--shows all players that used a deck with 'Opt' and 'Brainstorm' in it

--fulfils complex search criterion requirement