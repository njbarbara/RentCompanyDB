/* Ce script permet de tester les contraintes de table */

INSERT INTO Fournisseur VALUES 
('FRF00001', 'Focal', 70123, 'Paris', 'France', NULL, 'Rue du sénat', NULL);


INSERT INTO Client VALUES
('BEC00001', 'WeAreOne.World BVBA', 'Korte Vlierstraat 6', NULL, 'Antwerpen', 'Belgique', NULL, NULL);


INSERT INTO Location VALUES
('LCFR0001', '2024-07-02', '2024-06-25', 1567.89, 'FRC00001'),
('LCFR0001', '2024-06-25', '2024-07-02', -1567.89, 'FRC00001');


INSERT INTO Produit VALUES
('PRD00001', 'Flexible Array F1 modèle 812', 'Enceinte ', 'Bose', -1349, 'SPE00001');


INSERT INTO Appartient VALUES
('PRD00001', 'FRS00002', -2);


INSERT INTO Fournit VALUES
('FRF00001', 'PRD00001', '2023-01-12', -25, 1349),
('FRF00001', 'PRD00001', '2026-01-12', 25, 1349);



INSERT INTO Contient VALUES
('PRD00001', 'LCFR0001', -23);