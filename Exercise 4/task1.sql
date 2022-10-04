/*
Give an example of an unnormalized table. Describe why it is problematic to have 
an unnormalized table in the database. Include some example data in your answer.
The data should show clearly the problem (or problems) unnormalized table causes.

Anna esimerkki normalisoimattomasta taulusta. Kuvaile, miksi normalisoimaton taulu tietokannassa
on ongelmallinen. Sisällytä esimerkkidataa vastaukseesi. Datan tulisi selvästi osoittaa ongelma,
jonka normalisoimaton taulu aiheuttaa.
*/
DROP DATABASE IF EXISTS testi;

CREATE DATABASE testi;

use testi;

create table book_list (
    ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Book_name VARCHAR(50) NOT NULL,
    Writer_name varchar (255) not null
);

insert into book_list (book_name, writer_name ) values
   ('Harry Ptter', 'Joke Rowglin'),
   ('Pallo pulla', 'Joke Rowglin'),
   ('Kukka kakku', 'Joke Rowglin'),
   ('Joku Jako', 'Puuha Pete')
   ;

/*
Esimerkissä näkyy hyvin jos esim kirjailijan nimi vaihtuu, tiedot olisi pakko päivittää joka riville.
Jos sen sijaan nimi olisi erillisessä taulussa, olisi se paljon helpompi päivittää vain yhteen paikkaan.
 */
