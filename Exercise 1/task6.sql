/*
Create a new table called review. The table should have the following columns:

Luo uusi taulu, jonka nimi on review. Taulussa pitää olla seuraavat sarakkeet:

 - id
 - name of the reviewer, not null
 - headline
 - review text
 - a reference to the album id which is reviewed, not null
*/
CREATE TABLE review(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
    headline VARCHAR(255) NOT NULL,
    reviewtext VARCHAR(2000) NOT NULL,
    reviewdID INT NOT NULL,
    foreign key(reviewdID) references album(id)
);