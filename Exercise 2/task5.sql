/*
Fetch artist name and their albums. Include albums without artist information in the
result set.
Include artist's name, albums name and release year to the result.

Hae artistien nimi ja kaikki artistin albumit. Sisällytä tulosjoukkoon myös ne albumit, 
joille ei ole asetettu artistia.
Ota tulokseen mukaan artistin nimi, albumin nimi ja julkaisuvuosi.
*/
select artist.name, album.name, album.year
from album
left join artist on album.artist_id = artist.id ;
