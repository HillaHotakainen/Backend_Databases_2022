/*
Fetch all the tracks which name starts with the word "The" and are at least one minute long.

Hae kaikki albumit, jotka alkavat sanalla "The" ja jotka ovat vähintään minuutin pituisia.
*/
SELECT name, length
FROM track
WHERE length > '00:01:00' and name like 'The%';