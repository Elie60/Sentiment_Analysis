-- TABLE
CREATE TABLE Article
(noArticle INTEGER NOT NULL,
description VARCHAR(20),
prixUnitaire DECIMAL(10,2) NOT NULL,
quantitéEnStock INTEGER DEFAULT 0 NOT NULL
CHECK (quantitéEnStock >= 0),
PRIMARY KEY (noArticle));
CREATE TABLE Client (noClient INTEGER NOT NULL, nomClient VARCHAR(20) NOT NULL,noTéléphone VARCHAR(15) NOT NULL,PRIMARY KEY (noClient));
CREATE TABLE Commande (noCommande INTEGER NOT NULL, dateCommande DATE NOT NULL, noClient INTEGER NOT NULL, PRIMARY KEY (noCommande),FOREIGN  KEY (noClient) REFERENCES Client );
CREATE TABLE DétailLivraison
(noLivraison INTEGER NOT NULL,
noCommande INTEGER NOT NULL,
noArticle INTEGER NOT NULL,
quantitéLivrée INTEGER NOT NULL
CHECK (quantitéLivrée > 0),
PRIMARY KEY (noLivraison, noCommande, noArticle),
FOREIGN KEY (noLivraison) REFERENCES Livraison,
FOREIGN KEY (noCommande, noArticle) REFERENCES LigneCommande);
CREATE TABLE LigneCommande (noCommande INTEGER NOT NULL,noArticle INTEGER NOT NULL, quantité INTEGER NOT NULL CHECK (quantité > 0), PRIMARY KEY (noCommande, noArticle), FOREIGN KEY (noCommande) REFERENCES Commande, FOREIGN KEY (noArticle) REFERENCES Article );
CREATE TABLE Livraison (noLivraison INTEGER NOT NULL, dateLivraison DATE NOT NULL, PRIMARY KEY (noLivraison));
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
