/* Drop tables if they already exist, means we only have to run these tables once */
DROP TABLE IF EXISTS PisteLift;
DROP TABLE IF EXISTS Piste;
DROP TABLE IF EXISTS Lift;
DROP TYPE IF EXISTS gradevalue;
DROP TYPE IF EXISTS openvalue;
DROP TYPE IF EXISTS lifttypevalue;
/* Creates some enums for values which seem to have common names. Used this over a look up table, see documentation for justification*/
CREATE TYPE gradevalue AS ENUM ('easy', 'medium', 'hard', 'difficult');
CREATE TYPE openvalue AS ENUM ('yes', 'no');
CREATE TYPE lifttypevalue AS ENUM ('gondola', 'chair', 'tow');
/* Creates all the tables */
CREATE TABLE Piste(
	pisteID SERIAL PRIMARY KEY,
	pistename VARCHAR(100) NOT NULL UNIQUE,
	grade  gradevalue NOT NULL,
	length real NOT NULL CHECK (length>0),
	fall SMALLINT NOT NULL CHECK (fall >0),
	isopen openvalue NOT NULL
);
CREATE TABLE Lift(
	liftID SERIAL PRIMARY KEY,
	liftname VARCHAR(100) NOT NULL UNIQUE,
	lifttype lifttypevalue NOT NULL, 
	summit SMALLINT NOT NULL CHECK (summit>0),
	rise SMALLINT NOT NULL CHECK (rise >0), 
	length SMALLINT NOT NULL CHECK (length >0), 
	isopen openvalue NOT NULL	
);
CREATE TABLE PisteLift(
	pisteID SERIAL references Piste(pisteID),
	liftID SERIAL references Lift(liftID), 
	PRIMARY KEY (pisteID, liftID)
);
