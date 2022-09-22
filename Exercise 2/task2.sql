/*
Fetch album and track information for the artist "Iron Maiden".
Select Album name, album year, track name, track number and track length to the result.
Sort the result primarily by album name and secondarily by track number.

Hae albumien ja kappaleiden tiedot artistille "Iron Maiden".
Ota tulosjoukkoon mukaan albumin nimi, albumin julkaisuvuosi, kappaleen nimi ja kappaleen pituus.
Järjestä tulosjoukko ensisijaisesti albumin nimen ja toissijaisesti kappaleen numeron mukaan.
*/
SELECT album.name, album.year, track.name, track.track_number, track.length
FROM album
left join track on album.id = track.album_id
left join artist on album.artist_id = artist.id
where artist.name = 'Iron Maiden'
order by album.name, track.track_number;
