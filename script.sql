CREATE DATABASE Hollywood;

CREATE TABLE Acteur(
   id INT,
   taille DECIMAL(3,1),
   poids DECIMAL(4,1),
   nomActeur VARCHAR(50),
   prenomActeur VARCHAR(50),
   dateNais DATE,
   PRIMARY KEY(id)
);

CREATE TABLE Film(
   id INT,
   titreFilm VARCHAR(100),
   realisateur VARCHAR(50),
   scenariste VARCHAR(50),
   anneeSortie DATE,
   id_1 INT NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(id_1),
   FOREIGN KEY(id_1) REFERENCES Film(id)
);

CREATE TABLE Producteur(
   id INT,
   nomProducteur VARCHAR(50),
   adresseProd VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE Renumeration(
   id INT,
   annee DATE,
   PRIMARY KEY(id)
);

CREATE TABLE Finance(
   id INT,
   id_1 INT,
   MontantFin INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Film(id),
   FOREIGN KEY(id_1) REFERENCES Producteur(id)
);

CREATE TABLE est_remunerer(
   id INT,
   id_1 INT,
   cachet INT,
   pourcentage DECIMAL(15,2),
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Acteur(id),
   FOREIGN KEY(id_1) REFERENCES Film(id)
);

CREATE TABLE Gagne(
   id INT,
   Revenus INT,
   id_1 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id) REFERENCES Acteur(id),
   FOREIGN KEY(id_1) REFERENCES Renumeration(id)
);
