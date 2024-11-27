/*
Ce script contient l'ensemble des requêtes demandé 
*/

SELECT DISTINCT * 
FROM Produit p
JOIN Appartient a ON a.idStock = p.idProduit
WHERE ;