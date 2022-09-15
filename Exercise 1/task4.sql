/*
Fetch all the tracks which length is less than one minute or more than five minutes.

Hae kaikki kappaleet, joiden pituus in vähemmän kuin yhden minuutin tai enemmän kuin viisi minuuttia.
*/
SELECT name, length
FROM track
WHERE length < '00:01:00' OR length > '00:05:00';
