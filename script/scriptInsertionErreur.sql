/*
A faire : 
- Tester toutes les contraintes de tables
- 
*/

INSERT INTO Fournisseur VALUES 
('FRF00001', 'Focal', 70123, 'Paris', 'France', NULL, 'Rue du sénat', NULL);


INSERT INTO Client VALUES
('BEC00001', 'WeAreOne.World BVBA', 'Korte Vlierstraat 6', NULL, 'Antwerpen', 'Belgique', NULL, NULL);


INSERT INTO Location VALUES
('LCFR0001', '2024-07-02', '2024-06-25', 1567.89, 'FRC00001'),
('LCFR0001', '2024-06-25', '2024-07-02', -1567.89, 'FRC00001');


INSERT INTO Produit VALUES
('PRD00001', 'Flexible Array F1 modèle 812', 'Enceinte ', 'Bose', -1349, 'SPE00001');


