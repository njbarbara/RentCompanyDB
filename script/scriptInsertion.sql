DELETE FROM Contient;
DELETE FROM Fournit;
DELETE FROM Appartient;
DELETE FROM Location;
DELETE FROM Stock;
DELETE FROM Client;
DELETE FROM Fournisseur;
DELETE FROM Produit;
DELETE FROM Specificite;
DELETE FROM Pays ;


/*
Ce script contient l'ensemble des insertions demandées.
*/

INSERT INTO Pays (idPays, pays, tva) VALUES 
('FRP00001', 'France', 0.20),
('USP00002', 'États-Unis', 0.00),
('BEP00003', 'Belgique', 0.21),
('ESP00004', 'Espagne', 0.21),
('GEP00005', 'Allemagne', 0.19),
('JPP00006', 'Japon', 0.10),
('CAP00007', 'Canada', 0.05),
('BEP00008', 'Brésil', 0.17),
('HUP00009', 'Hongrie', 0.27),
('UKP00010', 'Royaume-Uni', 0.20);

INSERT INTO Fournisseur VALUES 
('FRF00001', 'Focal', 70123, 'Paris', 'focal-pro@dmail.fr', 'Rue du sénat', 33123456789, 'FRP00001'),
('FRF00002', 'Bose', 63100, 'Clermont', 'Bose@neuf.com', 'Rue marcel du chemin', 33698765432, 'FRP00001'),
('FRF00003', 'FranceSonor', 69007, 'Lyon', 'support@franceSonor.fr', 'Rue de Richelieu', 33712345678, 'FRP00001'),
('FRF00004', 'PasJBL', 33000, 'Bordeaux', 'contact@jbl.fr', 'Rue Sainte-Catherine', 33598761234, 'FRP00001'),
('FRF00005', 'PrestigeAudio', 31000, 'Toulouse', 'service@prestigeaudio.fr', 'Place du Capitole', 33765432109, 'FRP00001'),
('USF00001', 'ConcertEquip', 10001, 'New-York', 'concertEquipUSA@fresco.us', 'BradFord avenue', 5556789012, 'USP00002'),
('USF00002', 'StageCraft Solutions', 90001, 'Los Angeles', 'stageCraft@fedex.us', 'Rodeo street', 5551234567, 'USP00002'),
('USF00003', 'SoundWave Equipment', 77001, 'Houston', 'soundwave@houstonMail.us', 'Main street', 5556789012, 'USP00002'),
('CNF00001', 'Toronto Evenement', NULL, 'Toronto', 'torontoEvenement@gmail.com', 'Yonge Street', 5556040123, 'CAP00007'),
('JPF00001', 'Tokyo Disco', 1000001, 'Tokyo', 'tokyoDisco@gmail.com', 'Yanaka Ginza', 0312345678, 'JPP00006');

INSERT INTO Stock VALUES 
('FRS00001', '1 rue Lamartine', 63100, 'Clermont-Fd', 'FRP00001'),
('FRS00002', '6 rue Jean-Jaurès', 70123, 'Paris', 'FRP00001'),
('BES00001', '5 rue des Bouchers', 1050, 'Bruxelles', 'BEP00003'),
('HUS00001', 'Széchenyi', 1207, 'Budapest', 'HUP00009'),
('USS00001', 'Salt lake street', 92201, 'Indio', 'USP00002'),
('UKS00001', 'Brick lane', 25032, 'Londres', 'UKP00010'),
('ESS00001', 'Las Ramblas ', 28001, 'Madrid', 'ESP00004'),
('USS00002', 'Main Street', 89412, 'Gerlach', 'USP00002'),
('BRS00001', 'Avenida Rio Branco', 05407, 'Rio de Janeiro', 'BEP00008'),
('JPS00001', 'Jingu-dori', 1000020, 'Tokyo', 'JPP00006'),
('GES00011', 'Kurfürstendamm Straße', 10115, 'Berlin', 'GEP00005');

/*
INSERT INTO Client VALUES
('BEC00001', 'WeAreOne.World BVBA', 'Korte Vlierstraat 6', NULL, 'Antwerpen', 3232424400, 'info@tomorrowland.com', 'BEP00003'),
('HUC00001', 'Sziget Festival', 'Óbudai-sziget', NULL, 'Budapest', 36123456789, 'info@szigetfestival.com', 'HUP00009'),
('USC00001', 'Coachella Music Fest', 'Empire Polo Club', NULL, 'Indio', 17605830123, 'info@coachella.com', 'USP00002'),
('UKC00001', 'Glastonbury Fest', 'Worthy Farm', NULL, 'Pilton', 441174880300, 'info@glastonburyfestivals.co.uk', 'UKP00010'),
('ESC00001', 'Primavera Sound', 'Carrer de Bilbao 10', NULL, 'Barcelona', 34934123456, 'info@primaverasound.com', 'ESP00004'),
('USC00002', 'Burning Man', 'Black Rock Desert', NULL, 'Gerlach', 17757440100, 'info@burningman.org', 'USP00002'),
('BRC00001', 'Rock in Rio', 'Cidade do Rock', NULL, 'Rio de Janeiro', 552121440000, 'info@rockinrio.com', 'BEP00008'),
('BEC00002', 'Pukkelpop', 'Kempische Steenweg', NULL, 'Hasselt', 32478513000, 'info@pukkelpop.be', 'BEP00003'),
('JPC00001', 'Fuji Rock Festival', 'Naeba Ski Resort', NULL, 'Yuzawa', 8131234000, 'info@fujirockfestival.com', 'JPP00006'),
('USC00003', 'Lollapalooza', 'Grant Park', NULL, 'Chicago', 17734440600, 'info@lollapalooza.com', 'USP00002'),
('FRC00001', 'Hellfest Productions', 'Rue du Champ Louet', 44190, 'Clisson', 330251887950, 'info@hellfest.fr', 'FRP00001'),
('GEC00011', 'Wacken Open Air', 'Hauptstraße', NULL, 'Wacken', 494822110, 'info@wacken.com', 'GEP00005');
*/

INSERT INTO Client VALUES
('HUC00001', 'Sziget Festival', 'Óbudai-sziget', NULL, 'Budapest', 36123456789, 'info@szigetfestival.com', 'HUP00009'),
('USC00001', 'Coachella Music Fest', 'Empire Polo Club', NULL, 'Indio', 17605830123, 'info@coachella.com', 'USP00002'),
('BRC00001', 'Rock in Rio', 'Cidade do Rock', NULL, 'Rio de Janeiro', 552121440000, 'info@rockinrio.com', 'BEP00008'),
('JPC00001', 'Fuji Rock Festival', 'Naeba Ski Resort', NULL, 'Yuzawa', 8131234000, 'info@fujirockfestival.com', 'JPP00006'),
('USC00003', 'Lollapalooza', 'Grant Park', NULL, 'Chicago', 17734440600, 'info@lollapalooza.com', 'USP00002'),
('FRC00001', 'Hellfest Productions', 'Rue du Champ Louet', 63100, 'Clermont', 330251887950, 'info@hellfest.fr', 'FRP00001'),
('GEC00011', 'Wacken Open Air', 'Hauptstraße', NULL, 'Wacken', 494822110, 'info@wacken.com', 'GEP00005');


INSERT INTO Location VALUES
('FRL00001', CURRENT_DATE - 8, '2025-07-02', 1567.89, 'FRC00001'),
('USL00005', '2020-09-05', '2024-09-05', 99999.99, 'USC00001'),
('GEL00004', '2024-10-18', '2024-10-31', 600.00, 'GEC00011'),
('JPL00001', '2024-12-30', '2025-06-03', 2789.12, 'JPC00001'),
('HUL00002', '2024-05-01', '2024-06-01', 49396.78, 'HUC00001'),
('BRL00006', '2024-03-12', '2024-05-07', 02479.15, 'BRC00001'),
('USL00004', '2024-12-30', '2025-10-03', 678, 'USC00003');


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
('PRD00001', 'Flexible Array F1 modèle 812', 'Enceinte ', 'Bose', 100, 'SPE00001'),
('PRD00002', 'HeavyFog2000C', 'Machine à fumer', 'SparklersClub', 120, 'SPE00002'),
('PRD00003', 'K3', 'Enceinte', 'L-acoustics', 200, 'SPE00003'),
('PRD00004', 'CSD-R7 Demo', 'Table de mixage', 'Yamaha', 300, 'SPE00004'),
('PRD00005', 'MA Lighting grandMA3 full-size', 'Console de éclairage', 'MA Lightning', 250, 'SPE00005'),
('PRD00006', 'FLX S48 1024 canaux console DMX', 'Console de éclairage', 'Zero 88', 75, 'SPE00006'),
('PRD00007', 'Midi-B FX', 'éclairage', 'CLAYPAKY', 99.9, 'SPE00007'),
('PRD00008', 'HY B-Eye K25 / TEATRO', 'éclairage', 'CLAYPAKY', 65, 'SPE00008');



INSERT INTO Appartient VALUES
('PRD00001', 'FRS00002', 15),
('PRD00002', 'ESS00001', 110),
('PRD00003', 'JPS00001', 70),
('PRD00004', 'GES00011', 0),
('PRD00005', 'BES00001', 70),
('PRD00006', 'UKS00001', 135),
('PRD00007', 'BRS00001', 380),
('PRD00008', 'BRS00001', 40),
('PRD00001','FRS00001', 15),
('PRD00005','HUS00001',0),
('PRD00002','USS00001',110),
('PRD00004','USS00002',0);


INSERT INTO Fournit VALUES
('FRF00001', 'PRD00001', '2023-01-12', 22, 1349),
('FRF00003', 'PRD00001', '2023-05-25', 5, 1400),
('USF00003', 'PRD00007', '2023-03-18', 200, 1500),
('JPF00001', 'PRD00004', '2023-08-23', 5, 7000),
('CNF00001', 'PRD00007', '2023-09-30', 200, 1500),
('USF00001', 'PRD00003', '2023-08-14', 70, 899.9),
('USF00002', 'PRD00005', '2023-05-07', 70, 6469),
('FRF00002', 'PRD00002', '2023-10-10', 100, 1200), 
('FRF00004', 'PRD00006', '2023-09-15', 75, 750),   
('FRF00005', 'PRD00008', '2023-11-01', 50, 650),   
('USF00002', 'PRD00002', '2023-08-20', 120, 1100),
('USF00001', 'PRD00006', '2023-12-01', 60, 800),
('FRF00004', 'PRD00004', '2023-09-11', 5, 6900);


INSERT INTO Contient VALUES
('PRD00001', 'FRL00001', 3),
('PRD00008', 'JPL00001', 10),
('PRD00004', 'JPL00001', 10),
('PRD00007', 'USL00004', 20),
('PRD00001', 'BRL00006', 10),
('PRD00002', 'USL00005', 2),
('PRD00006', 'GEL00004', 4),
('PRD00005', 'HUL00002', 7);