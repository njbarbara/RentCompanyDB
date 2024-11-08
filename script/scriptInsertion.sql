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


INSERT INTO location VALUES
('LCFR0001', '0224-06-25', '2024-07-02', 01567.89, 'FRC00001'),
('LCUS0005', '2020-09-05', '2024-09-05', 99999.99, 'USC00001'),
('LCGE0004', '2024-10-18', '2024-10-31', 00600.00, 'GEC00011'),
('LCJP0001', '2024-12-30', '2025-01-03', 02789.12, 'JPC00001'),
('LCHU0002', '2024-05-01', '2024-06-01', 49396.78, 'HUC00001'),
('LCBR0006', '2024-03-12', '2024-05-07', 02479.15, 'BRC00001');


INSERT INTO Produit VALUES
('P001', 'Enceinte', 'Sonorisation', 'Bose', 'EN-100', 150.00, 'LCGE0004'),
('P002', 'Canon à fumée', 'Effets spéciaux', 'SmokeMaster', 'CF-200', 300.00, 'LCUS0005'),
('P003', 'Projecteur LED', 'Éclairage', 'Philips', 'PJ-300', 200.00, 'LCHU0002'),
('P004', 'Table de mixage', 'Sonorisation', 'Pioneer', 'TM-400', 500.00, 'LCHU0002'),
('P005', 'Micro sans fil', 'Sonorisation', 'Shure', 'MS-500', 120.00, 'LCFR0001'),
('P006', 'Machine à bulles', 'Effets spéciaux', 'BubblePro', 'MB-600', 180.00, 'LCBR0006'),
('P007', 'Machine à mousse', 'Effets spéciaux', 'Foamtastik', 'MR-260', 180.00, 'LCJP0001');



INSERT INTO Appartient VALUES
('P001', 'LCGE0004'),
('P002', 'LCUS0005'),
('P003','LCHU0002'),
('P004', 'LCHU0002'),
('P005', 'LCFR0001'),
('P006','LCBR0006'),
('P007','LCJP0001');


