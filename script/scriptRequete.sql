/*
Ce script contient l'ensemble des requêtes demandées.
*/

/*
Q1. Quels produits ne sont plus en stock ? Qui fournit ces produits ?
*/

/*Note : un produit peut appartenir à plusieurs stocks */

SELECT DISTINCT p.*, f.*
FROM Produit p
JOIN Fournit f ON f.idProduit = p.idProduit
JOIN Fournisseur ON Fournisseur.idFournisseur = f.idFournisseur
WHERE p.idProduit NOT IN (SELECT a.idProduit
                          FROM Appartient a
                          WHERE quantite > 0);

/*
Voici le cas où un produit appartient à un seul stock (ce qui n'est pas possible dans notre cas) : 
SELECT DISTINCT p.*, f.*
FROM Produit p
JOIN Appartient a ON a.idProduit = p.idProduit
JOIN Fournit f ON f.idProduit = p.idProduit
JOIN Fournisseur ON Fournisseur.idFournisseur = f.idFournisseur 
WHERE a.quantite = 0 ;
*/

/*
Q2. Quels clients du Puy-de-Dôme ont loué un produit la semaine dernière ?
*/
SELECT c.*
FROM Client c
JOIN Location l ON l.idClient = c.idClient
WHERE c.codePostal >= 63000 
AND c.codePostal < 64000 
AND l.dateDebut >= CURRENT_DATE - 14
AND l.dateDebut < CURRENT_DATE - 7;

/*
Q3. Quels sont les pays dans lesquels l’entreprise a des clients.
*/
SELECT DISTINCT pays AS Pays_Des_Clients
FROM Client c
JOIN Pays ON Pays.idPays = c.idPays;

/*
Q4. Pour un fournisseur de votre choix, lister les produits qu’il fournit
ainsi que leur prix de location 
hors taxe (HT) et taxes comprises (TTC).
*/

SELECT Fournit.prixHT AS PRIX_HT_FOURNISSEUR, round(Fournit.prixHT*(1+(Pays.tva)), 2) AS PRIX_TTC_FOURNISSEUR, p.*
FROM Fournisseur f 
JOIN Fournit ON Fournit.idFournisseur = f.idFournisseur
JOIN Produit p ON p.idProduit = Fournit.idProduit
JOIN Pays ON Pays.idPays = f.idPays
WHERE f.nomFournisseur = 'PrestigeAudio';

/*
Q5. Y a-t-il des articles qui n’ont jamais été loués ? Si oui, lesquels ?
*/

SELECT * 
FROM Produit
WHERE idProduit NOT IN (SELECT idProduit
                        From Contient);

/*
Q6. Quel est le produit le plus cher ? Le moins cher ?
*/

/*Pour le prix le plus cher  */
SELECT * FROM Produit WHERE prixHT >= ALL (SELECT prixHT FROM Produit );

/*Pour le prix le moins cher */
SELECT * FROM Produit WHERE prixHT <= ALL (SELECT prixHT FROM Produit );

