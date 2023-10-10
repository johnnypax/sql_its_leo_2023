DROP DATABASE IF EXISTS lez_its_04_otm;
CREATE DATABASE lez_its_04_otm;
USE lez_its_04_otm;

CREATE TABLE Utente(
	utenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nominativo VARCHAR(250) NOT NULL
);

CREATE TABLE Carta(
	cartaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(10) NOT NULL UNIQUE,
    negozio VARCHAR(250) NOT NULL,
    utenteRIF INTEGER NOT NULL,
    FOREIGN KEY (utenteRIF) REFERENCES Utente(utenteID) ON DELETE CASCADE
);

INSERT INTO Utente(nominativo) VALUES
("Giovanni"),
("Valeria"),
("Mario");

INSERT INTO Carta(codice, negozio, utenteRIF) VALUES
("CC1234", "Coop",	1),
("CC1235", "Coop",	2),
("CC1236", "Coop",	3),
("TT12", "Tigotà",	1),
("TT13", "Tigotà",	3);

SELECT * FROM Utente;
SELECT * FROM Carta;

SELECT * 
	FROM Utente
    JOIN Carta ON Utente.utenteID = Carta.utenteRIF;
    -- WHERE nominativo = "Giovanni";
    
SELECT *
	FROM Carta
    JOIN Utente ON Carta.utenteRIF = Utente.utenteID;

SELECT codice, negozio, nominativo
	FROM Carta
    JOIN Utente ON Carta.utenteRIF = Utente.utenteID;
    
SELECT * FROM Utente;
DELETE FROM Utente WHERE utenteID = 1;
