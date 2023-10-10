CREATE DATABASE lez_its_03_ecommerce;
USE lez_its_03_ecommerce;

CREATE TABLE Prodotto(
	prodottoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(10) NOT NULL UNIQUE,
    nome VARCHAR(250) NOT NULL,
    descrizione TEXT,
    prezzo FLOAT DEFAULT 1.0,
    data_inserimento DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Prodotto(codice, nome, descrizione, prezzo) VALUES
("BB1234", "Biscotti", "Molto buoni", 2.5),
("AC122", "Acqua", "Dissetante", 0.25),
("AC113", "Acqua Frizzante", null, 0.26);

SELECT * FROM Prodotto WHERE nome = "Acqua";
SELECT * FROM Prodotto WHERE prezzo > 1;

-- Inizia per Ac
SELECT * FROM Prodotto WHERE nome LIKE "Ac%";
-- Finisce per te
SELECT * FROM Prodotto WHERE nome LIKE "%te";
-- All'interno della frase contiene "ua"
SELECT * FROM Prodotto WHERE nome LIKE "%ua%";


SELECT * FROM Prodotto WHERE nome LIKE "%ua%" AND prezzo = 0.25;
SELECT * FROM Prodotto WHERE prezzo > 0.10 AND prezzo < 0.5;

SELECT * FROM Prodotto WHERE nome = "Acqua" OR nome = "Biscotti";