DROP TABLE Possede;
DROP TABLE Fournit;
DROP TABLE Appartient;
DROP TABLE Produit;
DROP TABLE Location;
DROP TABLE Client;
DROP TABLE Stock;
DROP TABLE Specificite;
DROP TABLE Fournisseur;

/*
Modif : 
- tous les id sont des char
- ajout de la date dans la table fournir
- num de tel pas nécessaire
*/

/*
A faire : 
- ajouter date à la table fournir sur le mcd
- retirer la quantité au produit sur le mcd
- continuer les insertions
- ajout de contraintes (supplémentaires)
*/

CREATE TABLE Fournisseur(
    idFournisseur char(8) PRIMARY KEY,
    nomFournisseur varchar(30) NOT NULL UNIQUE,
    codePostal numeric(10),
    ville varchar(30),
    pays varchar(30) NOT NULL,
    email varchar(30),
    rue varchar(30) NOT NULL,
    noTel numeric(20),
    CHECK(noTel IS NOT NULL OR email IS NOT NULL)
);

CREATE TABLE Specificite(
    idSpecifite char(8) PRIMARY KEY,
    puissanceSonore numeric(6,2) DEFAULT NULL,
    amperage numeric(6,2) DEFAULT NULL,
    puissanceLumineuse numeric(6,2) DEFAULT NULL
);

/*Pk quantité ?, on peut faire un count dans le select pour compter les produits*/
CREATE TABLE Stock(
    idStock char(8) PRIMARY KEY,
    rue varchar(30),
    codePostal numeric(10),
    ville varchar(30) NOT NULL,
    pays varchar(30) NOT NULL
);

CREATE TABLE Client(
    idClient char(8) PRIMARY KEY,
    nomClient varchar(30) NOT NULL UNIQUE,
    rue varchar(30) NOT NULL,
    codePostal numeric(10),
    ville varchar(30) NOT NULL,
    pays varchar(30) NOT NULL,
    noTel numeric(20),
    email varchar(40),
    CHECK(noTel IS NOT NULL OR email IS NOT NULL)

);

CREATE TABLE Location(
    idLocation char(8) PRIMARY KEY,
    dateDebut date NOT NULL,
    dateFin date NOT NULL, 
    prix numeric(7,2) NOT NULL,
    idClient char(10),
    FOREIGN KEY (idClient) REFERENCES Client(idClient)
); 

/*Pk quantité ?, on peut faire un count dans le select pour compter les produits*/
CREATE TABLE Produit(
    idProduit char(8) PRIMARY KEY,
    nomProduit varchar(30) NOT NULL,
    typeProduit varchar(30) NOT NULL,
    marque varchar(30) NOT NULL,
    prix numeric(8,2) NOT NULL,
    idLocation char(20),
    FOREIGN KEY (idLocation) REFERENCES Location(idLocation)
);

CREATE TABLE Appartient(
    idProduit char(8),
    idStock char(8),
    PRIMARY KEY(idProduit, idStock),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idStock) REFERENCES Stock(idStock)
);

CREATE TABLE Fournit(
    idFournisseur char(8),
    idProduit char(8),
    DateFournit date,
    quantite numeric(6),
    PRIMARY KEY(idProduit, idFournisseur),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idFournisseur) REFERENCES Fournisseur(idFournisseur)
);

CREATE TABLE Contient(
    idProduit char(8),
    idLocation char(8),
    quantite numeric(6),
    PRIMARY KEY(idProduit, idLocation),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idLocation) REFERENCES Location(idLocation)    
);

CREATE TABLE Possede(
    idProduit char(8),
    idSpecifite varchar(8),
    PRIMARY KEY(idProduit, idSpecifite),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idSpecifite) REFERENCES Specificite(idSpecifite)
);

\d
