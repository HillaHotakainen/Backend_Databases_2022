/*
Calculate and return the count of albums in the database.
Name the count column as album_count.

Laske ja palauta albumien määrä tietokannassa.
Anna lukumääräsarakkeen nimeksi album_count.
*/
select count(album.id) as album_count
from album