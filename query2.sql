/*Query 2 will search for lifts that serve a given piste */
SELECT pl.liftID, l.liftname, pl.pisteID, p.pistename FROM Lift l INNER JOIN PisteLift pl ON (l.liftID=pl.liftID) INNER JOIN Piste p ON (pl.pisteID=p.pisteID) WHERE pl.pisteID=3;
