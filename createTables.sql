CREATE TABLE "Card" (
	"cardID"	INTEGER,
	"name"	TEXT UNIQUE,
	"price"	INTEGER,
	PRIMARY KEY("cardID")
)

CREATE TABLE "Deck" (
	"deckID"	INTEGER,
	"name"	TEXT,
	"archetype"	TEXT,
	PRIMARY KEY("deckID")
)

CREATE TABLE "Tournament" (
	"tournamentID"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY("tournamentID")
)

CREATE TABLE "Player" (
	"playerID"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY("playerID")
)

CREATE TABLE "Rankings Tournament" (
	"deckID"	INTEGER,
	"tournamentID"	INTEGER,
	"archetype"	TEXT,
	FOREIGN KEY("playerID") REFERENCES "Player"("playerID"),
	FOREIGN KEY("deckID") REFERENCES "Deck"("deckID"),
    FOREIGN KEY("tournamentID") REFERENCES "Tournament"("tournamentID")
	PRIMARY KEY("deckID", "tournamentID")
)

CREATE TABLE "Cards in Deck" (
  "cardID" INTEGER,
  "deckID" INTEGER,
  FOREIGN KEY("deckID") REFERENCES "Deck"("deckID"),
  FOREIGN KEY("cardID") REFERENCES "Card"("cardID")
  PRIMARY KEY("cardID", "deckID")
)