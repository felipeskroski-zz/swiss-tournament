-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- sets up players
CREATE TABLE players(
   id serial PRIMARY KEY,
   name text NOT NULL
);

-- results come after the match so this only contains a result of a given match
CREATE TABLE matches(
   id serial PRIMARY KEY,
   winner integer REFERENCES players(id) NOT NULL,
   loser integer REFERENCES players(id) NOT NULL
);

-- get all matches with winners and loosers
CREATE VIEW standings AS
  SELECT players.id, players.name,
    (SELECT count(*) FROM matches WHERE matches.winner = players.id) as won,
    (SELECT count(*) FROM matches WHERE players.id in (winner, loser)) as played
  FROM players
  GROUP BY players.id
  ORDER BY won DESC;
