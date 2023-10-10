CREATE DATABASE lez_its_06_mtm;
USE lez_its_06_mtm;

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

CREATE TABLE Studente_Esame(
	studenteRIF INTEGER NOT NULL,
    esameRIF INTEGER NOT NULL,
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

INSERT INTO Studente_Esame(studenteRIF, esameRIF) VALUES
(1,	2),
(1,	4),
(3,	1),
(2,	2),
(2,	3);

SELECT * 
	FROM Studente
    JOIN Studente_Esame ON Studente.studenteID = Studente_Esame.studenteRIF
    JOIN Esame ON Studente_Esame.esameRIF = Esame.esameID;
    
SELECT nominativo, matricola, titolo, data_esame AS "Data Esame"
	FROM Studente
    JOIN Studente_Esame ON Studente.studenteID = Studente_Esame.studenteRIF
    JOIN Esame ON Studente_Esame.esameRIF = Esame.esameID;
    