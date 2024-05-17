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

INSERT INTO Prodotto (nome, descrizione, categoria, quantita, prezzo) 
VALUES 
('Trapano Elettrico', 'Trapano elettrico a batteria da 18V', 'Bricolage', 10, 79.99);

INSERT INTO Prodotto (nome, descrizione, categoria, quantita, prezzo) 
VALUES 
('Lampada da Tavolo', 'Lampada da tavolo con luce LED regolabile', 'Illuminazione', 25, 49.90);

INSERT INTO Prodotto (nome, descrizione, categoria, quantita, prezzo) 
VALUES 
('Set di Cacciaviti', 'Set di cacciaviti professionali con impugnatura ergonomica', 'Bricolage', 15, 25.50);

INSERT INTO Prodotto (nome, descrizione, categoria, quantita, prezzo) 
VALUES 
('Lampadario Moderno', 'Lampadario moderno con finitura in metallo', 'Illuminazione', 8, 120.00);

INSERT INTO Prodotto (nome, descrizione, categoria, quantita, prezzo) 
VALUES 
('Sega Circolare', 'Sega circolare con lama da 185mm', 'Bricolage', 5, 89.99);

INSERT INTO Prodotto (nome, descrizione, categoria, quantita, prezzo) 
VALUES 
('Faretti da Incasso', 'Set di 3 faretti da incasso con luci LED', 'Illuminazione', 20, 35.00);


-- QL
SELECT * FROM Prodotto;
SELECT nome, descrizione FROM Prodotto;

SELECT * FROM Prodotto WHERE categoria = "Bricolage";

