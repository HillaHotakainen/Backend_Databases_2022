/*
Create a new database called Products. Create following tables to the database:

Määritä uusi tietokanta nimeltä Products. Luo seuraavat taulut tietokantaan:

Product
- id: int
- name: varchar

Ingredient
- id: int,
- name: varchar
- calories: DECIMAL

Contains
- ingredient_id: INT
- product_id: INT
- amount: DECIMAL

Define the following foreign key restrictions to the Contains table:
When the ingredient_id or product_id is updated, the updated value is reflected to Product 
and Ingredient tables. When an ingredient is deleted, the delete operation is blocked if there are any products
which contains the ingredient. When a product is deleted, the product_id in the Contains 
table is set to NULL.

Määritä seuraavat vierasavainrajoitteet Contains-tauluun:
Kun ingredient_id tai product_id päivitetään, päivitetään muuttunut arvo myös Product ja Ingredient tauluihin.
Kun Ingredient poistetaan, poisto-operaatio estetään, jos on olemassa jokin tuote, johon on käytetty poistettavaa
ainesosaa. Kun tuote poistetaan, product_id Contains-taulussa asetetaan arvoon NULL.
*/