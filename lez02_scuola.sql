-- DDL
CREATE DATABASE lez_its_02_scuola;
USE lez_its_02_scuola;

/*
CREATE TABLE Studente(
	studenteID INTEGER AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    matricola VARCHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY (studenteID)
);
*/

CREATE TABLE Studente(
	studenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    matricola VARCHAR(10) NOT NULL UNIQUE
);

-- DML
INSERT INTO Studente(nome, cognome, matricola) VALUES
("Giovanni", "Pace", "AB1234");
INSERT INTO Studente(nome, cognome, matricola) VALUES
("Valeria", "Verdi", "AB1235");
INSERT INTO Studente(nome, cognome, matricola) VALUES
("Mario", "Rossi", "AB1236");

-- QL
SELECT * FROM Studente;