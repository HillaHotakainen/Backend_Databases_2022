# Ohjeet
Tässä harjoituksessa harjoittelemme tallennettujen proseduurien ja indeksien kirjoittamista. Tehtävät ovat pidempiä ja vaikeampia
kuin aiemmin, mutta niistä saa enemmän pisteitä.

Tehtävää 1 ja kaksi varten tarvitset alla kuvatun taulun ja datan.

```sql
CREATE TABLE `shop`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `amount` DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
);

INSERT INTO `account` (`name`, `amount`) VALUES ("Savings", 100.00);
INSERT INTO `account` (`name`, `amount`) VALUES ("Checking", 2000.00);
```

## Pisteytys
* Task 1: 2 pistettä
* Task 2: 4 pistettä
* Task 3: 5 pistettä
* Task 4: 2 pistettä