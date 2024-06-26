CREATE DATABASE lez04_recap_libreria;
USE lez04_recap_libreria;

CREATE TABLE Libro(
	libroID INTEGER PRIMARY KEY AUTO_INCREMENT,
    titolo VARCHAR(200) NOT NULL,
    autore VARCHAR(200) NOT NULL,
    isbn VARCHAR(200) NOT NULL UNIQUE,
    data_pubbl DATE NOT NULL,
    categoria VARCHAR(200) NOT NULL,
    quantita INTEGER DEFAULT 1 NOT NULL
);

CREATE TABLE Utente(
	utenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cognome VARCHAR(200) NOT NULL,
    email VARCHAR(200),
    data_reg DATE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Prestito(
	data_inizio DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_fine DATETIME,
    stato VARCHAR(10) NOT NULL DEFAULT "in corso" CHECK (stato IN ("in corso", "completato")),
    libroRIF INTEGER NOT NULL,
    utenteRIF INTEGER NOT NULL,
    FOREIGN KEY (libroRIF) REFERENCES Libro(libroID) ON DELETE CASCADE,
    FOREIGN KEY (utenteRIF) REFERENCES Utente(utenteID) ON DELETE CASCADE
);