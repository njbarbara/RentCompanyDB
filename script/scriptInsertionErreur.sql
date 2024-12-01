/* Ce script permet de tester les contraintes de table */


/* Test pour que le numéro de téléphone ou le mail d'un fournisseur soit renseignée */
INSERT INTO Fournisseur VALUES 
('FRF00001', 'Focal', 70123, 'Paris', NULL, 'Rue du sénat', NULL, 'FRP00001');


/* Test pour que le numéro de téléphone ou le mail d'un client soit renseignée */
INSERT INTO Client VALUES
('HUC00001', 'Sziget Festival', 'Óbudai-sziget', NULL, 'Budapest', NULL, NULL, 'HUP00009');


/* Test pour que la date de début soit inférieure à la date de fin, et test pour que le prixLocationHT soit positif */
INSERT INTO Location VALUES
('FRL00001', '2024-07-02', '2024-06-25', 1567.89, 'FRC00001'),
('FRL00001', '2024-06-25', '2024-07-02', -1567.89, 'FRC00001');


/* Test pour que le prixReferenceHT d'un produit soit positif */
INSERT INTO Produit VALUES
('PRD00001', 'Flexible Array F1 modèle 812', 'Enceinte ', 'Bose', -1349, 'SPE00001');


/* Test pour que la quantité d'un produit dans un stock soit positif ou zéro */
INSERT INTO Appartient VALUES
('PRD00001', 'FRS00002', -2);


/* Test pour que la quantité d'un produit acheté soit positif ou zéro, et que la dateFournit soit aujourd'hui ou avant */
INSERT INTO Fournit VALUES
('FRF00001', 'PRD00001', '2023-01-12', -25, 1349),
('FRF00001', 'PRD00001', '2026-01-12', 25, 1349);


/* Test pour que la quantité d'un produit pour un location soit positif */
INSERT INTO Contient VALUES
('PRD00001', 'LCFR0001', -23);