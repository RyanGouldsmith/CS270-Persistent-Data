/*QUERY 1 will search for Pistes served by a lift */
SELECT pl.pisteID, p.pistename, pl.liftID, l.liftname FROM Piste p INNER JOIN PisteLift pl ON (p.pisteID = pl.pisteID) INNER JOIN LIFT l ON (pl.liftID=l.liftID) WHERE Pl.liftID=6;
