/*Ce script n'est pas abouti et contient des erreurs (!!!)*/
/*ajouter des contraintes de tbales*/
/*rajouter #idlocation dans produit MLD*/

DROP TABLE Possede;
DROP TABLE Fournit;
DROP TABLE Appartient;
DROP TABLE Produit;
DROP TABLE Location;
DROP TABLE Client;
DROP TABLE Stock;
DROP TABLE Specificite;
DROP TABLE Fournisseur;

CREATE TABLE Fournisseur(
    idFournisseur varchar(30) PRIMARY KEY,
    nomFournisseur varchar(30),
    codePostal numeric(6),
    ville varchar(30),
    pays varchar(30),
    email varchar(30),
    rue varchar(30),
    noTel numeric(20)
);

CREATE TABLE Specificite(
    idSpecifite varchar(30) PRIMARY KEY,
    puissanceSonore numeric(6,2),
    amperage numeric(6,2),
    puissanceLumineuse numeric(6,2)
);

CREATE TABLE Stock(
    idStock varchar(30) PRIMARY KEY,
    quantiteDisponible numeric(10),
    rue varchar(30),
    codePostal numeric(6),
    ville varchar(30),
    pays varchar(30)
);

CREATE TABLE Client(
    idClient varchar(30) PRIMARY KEY,
    nomClient varchar(30),
    rue varchar(30),
    codePostal numeric(6),
    ville varchar(30),
    pays varchar(30),
    noTel numeric(20),
    email varchar(30)
);

CREATE TABLE Location(
    idLocation varchar(30) PRIMARY KEY,
    dateDebut date NOT NULL,
    dateFin date, 
    prix numeric(6,2) NOT NULL,
    idClient varchar(30),
    FOREIGN KEY (idClient) REFERENCES Client(idClient)
);

/*quantité ?*/
CREATE TABLE Produit(
    idProduit varchar(30) PRIMARY KEY,
    nomProduit varchar(30),
    typeProduit varchar(30),
    marque varchar(30),
    reference varchar(30),
    prix numeric(6,2),
    quantite numeric(5),
    idLocation varchar(30),
    FOREIGN KEY (idLocation) REFERENCES Location(idLocation)
);

CREATE TABLE Appartient(
    idProduit varchar(30),
    idStock varchar(30),
    PRIMARY KEY(idProduit, idStock),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idStock) REFERENCES Stock(idStock)
);

CREATE TABLE Fournit(
    idFournisseur varchar(30),
    idProduit varchar(30),
    PRIMARY KEY(idProduit, idFournisseur),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idFournisseur) REFERENCES Fournisseur(idFournisseur)
);

CREATE TABLE Possede(
    idProduit varchar(30),
    idSpecifite varchar(30),
    PRIMARY KEY(idProduit, idSpecifite),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idSpecifite) REFERENCES Specificite(idSpecifite)
);

\d
