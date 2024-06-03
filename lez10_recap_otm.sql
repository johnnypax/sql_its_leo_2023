DROP DATABASE IF EXISTS lez_recap_04_otm;
CREATE DATABASE lez_recap_04_otm;
USE lez_recap_04_otm;

CREATE TABLE Persona(
	personaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nominativo VARCHAR(250) NOT NULL,
    cod_fis VARCHAR(16) NOT NULL UNIQUE
);

CREATE TABLE Carta(
	cartaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    negozio VARCHAR(20) NOT NULL,
    codice VARCHAR(10) NOT NULL UNIQUE,
    personaRIF INTEGER NOT NULL,
    FOREIGN KEY (personaRIF) REFERENCES Persona(personaID) ON DELETE CASCADE
);

INSERT INTO Persona(nominativo, cod_fis) VALUES
("Giovanni", "PCAGNN"),
("Valeria", "VLRVRD");

INSERT INTO Carta(negozio, codice, personaRIF) VALUES
("COOP", "AB1234", 1),
("Conad", "AB1235", 1),
("Conad", "AB1236", 2);

SELECT * FROM Persona;
SELECT * FROM Carta;

SELECT * 
	FROM Persona 
    JOIN Carta ON Persona.personaID = Carta.personaRIF
    WHERE cod_fis = "PCAGNN";
    
SELECT nominativo, cod_fis, negozio, codice
	FROM Persona 
    JOIN Carta ON Persona.personaID = Carta.personaRIF
    WHERE cod_fis = "PCAGNN";

SELECT * 
	FROM Carta 
    JOIN Persona ON Carta.personaRIF = Persona.personaID
    WHERE codice = "AB1234";