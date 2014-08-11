/*QUERY 1*/
SELECT pl.pisteid, p.pistename, pl.liftid, l.liftname FROM Piste p, INNER JOIN PisteLift pl ON (p.pisteId = pl.pisteid) INNER JOIN LIFT l ON (pl.liftID=l.liftId) WHERE Pl.liftID=6;

/*Query 2 */
SELECT pl.liftid, l.liftname, pl.pisteid, p.pistename FROM Lift l, INNER JOIN PisteLift pl ON (l.liftID=pl.liftID) INNER JOIN Piste p ON (pl.pisteid=p.pisteId) WHERE pl.pisteId=3;

/*Query 3 */
SELECT l.liftid, l.liftname, l.isopen FROM Lift l WHERE isopen='yes';

/*Query 4 */
SELECT pl.pisteId, p.pistename, p.isopen, pl.liftID, l.liftname, l.isopen FROM PisteLift pl INNER JOIN Piste p ON (pl.pisteid=p.pisteID) INNER JOIN Lift l ON (pl.liftid=l.liftid) WHERE p.iopen='yes' AND l.isopen='yes';
/* Pistes */
SELECT * FROM Piste; 

/* Lifts */
SELECT * FROM Lift; 

/*PisteLift*/
SELECT * FROM PisteLift;
