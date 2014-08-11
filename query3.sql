/*Query 3  searches for all the lifts that are open*/
SELECT l.liftID, l.liftname, l.isopen FROM Lift l WHERE isopen='yes';
