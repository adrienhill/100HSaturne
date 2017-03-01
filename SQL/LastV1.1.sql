CREATE TABLE categorie(
	idCategorie int(11) NOT NULL AUTO_INCREMENT,
	titreCategorie varchar(50) NOT NULL,
	PRIMARY KEY (idCategorie)
);

CREATE TABLE publication(
	idPublication int(11) NOT NULL AUTO_INCREMENT,
	titrePublication varchar(30) NOT NULL,
    datePublication date NOT NULL,
    lienPublication varchar(5000) NOT NULL,
	PRIMARY KEY (idPublication)
);

CREATE TABLE video(
	idVideo int(11) NOT NULL AUTO_INCREMENT,
	titreVideo varchar(30) NOT NULL,
	dateVideo date NOT NULL,
	PRIMARY KEY (idVideo)
);

CREATE TABLE evenement(
	idEvenement int(11) NOT NULL AUTO_INCREMENT,
	titreEvenement varchar(30) NOT NULL,
	lieuEvenement varchar(50) NOT NULL,
    datedebutEvenement date NOT NULL,
    datefinEvenement date NOT NULL,
	PRIMARY KEY (idEvenement)
);

CREATE TABLE etudiant(
	idEtudiant int(11) NOT NULL AUTO_INCREMENT,
	mailEtudiant varchar(30) NOT NULL,
	mdpEtudiant varchar(50) NOT NULL,
	PRIMARY KEY (idEtudiant)
);




ALTER TABLE publication ADD idCategorie INT(11) NOT NULL;
ALTER TABLE publication ADD CONSTRAINT idCategorieFK FOREIGN KEY (idCategorie) REFERENCES categorie(idCategorie);

ALTER TABLE evenement ADD idCategorie INT(11) NOT NULL;
ALTER TABLE evenement ADD CONSTRAINT idCategorieFK2 FOREIGN KEY (idCategorie) REFERENCES categorie(idCategorie);

ALTER TABLE video ADD idEtudiant INT(11) NOT NULL;
ALTER TABLE video ADD CONSTRAINT idEtudiantFK3 FOREIGN KEY (idEtudiant) REFERENCES etudiant(idEtudiant);

ALTER TABLE video ADD idEvenement INT(11) NOT NULL;
ALTER TABLE video ADD CONSTRAINT idEvenementFK FOREIGN KEY (idEvenement) REFERENCES evenement(idEvenement);