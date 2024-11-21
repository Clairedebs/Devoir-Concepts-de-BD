USE DATABASE centre_de_formation;

-- Insertion des donnees dans la table Etudiant
INSERT INTO `etudiant`(`NumCINEtu`, `nomEtu`, `prenomEtu`, `dateNaissance`, `adresseEtu`, `villeEtu`, `niveauEtu`) 
VALUES 
('AB234567','Alami','Ahmad','1986-01-01','Rue du poort, 13','Tanger','Bac'),
('G5346789', 'Toumi', 'Aicha', '2000-12-03', 'N12 immeuble Jaouhara', 'Casablanca', 'Master'),
('C0987265', 'Souni', 'Sanaa', '1998-04-30', 'Place du peuple n 2', 'Tanger', 'Niveau bac'),
('D2356903', 'Idrissi Alami', 'Mohammed', '1996-05-05', 'Lotissement najah, rue n 12 immeuble 3', 'Rabat', 'Bac+4'),
('Y1234987', 'Ouled thami', 'Ali', '1979-12-04','La ville haute, rue choudada n 6', 'Tanger', 'Bachelor'),
('J3578902', 'Ben Omar', 'Abd Allah', '1990-06-25', 'n12 bir rami Immeuble iftikhar, n 13 ettakaddoum', 'Kenitra', 'Phd'),
('F9827363', 'Boudiaf', 'Fatima Zohra','Immeuble iftikhar n 13 ettkadoum', '1997-10-01', 'Rabat', 'Bac +2');

-- Insertion des donnees dans la table formation
INSERT INTO `formation`(`codeForm`, `titreForm`, `dureeForm`, `prixForm`)
VALUES 
('11','Programming Java','12','3600'),
('12','Web developpment','14','4200'),
('13','Anglais Technique','15','3750'),
('14','Communication','10','2500'),
('15','Base de donnees Oracle','20','6000'),
('16','Soft skills','12','3000');

-- Insertion de donnees dans la table session
INSERT INTO `session`(`codeSess`, `nomSess`, `dateDebut`, `dateFin`, `codeForm`) VALUES 
(1101, 'Session1101', '2022-01-02', '2022-01-14', 11),
(1102, 'Session 1102', '2022-02-03', '2022-02-15', 11),
(1201, 'Session 1201', '2022-03-04', '2022-03-18', 12),
(1202, 'Session 1202', '2022-04-05', '2022-04-19', 12),
(1301, 'Session 1301', '2022-05-06', '2022-05-21', 13),
(1302, 'Session 1302', '2022-06-07', '2022-06-22', 13),
(1303, 'Session 1303', '2022-07-08', '2022-07-23', 13),
(1401, 'Session 1401', '2022-08-09', '2022-08-11', 14),
(1402, 'Session 1402', '2022-09-08', '2022-09-18', 14),
(1501, 'Session 1501', '2022-10-11', '2022-10-12', 15),
(1502, 'Session 1502', '2022-11-12', '2022-12-02', 15),
(1601, 'Session 1601', '2022-12-13', '2022-12-25', 16),
(1602, 'Session 1602', '2023-01-14', '2023-01-26', 16),
(1104, 'Session 1104', '2023-02-15', '2023-02-27', 11),
(1203, 'Session 1203', '2023-03-16', '2023-03-30', 12),
(1204, 'Session 1204', '2023-04-17', '2023-04-31', 12);

-- Insertions de donnees dans la table Specialite
INSERT INTO SPECIALITE ('codeSpec', 'nomSpec', 'descSpec', 'Active') VALUES
    (101, 'GL', 'Genie logiciel et developpement', 1),
    (102, 'Data', 'Data engineering', 1),
    (103, 'Anglais', 'Anglais, Francais', 1),
    (104, 'Communication', 'Communication', 1),
    (105, 'Securite', 'Reseaux et securite', 0);

-- Insertions de donnees dans la table appqrtient
INSERT INTO `appartient`(`codeSpec`,`codeForm`) VALUES 
(101, 11), 
(101, 12), 
(102, 15), 
(101, 15), 
(103, 13), 
(104, 13), 
(104, 14), 
(104, 16);

-- Insertions de donnees dans la table estInscrit
INSERT INTO `estinscrit`(`NumCINEtu`, `codeSess`, `TypeCours`) VALUES 
   (1101, 'AB234567', 'Distanciel'),
    (1101, 'G5346789', 'Distanciel'),
    (1101, 'C0987265', 'Distanciel'),
    (1101, 'D2356903', 'Distanciel'),
    (1101, 'Y1234987', 'Distanciel'),
    (1101, 'J3578902', 'Distanciel'),
    (1101, 'F9827363', 'Distanciel'),
    (1201, 'AB234567', 'Présentiel'),
    (1201, 'G5346789', 'Présentiel'),
    (1201, 'C0987265', 'Présentiel'),
    (1201, 'D2356903', 'Présentiel'),
    (1201, 'Y1234987', 'Présentiel'),
    (1302, 'AB234567', 'Présentiel'),
    (1302, 'GS346789', 'Distanciel'),
    (1302, 'C0987265', 'Présentiel'),
    (1302, 'D2356903', 'Présentiel'),
    (1302, 'Y1234987', 'Distanciel'),
    (1401, 'G5346789', 'Distanciel'),
    (1401, 'C0987265', 'Distanciel'),
    (1401, 'D2356903', 'Distanciel'),
    (1401, 'Y1234987', 'Distanciel'),
    (1401, 'F9827363', 'Distanciel'),
    (1501, 'AB234567', 'Distanciel'),
    (1501, 'G5346789', 'Présentiel'),
    (1501, 'C0987265', 'Présentiel'),
    (1501, 'D2356903', 'Présentiel'),
    (1501, 'J3578902', 'Présentiel');

-- Faire des mofications sur la table etudiant
UPDATE ETUDIANT
SET niveauEtu = 'Bac+ 5'
WHERE niveauEtu = 'Master';

UPDATE ETUDIANT
SET niveauEtu = 'Bac+ 4'
WHERE niveauEtu = 'Bachelor';

UPDATE ETUDIANT
SET niveauEtu = 'Doctorat'
WHERE niveauEtu = 'Phd';

-- Changer le nom d'une formation
UPDATE formation 
SET titreForm = 'developpement java' 
WHERE codeForm = 11

-- Ajouter la colonne numInscription
ALTER TABLE estInscrit
ADD COLUMN numInscription VARCHAR(100);
 
-- Ajouter les valeurs dans la colonne numInscription en concantenant deux colonnes
UPDATE estInscrit
SET numInscription = CONCAT(codeSes, NumCINEtu);

-- Changer la date de naissance et la ville de l'etudiant Alami
UPDATE etudiant 
SET `dateNaissance`='1987-01-02',`villeEtu`='Kenitra' 
WHERE etudiant.nomEtu = "Alami";

-- Rendre les cours de Aicha Distanciel
UPDATE estinscrit,etudiant
SET TypeCours ='Distantiel' 
WHERE etudiant.nomEtu = "Aicha";

