CREATE DATABASE lez_its_07_mtm_dettaglio;
USE lez_its_07_mtm_dettaglio;

CREATE TABLE Studente(
	studenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nominativo VARCHAR(250) NOT NULL,
    matricola VARCHAR(10) NOT NULL UNIQUE    
);

CREATE TABLE Esame(
	esameID INTEGER PRIMARY KEY AUTO_INCREMENT,
    titolo VARCHAR(250) NOT NULL,
    data_esame DATE NOT NULL
);

CREATE TABLE Iscrizione(
	studenteRIF INTEGER NOT NULL,
    esameRIF INTEGER NOT NULL,
    data_iscrizione DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (studenteRIF) REFERENCES Studente(studenteID) ON DELETE CASCADE,
    FOREIGN KEY (esameRIF) REFERENCES Esame(esameID) ON DELETE CASCADE,
    PRIMARY KEY(studenteRIF, esameRIF)
);

INSERT INTO Studente(nominativo, matricola) VALUES
("Giovanni", "AB1234"),
("Valeria", "AB1235"),
("Mario", "AB1237");

INSERT INTO Esame(titolo, data_esame) VALUES
("Analisi 1", "2020-01-01"),
("Analisi 1", "2020-02-02"),
("Fisica", "2020-01-01"),
("Informatica", "2020-01-01"),
("Informatica", "2020-02-02");

INSERT INTO Iscrizione(studenteRIF, esameRIF) VALUES
(1,	2),
(1,	4),
(3,	1),
(2,	2),
(2,	3);

SELECT * 
	FROM Studente
    JOIN Iscrizione ON Studente.studenteID = Iscrizione.studenteRIF
    JOIN Esame ON Iscrizione.esameRIF = Esame.esameID;