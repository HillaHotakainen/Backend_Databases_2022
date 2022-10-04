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
DROP DATABASE IF EXISTS Products;
CREATE DATABASE Products;
USE Products;

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE Ingredient (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL UNIQUE,
    calories DECIMAL(25, 4),
    PRIMARY KEY (id)
);

CREATE TABLE Contains (
    ingredient_int INT NOT NULL,
    product_int INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (ingredient_int)
    REFERENCES Ingredient(id),
    constraint fk_product_id
        FOREIGN KEY (product_int)
        REFERENCES Product(id)
        on delete set null
);