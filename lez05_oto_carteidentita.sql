DROP DATABASE IF EXISTS lez_its_05_oto;
CREATE DATABASE lez_its_05_oto;
USE lez_its_05_oto;

CREATE TABLE Utente(
	utenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nominativo VARCHAR(250) NOT NULL
);

CREATE TABLE Cartaidentita(
	cartaidentitaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(10) NOT NULL UNIQUE,
    data_scad DATE,
    utenteRIF INTEGER NOT NULL UNIQUE,
    FOREIGN KEY (utenteRIF) REFERENCES Utente(utenteID) ON DELETE CASCADE
);

INSERT INTO Utente(nominativo) VALUES
("Giovanni"),
("Valeria"),
("Mario");

INSERT INTO Utente(nominativo) VALUES
("Marco");

INSERT INTO Cartaidentita(codice, data_scad, utenteRIF) VALUES
("CC1234", "2020-01-01",	1),
("CC1235", "2020-01-01",	2),
("CC1236", "2020-01-01",	3);

-- Non è possibile avviarla
-- INSERT INTO Cartaidentita(codice, data_scad, utenteRIF) VALUES
-- ("CC1237", "2020-01-01",	1);

SELECT * 
	FROM Utente
    JOIN Cartaidentita ON Utente.utenteID = Cartaidentita.utenteRIF;
    
SELECT *
	FROM Cartaidentita
    JOIN Utente ON Cartaidentita.utenteRIF = Utente.utenteID;

SELECT * 
	FROM Utente
    LEFT JOIN Cartaidentita ON Utente.utenteID = Cartaidentita.utenteRIF;
    
SELECT * 
	FROM Utente
    RIGHT JOIN Cartaidentita ON Utente.utenteID = Cartaidentita.utenteRIF;