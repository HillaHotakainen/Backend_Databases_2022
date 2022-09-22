/*
Calculate and return the count of albums each band has in the database.
Include Artist name and album count into the result.
Name the result columns as "Artist" and "Album count".

Laske ja palauta albumien lukumäärä jokaiselle bändille tietokannassa.
Sisällytä artistin nimi ja albumien lukumäärä tulosjoukkoon. Anna sarakkeille
nimeksi "Artist" ja "Album count".
*/

select artist.name as Artist, count(album.artist_id) as "Album count"
from artist
left join album on album.artist_id = artist.id
group by artist.name;

