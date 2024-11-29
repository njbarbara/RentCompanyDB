DELETE FROM Contient;
DELETE FROM Fournit;
DELETE FROM Appartient;
DELETE FROM Location;
DELETE FROM Stock;
DELETE FROM Client;
DELETE FROM Fournisseur;
DELETE FROM Produit;
DELETE FROM Specificite;

/*
A faire : 
- Il faut que tous les produits est un stock associé 
- Il faut que tout les produits est un fournisseur associé
- Il faut laisser des produits qui n'ont jamais encore été loué
- faire des insertions pour locations y à moins d'une semaine
- Il faut que prestige audio forunissent des produits 
- Il faut que tt les produits récemment loué ne soient plus en stock
*/

/*Ce script n'est pas abouti et contient peut-être des erreurs (!!!)*/

INSERT INTO Fournisseur VALUES 
('FRF00001', 'Focal', 70123, 'Paris', 'France', 'focal-pro@dmail.fr', 'Rue du sénat', 33123456789),
('FRF00002', 'Bose', 63100, 'Clermont', 'France', 'Bose@neuf.com', 'Rue marcel du chemin', 33698765432),
('FRF00003', 'FranceSonor', 69007, 'Lyon', 'France', 'support@franceSonor.fr', 'Rue de Richelieu', 33712345678),
('FRF00004', 'PasJBL', 33000, 'Bordeaux', 'France', 'contact@jbl.fr', 'Rue Sainte-Catherine', 33598761234),
('FRF00005', 'PrestigeAudio', 31000, 'Toulouse', 'France', 'service@prestigeaudio.fr', 'Place du Capitole', 33765432109),
('USF00001', 'ConcertEquip', 10001, 'New-York', 'Etats-unis', 'concertEquipUSA@fresco.us', 'BradFord avenue', 5556789012),
('USF00002', 'StageCraft Solutions', 90001, 'Los Angeles', 'Etats-unis', 'stageCraft@fedex.us', 'Rodeo street', 5551234567),
('USF00003', 'SoundWave Equipment', 77001, 'Houston', 'Etats-unis', 'soundwave@houstonMail.us', 'Main street', 5556789012),
('CNF00001', 'Toronto Evenement', NULL, 'Toronto', 'Canada', 'torontoEvenement@gmail.com', 'Yonge Street', 5556040123),
('JPF00001', 'Tokyo Disco', 1000001, 'Tokyo', 'Japon', 'tokyoDisco@gmail.com', 'Yanaka Ginza', 0312345678);

INSERT INTO Stock VALUES 
('FRS00001', '1 rue Lamartine', 63100, 'Clermont-Fd', 'France'),
('FRS00002', '6 rue Jean-Jaurès', 70123, 'Paris', 'France'),
('BES00001', '5 rue des Bouchers', 1050, 'Bruxelles', 'Belgique'),
('HUS00001', 'Széchenyi', 1207, 'Budapest', 'Hongrie'),
('USS00001', 'Salt lake street', 92201, 'Indio', 'Etats-unis'),
('UKS00001', 'Brick lane', 25032, 'Londres', 'Royaume-Uni'),
('ESS00001', 'Las Ramblas ', 28001, 'Madrid', 'Espagne'),
('USS00002', 'Main Street', 89412, 'Gerlach', 'États-Unis'),
('BRS00001', 'Avenida Rio Branco', 05407, 'Rio de Janeiro', 'Brésil'),
('JPS00001', 'Jingu-dori', 1000020, 'Tokyo', 'Japon'),
('GES00011', 'Kurfürstendamm Straße', 10115, 'Berlin', 'Allemagne');



INSERT INTO Client VALUES
('BEC00001', 'WeAreOne.World BVBA', 'Korte Vlierstraat 6', NULL, 'Antwerpen', 'Belgique', 3232424400, 'info@tomorrowland.com'),
('HUC00001', 'Sziget Festival', 'Óbudai-sziget', NULL, 'Budapest', 'Hongrie', 36123456789, 'info@szigetfestival.com'),
('USC00001', 'Coachella Music Fest', 'Empire Polo Club', NULL, 'Indio', 'États-Unis', 17605830123, 'info@coachella.com'),
('UKC00001', 'Glastonbury Fest', 'Worthy Farm', NULL, 'Pilton', 'Royaume-Uni', 441174880300, 'info@glastonburyfestivals.co.uk'),
('ESC00001', 'Primavera Sound', 'Carrer de Bilbao 10', NULL, 'Barcelona', 'Espagne', 34934123456, 'info@primaverasound.com'),
('USC00002', 'Burning Man', 'Black Rock Desert', NULL, 'Gerlach', 'États-Unis', 17757440100, 'info@burningman.org'),
('BRC00001', 'Rock in Rio', 'Cidade do Rock', NULL, 'Rio de Janeiro', 'Brésil', 552121440000, 'info@rockinrio.com'),
('BEC00002', 'Pukkelpop', 'Kempische Steenweg', NULL, 'Hasselt', 'Belgique', 32478513000, 'info@pukkelpop.be'),
('JPC00001', 'Fuji Rock Festival', 'Naeba Ski Resort', NULL, 'Yuzawa', 'Japon', 8131234000, 'info@fujirockfestival.com'),
('USC00003', 'Lollapalooza', 'Grant Park', NULL, 'Chicago', 'États-Unis', 17734440600, 'info@lollapalooza.com'),
('FRC00001', 'Hellfest Productions', 'Rue du Champ Louet', 44190, 'Clisson', 'France', 330251887950, 'info@hellfest.fr'),
('GEC00011', 'Wacken Open Air', 'Hauptstraße', NULL, 'Wacken', 'Allemagne', 494822110, 'info@wacken.com');



INSERT INTO Location VALUES
('FRL00001', '2024-06-25', '2024-07-02', 01567.89, 'FRC00001'),
('USL00005', '2020-09-05', '2024-09-05', 99999.99, 'USC00001'),
('GEL00004', '2024-10-18', '2024-10-31', 00600.00, 'GEC00011'),
('JPL00001', '2024-12-30', '2025-01-03', 02789.12, 'JPC00001'),
('HUL00002', '2024-05-01', '2024-06-01', 49396.78, 'HUC00001'),
('BRL00006', '2024-03-12', '2024-05-07', 02479.15, 'BRC00001');

INSERT INTO Specificite VALUES
('SPE00001', 1000, 132, NULL),
('SPE00002', 1000, NULL, NULL),
('SPE00003', 1000, 143, NULL),
('SPE00004', 400, NULL, NULL),
('SPE00005', 300, NULL, NULL),
('SPE00006', 100, NULL, NULL),
('SPE00007', 830, NULL, 11400),
('SPE00008', 1250, NULL, 16100);  


INSERT INTO Produit VALUES
('PRD00001', 'Flexible Array F1 modèle 812', 'Enceinte ', 'Bose', 1349.00, 'SPE00001'),
('PRD00002', 'HeavyFog2000C', 'Machine à fumer', 'SparklersClub', 899.00, 'SPE00002'),
('PRD00003', 'K3', 'Enceinte', 'L-acoustics', 20000.00, 'SPE00003'),
('PRD00004', 'CSD-R7 Demo', 'Table de mixage', 'Yamaha', 70000.00, 'SPE00004'),
('PRD00005', 'MA Lighting grandMA3 full-size', 'Console de éclairage', 'MA Lightning', 64690.00, 'SPE00005'),
('PRD00006', 'FLX S48 1024 canaux console DMX', 'Console de éclairage', 'Zero 88', 3055.00, 'SPE00006'),
('PRD00007', 'Midi-B FX', 'éclairage', 'CLAYPAKY', 1500.00, 'SPE00007'),
('PRD00008', 'HY B-Eye K25 / TEATRO', 'éclairage', 'CLAYPAKY', 1400.00, 'SPE00008');

INSERT INTO Appartient VALUES
('PRD00001', 'FRS00002', 30),
('PRD00002', 'ESS00001', 50),
('PRD00003', 'JPS00001', 70),
('PRD00004', 'GES00011', 0),
('PRD00005', 'BES00001', 100),
('PRD00006', 'UKS00001', 300),
('PRD00007', 'BRS00001', 400),
('PRD00008', 'BRS00001', 2000);

/*A faire pour chaque location */
INSERT INTO Contient VALUES
('PRD00001', 'FRL00001', 9),
('PRD00001', 'USL00005', 40),
('PRD00002', 'FRL00001', 30),
('PRD00002', 'USL00005', 10),
('PRD00002', 'GEL00004', 45),
('PRD00006', 'JPL00001', 456),
('PRD00007', 'HUL00002', 109),
('PRD00008', 'BRL00006', 350),
('PRD00004', 'JPL00001', 100);

/*
INSERT INTO Fournit VALUES
()
()
()
()
()
()
()
()

*/



