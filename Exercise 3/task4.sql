/*
Northwind company has many products for sale. Find out how many orders include
each of the products. Write a query which returns all company's products 
(the name of the product) and the number of orders. Include the products which are 
not part of any order in the result.

Northwind-yrityksellä on useita tuotteita myynnissä. Selvitä kuinka moneen tilaukseen 
mikäkin tuote liittyy. Kirjoita lause, joka listaa kaikki yrityksen tuotteet (tuotteen nimi) 
ja tilausten määrä. Listaa myös ne tuotteet, jotka eivät liity mihinkään tilaukseen.
*/
select count(order_details.product_id) as orders, products.product_name
from products
left join order_details on products.id = order_details.product_id
group by products.product_name