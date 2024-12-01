DROP TABLE Contient;
DROP TABLE Fournit;
DROP TABLE Appartient;
DROP TABLE Location;
DROP TABLE Stock;
DROP TABLE Client;
DROP TABLE Fournisseur;
DROP TABLE Produit;
DROP TABLE Specificite;
DROP TABLE Pays;


/*
L’étude du système d’information porte sur :
— la location des produits aux clients,
— la gestion des stocks de ces produits,
— la gestion des clients,
— la gestion des fournisseurs de ces produits.
*/

CREATE TABLE Pays(
    idPays char(8) PRIMARY KEY,
    pays varchar(30) NOT NULL,
    tva numeric(3,2) NOT NULL
);



CREATE TABLE Fournisseur(
    idFournisseur char(8) PRIMARY KEY,
    nomFournisseur varchar(30) NOT NULL UNIQUE,
    codePostal numeric(10),
    ville varchar(30),
    email varchar(30),
    rue varchar(30) NOT NULL,
    noTel numeric(20),
    idPays char(8),
    FOREIGN KEY (idPays) REFERENCES Pays(idPays),
    CHECK(noTel IS NOT NULL OR email IS NOT NULL)
);

CREATE TABLE Specificite(
    idSpecificite char(8) PRIMARY KEY,
    puissanceElectrique numeric(8,2) DEFAULT NULL,
    puissanceSonore numeric(8,2) DEFAULT NULL,
    puissanceLumineuse numeric(8,2) DEFAULT NULL
);

CREATE TABLE Stock(
    idStock char(8) PRIMARY KEY,
    rue varchar(30),
    codePostal numeric(10),
    ville varchar(30) NOT NULL,
    idPays char(8),
    FOREIGN KEY (idPays) REFERENCES Pays(idPays)
);

CREATE TABLE Client(
    idClient char(8) PRIMARY KEY,
    nomClient varchar(30) NOT NULL UNIQUE,
    rue varchar(30) NOT NULL,
    codePostal numeric(10),
    ville varchar(30) NOT NULL,
    noTel numeric(20),
    email varchar(40),        
    idPays char(8),
    CHECK(noTel IS NOT NULL OR email IS NOT NULL),
    FOREIGN KEY (idPays) REFERENCES Pays(idPays)
);

CREATE TABLE Location(
    idLocation char(8) PRIMARY KEY,
    dateDebut date NOT NULL,
    dateFin date NOT NULL, 
    prixHT numeric(7,2) NOT NULL,
    idClient char(8),
    FOREIGN KEY (idClient) REFERENCES Client(idClient),
    CHECK (dateDebut < dateFin AND prixHT >= 0)
); 


CREATE TABLE Produit(
    idProduit char(8) PRIMARY KEY,
    nomProduit varchar(40) NOT NULL,
    typeProduit varchar(40) NOT NULL,
    marque varchar(30) NOT NULL,
    prixHT numeric(8,2) NOT NULL,
    idSpecificite char(8),
    FOREIGN KEY (idSpecificite) REFERENCES Specificite(idSpecificite),
    CHECK (prixHT >= 0)
);

CREATE TABLE Appartient(
    idProduit char(8),
    idStock char(8),
    quantite numeric(6),
    PRIMARY KEY(idProduit, idStock),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idStock) REFERENCES Stock(idStock),
    CHECK (quantite >= 0)
);

CREATE TABLE Fournit(
    idFournisseur char(8),
    idProduit char(8),
    DateFournit date,
    quantite numeric(6),
    prixHT numeric(8,2) NOT NULL,
    PRIMARY KEY(idProduit, idFournisseur),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idFournisseur) REFERENCES Fournisseur(idFournisseur), 
    CHECK (quantite >= 0 AND DateFournit <= CURRENT_DATE)
);

CREATE TABLE Contient(
    idProduit char(8),
    idLocation char(8),
    quantite numeric(6),
    PRIMARY KEY(idProduit, idLocation),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idLocation) REFERENCES Location(idLocation),
    CHECK (quantite > 0) 
);

\d
