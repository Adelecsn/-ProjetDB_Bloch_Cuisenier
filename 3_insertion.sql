BEGIN;

-- ============================================================
-- 1) Tables SANS clés étrangères
-- ============================================================

-- 1.1 AEROPORT (15 lignes) — CODE_AEROPORT INTEGER
INSERT INTO AEROPORT (CODE_AEROPORT, NOM_AEROPORT, VILLE, PAYS) VALUES
(1001, 'Paris-Charles de Gaulle', 'Paris', 'France'),
(1002, 'Paris-Orly', 'Paris', 'France'),
(1003, 'Lyon-Saint-Exupéry', 'Lyon', 'France'),
(1004, 'Marseille-Provence', 'Marseille', 'France'),
(1005, 'Nice-Côte d''Azur', 'Nice', 'France'),
(1006, 'Toulouse-Blagnac', 'Toulouse', 'France'),
(1007, 'Nantes-Atlantique', 'Nantes', 'France'),
(1008, 'Bordeaux-Mérignac', 'Bordeaux', 'France'),
(1009, 'Lille-Lesquin', 'Lille', 'France'),
(1010, 'Genève Aéroport', 'Genève', 'Suisse'),
(1011, 'Bruxelles-National', 'Bruxelles', 'Belgique'),
(1012, 'Heathrow', 'Londres', 'Royaume-Uni'),
(1013, 'Frankfurt Airport', 'Francfort', 'Allemagne'),
(1014, 'Madrid-Barajas', 'Madrid', 'Espagne'),
(1015, 'Roma Fiumicino', 'Rome', 'Italie');

-- 1.2 COMPAGNIE (4 lignes)
INSERT INTO COMPAGNIE (ID_COMPAGNIE, PAYS_COMPAGNIE, NOM_COMPAGNIE) VALUES
(1, 'France', 'Air Hexagone'),
(2, 'Allemagne', 'LuftWelle'),
(3, 'Émirats Arabes Unis', 'EmirSky'),
(4, 'États-Unis', 'DeltaNorth');

-- 1.3 PILOTE (10 lignes) — auto-référence possible via ID_PIL_ENCADRE
INSERT INTO PILOTE (ID_PIL, NOM_PIL, PRENOM_PIL, DATE_NAISSANCE_PIL, ADRESSE, SALAIRE, PRIME, GRADE_PIL, NUM_LICENCE, DATE_VALIDITE_LICENCE, ID_PIL_ENCADRE) VALUES
(1, 'Martin', 'Claire', '1980-02-11', '12 Rue de la Paix, Paris', 72000, 6000, 'Commandant', 'FR-CM-1001', '2027-12-31', NULL),
(2, 'Keller', 'Johann', '1978-07-23', 'Goethestr. 5, Frankfurt', 74000, 6500, 'Commandant', 'DE-CM-2002', '2027-06-30', NULL),
(3, 'Al-Mansouri', 'Hassan', '1985-11-05', 'Palm Jumeirah, Dubai', 70000, 5000, 'Pilote Senior', 'AE-PS-3003', '2026-09-30', 1),
(4, 'Nguyen', 'Linh', '1990-03-18', '14 Hoan Kiem, Hanoi', 56000, 2500, 'Copilote', 'VN-CP-4004', '2026-05-31', 1),
(5, 'Rodríguez', 'María', '1987-12-28', 'Calle Mayor 3, Madrid', 59000, 3000, 'Pilote', 'ES-PI-5005', '2026-10-31', 2),
(6, 'O''Connor', 'Seán', '1983-04-09', '42 Dame St, Dublin', 61000, 3200, 'Pilote', 'IE-PI-6006', '2027-01-31', 2),
(7, 'Zhang', 'Wei', '1992-08-14', 'Pudong, Shanghai', 52000, 2000, 'Copilote', 'CN-CP-7007', '2026-12-31', 3),
(8, 'Diop', 'Amina', '1989-01-30', 'Plateau, Dakar', 55000, 2300, 'Pilote', 'SN-PI-8008', '2026-11-30', 1),
(9, 'Ivanov', 'Nikolai', '1981-06-22', 'Tverskaya 10, Moscou', 68000, 4000, 'Pilote Senior', 'RU-PS-9009', '2027-03-31', 2),
(10,'Smith', 'Alice', '1991-09-02', '221B Baker St, Londres', 54000, 2200, 'Copilote', 'UK-CP-1010', '2026-08-31', 5);

-- 1.4 RESERVATION (40 lignes) — CODE_RES = INTEGER ; STATUT_RES conforme
INSERT INTO RESERVATION (CODE_RES, DATE_RES, PLACE, CLASSE_VOYAGE, TARIF, STATUT_RES) VALUES
(2001,'2025-09-01','12A','Économie',120.00,'Confirmée'),
(2002,'2025-09-02','14C','Économie',98.50,'Confirmée'),
(2003,'2025-09-03','2D','Affaires',650.00,'En attente'),
(2004,'2025-09-03','1A','Première',1200.00,'Confirmée'),
(2005,'2025-09-04','22F','Économie',130.00,'Annulée'),
(2006,'2025-09-04','16B','Économie',115.00,'Confirmée'),
(2007,'2025-09-05','4A','Affaires',540.00,'Confirmée'),
(2008,'2025-09-05','7D','Affaires',520.00,'Confirmée'),
(2009,'2025-09-06','28C','Économie',95.00,'Confirmée'),
(2010,'2025-09-06','10F','Économie',110.00,'Confirmée'),
(2011,'2025-09-07','18B','Économie',105.00,'En attente'),
(2012,'2025-09-07','3C','Affaires',560.00,'Confirmée'),
(2013,'2025-09-08','6A','Affaires',600.00,'Confirmée'),
(2014,'2025-09-08','19E','Économie',108.00,'Confirmée'),
(2015,'2025-09-09','24D','Économie',99.00,'Confirmée'),
(2016,'2025-09-10','1C','Première',1150.00,'Confirmée'),
(2017,'2025-09-10','12F','Économie',102.00,'Confirmée'),
(2018,'2025-09-10','20A','Économie',111.00,'Confirmée'),
(2019,'2025-09-11','15E','Économie',109.00,'Confirmée'),
(2020,'2025-09-11','5B','Affaires',590.00,'Confirmée'),
(2021,'2025-09-12','21C','Économie',101.00,'Confirmée'),
(2022,'2025-09-12','8A','Affaires',555.00,'Confirmée'),
(2023,'2025-09-13','27F','Économie',97.00,'Confirmée'),
(2024,'2025-09-13','2A','Affaires',610.00,'Confirmée'),
(2025,'2025-09-14','26B','Économie',96.00,'Confirmée'),
(2026,'2025-09-14','3A','Affaires',580.00,'Confirmée'),
(2027,'2025-09-15','9C','Économie',103.00,'Confirmée'),
(2028,'2025-09-15','1B','Première',1180.00,'Confirmée'),
(2029,'2025-09-16','11D','Économie',112.00,'Confirmée'),
(2030,'2025-09-16','14A','Économie',99.50,'En attente'),
(2031,'2025-09-17','7B','Affaires',545.00,'Confirmée'),
(2032,'2025-09-17','25E','Économie',104.00,'Confirmée'),
(2033,'2025-09-18','13C','Économie',106.00,'Confirmée'),
(2034,'2025-09-18','4D','Affaires',605.00,'Confirmée'),
(2035,'2025-09-19','22A','Économie',100.00,'Confirmée'),
(2036,'2025-09-19','6D','Affaires',615.00,'Confirmée'),
(2037,'2025-09-20','17F','Économie',94.00,'Annulée'),
(2038,'2025-09-20','2B','Affaires',595.00,'Confirmée'),
(2039,'2025-09-21','23C','Économie',101.50,'Confirmée'),
(2040,'2025-09-21','1D','Première',1195.00,'Confirmée');

-- ============================================================
-- 2) Tables AVEC clés étrangères
-- ============================================================

-- 2.1 PISTE (8 lignes) — FK vers AEROPORT
INSERT INTO PISTE (ID_PISTE, LONGUEUR_PISTE, TYPE_SURFACE, ETAT_PISTE, CODE_AEROPORT) VALUES
(1, 4200, 'Asphalte', 'Ouverte', 1001),
(2, 3500, 'Béton',   'Ouverte', 1003),
(3, 3200, 'Asphalte', 'Ouverte', 1012),
(4, 3800, 'Asphalte', 'En travaux', 1013),
(5, 2700, 'Béton',   'Ouverte', 1005),
(6, 3100, 'Asphalte', 'Ouverte', 1014),
(7, 3000, 'Béton',   'Ouverte', 1015),
(8, 2500, 'Asphalte', 'Ouverte', 1011);

-- 2.2 AVION (12 lignes) — FK vers COMPAGNIE ; STATUT_OPERATIONNEL conforme
INSERT INTO AVION (NUM_AV, TYPE_AV, MODELE_AV, CAPACITE, STATUT_OPERATIONNEL, ID_COMPAGNIE) VALUES
(1, 'Narrow-body', 'A320neo', 180, 'Actif', 1),
(2, 'Wide-body',   'A350-900', 315, 'Actif', 1),
(3, 'Narrow-body', 'B737-8',  189, 'Actif', 4),
(4, 'Wide-body',   'B787-9',  290, 'Actif', 4),
(5, 'Wide-body',   'B777-300ER', 368, 'Actif', 3),
(6, 'Narrow-body', 'A321neo', 220, 'Actif', 2),
(7, 'Regional',    'E190-E2', 114, 'Actif', 1),
(8, 'Narrow-body', 'A220-300', 145, 'En maintenance', 2),
(9, 'Wide-body',   'A330-900', 287, 'Actif', 1),
(10,'Narrow-body', 'B737-9',  197, 'Actif', 4),
(11,'Wide-body',   'A380-800', 516, 'Retiré', 3),
(12,'Regional',    'ATR72-600', 72, 'Actif', 1);

-- 2.3 VOL (18 lignes) — NUM_VOL = CHAR(10) ; FKs vers PILOTE, AVION, COMPAGNIE, AEROPORT
-- STATUT_VOL ∈ ('Prévu','En vol','Arrivé','Annulé')
INSERT INTO VOL
(NUM_VOL, DATE_DEPART_PREVU, DATE_ARRIVEE_PREVU, HEURE_DEPART_PREVU, HEURE_ARRIVEE_PREVU, STATUT_VOL, ID_PIL, NUM_AV, ID_COMPAGNIE, CODE_AEROPORT, CODE_AEROPORT_1)
VALUES
('VL00010001','2025-10-18','2025-10-18','07:15','08:25','Prévu', 1, 1, 1, 1002, 1001),
('VL00010002','2025-10-18','2025-10-18','09:00','10:30','Prévu', 3, 2, 1, 1001, 1012),
('VL00010003','2025-10-18','2025-10-18','11:00','12:20','Prévu', 5, 6, 2, 1013, 1012),
('VL00010004','2025-10-18','2025-10-18','13:45','15:30','Prévu', 2, 9, 1, 1001, 1013),
('VL00010005','2025-10-18','2025-10-18','16:10','17:50','Prévu', 6, 3, 4, 1012, 1011),
('VL00010006','2025-10-18','2025-10-18','18:20','20:30','Prévu', 9, 4, 4, 1012, 1014),
('VL00010007','2025-10-19','2025-10-19','06:50','08:10','Prévu', 8, 7, 1, 1003, 1001),
('VL00010008','2025-10-19','2025-10-19','09:40','11:15','Prévu', 4, 8, 2, 1011, 1013),
('VL00010009','2025-10-19','2025-10-19','12:30','14:05','Prévu',10,10, 4, 1015, 1012),
('VL00010010','2025-10-19','2025-10-19','15:20','17:40','Prévu', 1, 1, 1, 1001, 1005),
('VL00010011','2025-10-19','2025-10-19','18:00','19:15','Prévu', 3, 2, 1, 1005, 1001),
('VL00010012','2025-10-20','2025-10-20','07:05','09:20','Prévu', 2, 9, 1, 1001, 1010),
('VL00010013','2025-10-20','2025-10-20','10:10','11:40','Prévu', 5, 6, 2, 1010, 1011),
('VL00010014','2025-10-20','2025-10-20','12:50','14:30','Prévu', 6, 3, 4, 1011, 1014),
('VL00010015','2025-10-20','2025-10-20','15:10','17:25','Prévu', 9, 4, 4, 1014, 1015),
('VL00010016','2025-10-20','2025-10-20','18:40','20:00','Prévu', 8, 7, 1, 1015, 1001),
('VL00010017','2025-10-21','2025-10-21','07:30','08:50','Prévu', 4, 8, 2, 1009, 1001),
('VL00010018','2025-10-21','2025-10-21','09:15','10:45','Prévu',10,10, 4, 1001, 1009);

-- 2.4 TERMINAL (5 lignes) — PK composite (CODE_RES, NUM_TERMINAL) ; FK vers RESERVATION
INSERT INTO TERMINAL (CODE_RES, NUM_TERMINAL, NUM_PORTE_EMBARQUEMENT) VALUES
(2004, 1, 'K21'),
(2008, 2, 'L07'),
(2016, 1, 'A01'),
(2028, 3, 'M15'),
(2040, 2, 'B09');

-- 2.5 BILLET (27 lignes) — FK vers RESERVATION ; TARIF_BILLET >= 0
INSERT INTO BILLET (ID_BILLET, CLASSE_BILLET, TARIF_BILLET, CODE_RES) VALUES
(1,'Économie',120.00,2001),
(2,'Économie',98.50,2002),
(3,'Affaires',650.00,2003),
(4,'Première',1200.00,2004),
(5,'Économie',115.00,2006),
(6,'Affaires',540.00,2007),
(7,'Affaires',520.00,2008),
(8,'Économie',95.00,2009),
(9,'Économie',110.00,2010),
(10,'Affaires',560.00,2012),
(11,'Affaires',600.00,2013),
(12,'Économie',108.00,2014),
(13,'Économie',99.00,2015),
(14,'Première',1150.00,2016),
(15,'Économie',102.00,2017),
(16,'Économie',111.00,2018),
(17,'Économie',109.00,2019),
(18,'Affaires',590.00,2020),
(19,'Économie',101.00,2021),
(20,'Affaires',555.00,2022),
(21,'Économie',97.00,2023),
(22,'Affaires',610.00,2024),
(23,'Économie',96.00,2025),
(24,'Affaires',580.00,2026),
(25,'Économie',103.00,2027),
(26,'Première',1180.00,2028),
(27,'Économie',112.00,2029);

-- 2.6 PAIEMENT (27 lignes) — FK vers BILLET ; MONTANT_PAIEMENT >= 0
INSERT INTO PAIEMENT (ID_BILLET, ID_PAIEMENT, MODE_PAIEMENT, DATE_PAIEMENT, MONTANT_PAIEMENT) VALUES
(1,  10001, 'Carte',    '2025-09-01', 120.00),
(2,  10002, 'Carte',    '2025-09-02', 98.50),
(3,  10003, 'Virement', '2025-09-03', 650.00),
(4,  10004, 'Carte',    '2025-09-03', 1200.00),
(5,  10005, 'Carte',    '2025-09-04', 115.00),
(6,  10006, 'Carte',    '2025-09-05', 540.00),
(7,  10007, 'Carte',    '2025-09-05', 520.00),
(8,  10008, 'Carte',    '2025-09-06', 95.00),
(9,  10009, 'Carte',    '2025-09-06', 110.00),
(10, 10010, 'Virement', '2025-09-07', 560.00),
(11, 10011, 'Carte',    '2025-09-08', 600.00),
(12, 10012, 'Carte',    '2025-09-08', 108.00),
(13, 10013, 'Carte',    '2025-09-09', 99.00),
(14, 10014, 'Carte',    '2025-09-10', 1150.00),
(15, 10015, 'Carte',    '2025-09-10', 102.00),
(16, 10016, 'Carte',    '2025-09-10', 111.00),
(17, 10017, 'Carte',    '2025-09-11', 109.00),
(18, 10018, 'Virement', '2025-09-11', 590.00),
(19, 10019, 'Carte',    '2025-09-12', 101.00),
(20, 10020, 'Carte',    '2025-09-12', 555.00),
(21, 10021, 'Carte',    '2025-09-13', 97.00),
(22, 10022, 'Virement', '2025-09-13', 610.00),
(23, 10023, 'Carte',    '2025-09-14', 96.00),
(24, 10024, 'Carte',    '2025-09-14', 580.00),
(25, 10025, 'Carte',    '2025-09-15', 103.00),
(26, 10026, 'Carte',    '2025-09-15', 1180.00),
(27, 10027, 'Carte',    '2025-09-16', 112.00);

-- 2.7 SERVICE_ADDITIONNEL (ex. 10 lignes) — FK vers RESERVATION ; PRIX_SERVICE >= 0
INSERT INTO SERVICE_ADDITIONNEL (CODE_RES, ID_SERVICE, SERVICE_ADI, PRIX_SERVICE) VALUES
(2001, 1, 'Bagage supplémentaire', 30.00),
(2004, 2, 'Salon VIP', 45.00),
(2007, 3, 'Siège XL', 20.00),
(2010, 4, 'Repas spécial', 15.00),
(2012, 5, 'Fast Track', 25.00),
(2016, 6, 'Chauffeur', 60.00),
(2020, 7, 'Siège hublot garanti', 10.00),
(2022, 8, 'Wi-Fi à bord', 12.00),
(2028, 9, 'Chauffeur', 60.00),
(2040,10,'Salon VIP', 45.00);

-- 2.8 LIEE_A (liaison VOL ↔ RESERVATION) — PK (NUM_VOL, CODE_RES)
INSERT INTO LIEE_A (NUM_VOL, CODE_RES) VALUES
('VL00010001',2001),
('VL00010002',2002),
('VL00010003',2003),
('VL00010004',2004),
('VL00010005',2006),
('VL00010006',2007),
('VL00010006',2008),
('VL00010005',2009),
('VL00010005',2010),
('VL00010004',2012),
('VL00010003',2013),
('VL00010001',2014),
('VL00010007',2015),
('VL00010010',2016),
('VL00010010',2017),
('VL00010012',2018),
('VL00010012',2019),
('VL00010012',2020),
('VL00010013',2021),
('VL00010013',2022),
('VL00010014',2023),
('VL00010014',2024),
('VL00010015',2025),
('VL00010015',2026),
('VL00010016',2027),
('VL00010016',2028),
('VL00010018',2029),
('VL00010018',2030),
('VL00010011',2031),
('VL00010011',2032),
('VL00010002',2033),
('VL00010003',2034),
('VL00010004',2035),
('VL00010006',2036),
('VL00010008',2037),
('VL00010008',2038),
('VL00010009',2039),
('VL00010009',2040);

-- 2.9 PASSAGER (ex. 30 lignes) — FK vers VOL ; EMAIL LIKE '%@%.%'
INSERT INTO PASSAGER
(ID_PASS, NOM_PASS, PRENOM_PASS, EMAIL, TELEPHONE, DATE_NAISSANCE, NATIONALITE, PROGRAMME_FIDELITE, PASSEPORT_NB, DEMANDE_SPECIAL, NUM_VOL)
VALUES
(1, 'Dubois','Élise','elise.dubois@example.fr','+33-612345678','1998-04-12','Française','HX-123','FR123456','Végétarien','VL00010001'),
(2, 'Hernández','Carlos','c.hernandez@example.es','+34-612345679','1992-10-03','Espagnole','HX-234','ES987654','Aucune','VL00010002'),
(3, 'Kim','Min-ji','minji.kim@example.kr','+82-1012345678','1996-06-21','Sud-coréenne','LW-111','KR112233','Fauteuil roulant','VL00010003'),
(4, 'Andersson','Lars','lars.andersson@example.se','+46-701234567','1985-01-18','Suédoise','ES-778','SE445566','Sans gluten','VL00010004'),
(5, 'Nguyen','Thu','thu.nguyen@example.vn','+84-901234567','1997-08-30','Vietnamienne','HX-345','VN556677','Aucune','VL00010005'),
(6, 'Okafor','Chinedu','c.okafor@example.ng','+234-8012345678','1990-03-11','Nigériane','ES-889','NG778899','Aucune','VL00010006'),
(7, 'Müller','Anna','anna.mueller@example.de','+49-151234567','1994-12-02','Allemande','LW-222','DE998877','Végétalien','VL00010007'),
(8, 'Singh','Arjun','arjun.singh@example.in','+91-9812345678','1993-05-19','Indienne','HX-456','IN667788','Aucune','VL00010008'),
(9, 'Kowalski','Zofia','z.kowalski@example.pl','+48-601234567','1995-11-15','Polonaise','HX-567','PL334455','Fauteuil roulant','VL00010009'),
(10,'Haddad','Youssef','youssef.haddad@example.ma','+212-612345678','1989-07-07','Marocaine','ES-990','MA223344','Repas halal','VL00010010'),
(11,'O''Brien','Siobhan','siobhan.obrien@example.ie','+353-861234567','1992-09-25','Irlandaise','LW-333','IE556644','Aucune','VL00010011'),
(12,'Johnson','Michael','m.johnson@example.us','+1-2025550111','1986-02-14','Américaine','DN-101','US998811','Aucune','VL00010012'),
(13,'Watanabe','Aiko','aiko.watanabe@example.jp','+81-801234567','1998-10-09','Japonaise','LW-444','JP113355','Sans lactose','VL00010013'),
(14,'Petrova','Elena','elena.petrova@example.ru','+7-9012345678','1987-03-22','Russe','LW-555','RU667799','Aucune','VL00010014'),
(15,'Borges','Tiago','tiago.borges@example.pt','+351-912345678','1993-01-05','Portugaise','HX-678','PT224466','Aucune','VL00010015'),
(16,'Ali','Sara','sara.ali@example.ae','+971-501234567','1999-04-28','Émiratie','ES-223','AE889900','Aucune','VL00010016'),
(17,'Fernández','Lucía','lucia.fernandez@example.ar','+54-9112345678','1997-12-19','Argentine','LW-666','AR556677','Aucune','VL00010017'),
(18,'Zhou','Chen','chen.zhou@example.cn','+86-13123456789','1991-06-03','Chinoise','HX-789','CN445566','Aucune','VL00010018'),
(19,'Hassan','Leila','leila.hassan@example.eg','+20-1001234567','1994-07-17','Égyptienne','HX-790','EG778899','Repas végétarien','VL00010012'),
(20,'Rossi','Marco','marco.rossi@example.it','+39-3312345678','1990-11-29','Italienne','DN-202','IT334422','Aucune','VL00010015'),
(21,'García','Inés','ines.garcia@example.es','+34-611111111','1998-02-08','Espagnole','HX-791','ES445522','Aucune','VL00010001'),
(22,'Khan','Aisha','aisha.khan@example.pk','+92-3012345678','1995-09-13','Pakistanaise','LW-667','PK998822','Aucune','VL00010002'),
(23,'Smith','Oliver','oliver.smith@example.uk','+44-7400123456','1993-04-04','Britannique','DN-303','UK123789','Aucune','VL00010003'),
(24,'Benali','Maya','maya.benali@example.dz','+213-661234567','1996-05-21','Algérienne','HX-792','DZ556633','Aucune','VL00010004'),
(25,'Yam','Ka-yee','ka.yee.yam@example.hk','+852-61234567','1992-03-12','Hongkongaise','LW-777','HK443322','Aucune','VL00010005'),
(26,'Silva','Bruno','bruno.silva@example.br','+55-2191234567','1988-08-08','Brésilienne','DN-404','BR667700','Aucune','VL00010006'),
(27,'Nowak','Piotr','piotr.nowak@example.pl','+48-602222222','1987-02-02','Polonaise','HX-793','PL123987','Aucune','VL00010007'),
(28,'Tahiri','Yasmina','yasmina.tahiri@example.ma','+212-699999999','1994-01-31','Marocaine','LW-888','MA998800','Aucune','VL00010008'),
(29,'Kovačić','Ivan','ivan.kovacic@example.hr','+385-911234567','1991-12-12','Croate','DN-505','HR222333','Aucune','VL00010009'),
(30,'Dupont','Noah','noah.dupont@example.fr','+33-645678901','2000-07-23','Française','HX-794','FR765432','Aucune','VL00010010');

-- 2.10 BAGAGE (ex. 20 lignes) — PK (ID_PASS, ID_BAG) ; POIDS 0..50
INSERT INTO BAGAGE (ID_PASS, ID_BAG, POIDS, SURTAXE, TYPE_BAGAGE, STATUT_BAGAGE) VALUES
(1, 1, 18.5, 0.00, 'Valise', 'Enregistré'),
(2, 1, 22.0, 0.00, 'Valise', 'Enregistré'),
(3, 1, 8.0,  0.00, 'Cabine', 'En cabine'),
(4, 1, 24.0, 0.00, 'Valise', 'Enregistré'),
(5, 1, 19.0, 0.00, 'Valise', 'Enregistré'),
(6, 1, 12.0, 0.00, 'Cabine', 'En cabine'),
(7, 1, 23.0, 0.00, 'Valise', 'Enregistré'),
(8, 1, 20.0, 0.00, 'Valise', 'Enregistré'),
(9, 1, 9.0,  0.00, 'Cabine', 'En cabine'),
(10,1, 25.0, 0.00, 'Valise', 'Enregistré'),
(11,1, 7.0,  0.00, 'Cabine', 'En cabine'),
(12,1, 21.0, 0.00, 'Valise', 'Enregistré'),
(13,1, 10.0, 0.00, 'Cabine', 'En cabine'),
(14,1, 18.0, 0.00, 'Valise', 'Enregistré'),
(15,1, 22.5, 0.00, 'Valise', 'Enregistré'),
(16,1, 11.0, 0.00, 'Cabine', 'En cabine'),
(17,1, 23.5, 0.00, 'Valise', 'Enregistré'),
(18,1, 19.5, 0.00, 'Valise', 'Enregistré'),
(19,1, 8.5,  0.00, 'Cabine', 'En cabine'),
(20,1, 24.0, 0.00, 'Valise', 'Enregistré');

-- 2.11 MAINTENANCE (ex. 8 lignes) — PK (NUM_AV, ID_MAINT) ; COUT >= 0
INSERT INTO MAINTENANCE (NUM_AV, ID_MAINT, DATE_MAINT, TYPE_MAINT, COUT) VALUES
(8,  1, '2025-09-10', 'Révision A', 15000.00),
(11, 1, '2025-08-22', 'Inspection structure', 80000.00),
(2,  1, '2025-09-05', 'Changement roues', 12000.00),
(3,  1, '2025-09-15', 'Révision B', 22000.00),
(5,  1, '2025-09-12', 'Inspection moteurs', 95000.00),
(7,  1, '2025-09-20', 'Mise à jour avionique', 18000.00),
(9,  1, '2025-09-25', 'Révision A', 16000.00),
(1,  1, '2025-09-28', 'Inspection cabine', 7000.00);

-- 2.12 Vol_ESCALE_AEROPORT (ex. 10 lignes) — PK composite ; FKs vers AEROPORT, VOL, PISTE
INSERT INTO Vol_ESCALE_AEROPORT (CODE_AEROPORT, NUM_VOL, ID_PISTE, HEURE_ARRIVEE_ESCALE, HEURE_DEPART_ESCALE) VALUES
(1013, 'VL00010002', 4, '11:10','11:55'),
(1012, 'VL00010003', 3, '12:25','13:10'),
(1011, 'VL00010005', 8, '17:55','18:25'),
(1014, 'VL00010006', 6, '20:35','21:10'),
(1001, 'VL00010007', 1, '08:15','08:50'),
(1013, 'VL00010008', 4, '11:20','11:50'),
(1012, 'VL00010009', 3, '14:10','14:45'),
(1005, 'VL00010010', 5, '17:45','18:20'),
(1001, 'VL00010011', 1, '19:20','19:55'),
(1010, 'VL00010012', 2, '09:25','09:55');

COMMIT;
