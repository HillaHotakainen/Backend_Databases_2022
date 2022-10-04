/*
The employee database has a following table:

Employee-tietokannassa on seuraava taulu:

Employee
id : INT
name : VARCHAR
email : VARCHAR
supervisor : VARCHAR
office : VARCHAR
city : VARCHAR

Example data:
Esimerkkidata:
|id |name        |email              |supervisor    |office   |city
-----------------------------------------------------------------------------
|1  |Andy Smith  |andy@company.com   |Jill Jackson  |B-11     |New York
|2  |Rudy Black  |rudy@company.com   |John Doe      |A-22     |San Francisco

Normalize the table into the 3rd normal form by dividing columns and tables into smaller ones.
Define new tables like the example above. No need to write CREATE statements.
Add some example data to your table(s).

Normalisoi taulu 3. normaalimuotoon jakamalla sarakkeita ja tauluja pienemmiksi.
Määritä uudet taulut samaan tapaan, kuin esimerkki on määritetty yllä.
CREATE-lauseita ei tarvitse kirjoittaa.
Lisää esimerkkidataa tauluihisi.



|id |name          |email               |supervisor_id    |office_id   |city_id(jos tällä tarkoitetaan henkilön kaupuinkia)
-----------------------------------------------------------------------------
|1  |Andy Smith    |andy@company.com   |1                |1            |3
|2  |Rudy Black    |rudy@company.com   |2                |2            |2
|3  |Andy Red      |andy.r@company.com |3                |3            |2
|4  |John Doe      |john@company.com   |1                |2            |5
|5  |Marry Poppins |marry@company.com  |1                |3            |1

|id | supervisor_name
----------------------
|1 | Puuha Pete
|2 | Bruce Wayne
|3 | Marry Sue

Jos cityllä tarkoitetaan officen cityä, tehdään city_id't officen tauluun:

|id | Office_name | City_id
-------------------------------
|1 | B-11         |1
|2 | A-12         |2
|3 | C-34         |1

City Taulu:
|id | City_name
----------------
|1 | Hanoi
|2 | London
|3 | New York

*/

