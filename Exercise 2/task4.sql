/*
Fetch artist name and their albums. Don't include albums without artist information in the
result set.
Include artist's name, albums name and release year to the result.

Hae artistien nimi ja kaikki artistin albumit. Älä sisällytä tulosjoukkoon niitä albumeita, 
joille ei ole asetettu artistia.
Ota tulokseen mukaan artistin nimi, albumin nimi ja julkaisuvuosi.
*/
select artist.name, album.name, album.year
from artist
inner join album on artist.id = album.artist_id
