-- DDL
CREATE DATABASE lez_recap00_negozio;
USE lez_recap00_negozio;

DROP TABLE IF EXISTS Prodotto;
CREATE TABLE Prodotto(
	prodottoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    descrizione TEXT,
    categoria VARCHAR(50) CHECK ( categoria IN ("Bricolage", "Illuminazione") ) ,
    quantita INTEGER CHECK (quantita >= 0),
    prezzo FLOAT CHECK (prezzo >= 0)
);

-- DML
INSERT INTO Prodotto(nome, descrizione, categoria, quantita, prezzo) VALUES
("Vite", "Da vino...", "Bricolage", 98, 0.25);

INSERT INTO Prodotto(nome, descrizione, categoria, quantita, prezzo) VALUES
("Giravite", "Prova", "Bricolage", 11, 12.55);

INSERT INTO Prodotto(nome, descrizione, categoria, quantita, prezzo) VALUES
("Lampada", "Prova", "Illuminazione", 1, 23.55);

-- QL
SELECT * FROM Prodotto;
SELECT nome, descrizione FROM Prodotto;


SELECT * FROM Prodotto WHERE categoria = "Bricolage";