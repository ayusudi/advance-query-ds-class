BEGIN;

CREATE TABLE players (
    full_school_name VARCHAR(255),
    school_name VARCHAR(255),
    player_name VARCHAR(255),
    position VARCHAR(255),
    height FLOAT,
    weight FLOAT,
    year VARCHAR(255),
    hometown VARCHAR(255),
    state VARCHAR(255),
    id INT PRIMARY KEY
);

CREATE TABLE teams (
    division VARCHAR(100),
    conference VARCHAR(100),
    school_name VARCHAR(100),
    roster_url VARCHAR(200),
    id INT PRIMARY KEY
);

COPY players(full_school_name,school_name,player_name,position,height,weight,year,hometown,state,id)
FROM 'path-players'
DELIMITER ','
CSV HEADER;

COPY teams(division,conference,school_name,roster_url,id)
FROM 'path-teams'
DELIMITER ','
CSV HEADER;

COMMIT;