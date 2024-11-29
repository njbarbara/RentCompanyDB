/*
Ce script contient l'ensemble des requêtes demandées.
*/

/*
Q1. Quels produits ne sont plus en stock ? Qui fournit ces produits ?
*/
SELECT p.*, f.*
FROM Produit p
JOIN Appartient a ON a.idProduit = p.idProduit
JOIN Fournit f ON f.idProduit = p.idProduit
JOIN Fournisseur ON Fournisseur.idFournisseur = f.idFournisseur 
WHERE a.quantite = 0;

/*
Q2. Quels clients du Puy-de-Dôme ont loué un produit la semaine dernière ?
*/
SELECT c.*
FROM Client c
JOIN Location l ON l.idClient = c.idClient
WHERE c.codePostal LIKE '63%' 
AND l.dateDebut >= CURRENT_DATE - 14
AND l.dateDebut < CURRENT_DATE - 7;

/*
Q3. Quels sont les pays dans lesquels l’entreprise a des clients.
*/
SELECT DISTINCT pays AS Pays_Des_Clients
FROM Client;

/*
Q4. Pour un fournisseur de votre choix, lister les produits qu’il fournit
ainsi que leur prix de location 
hors taxe (HT) et taxes comprises (TTC).
*/

SELECT f.prixTTC AS PRIX-TTC, f.prixTTC/(1+tva) AS PRIX-HT, 
FROM Fournisseur f 
JOIN Fournir ON Fournir.idFournisseur = f.idFournisseur
JOIN Produit p ON p.idProduit
WHERE f.nomFournisseur = "PrestigeAudio";


/*A FAIRE*/

/*
Q5. Y a-t-il des articles qui n’ont jamais été loués ? Si oui, lesquels ?
*/
SELECT P.*
FROM Produit p
JOIN Contient c ON c.idProduit = p.idProduit
JOIN Location l ON l.idProduit = c.idProduit;
/*
Q6. Quel est le produit le plus cher ? Le moins cher ?
*/

/* je p le faire avec un sous select */

SELECT max(prix) AS prix_le_plus_cher, p.*
FROM Produit;