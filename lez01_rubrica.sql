/*
	Questo è un commento multilinea
    
	DDL: Data Definition Language, gestisce la parte invariante del database
    DML: Data Manipulation Language, gestisce la parte variabile del database
    QL: Querying Language, estrae le informazioni
*/

-- Questo è un commento singola linea

-- DDL
-- DROP DATABASE IF EXISTS lez_its_01_rubrica;
CREATE DATABASE lez_its_01_rubrica;
USE lez_its_01_rubrica;

-- DROP TABLE IF EXISTS Persona;
CREATE TABLE Persona(
	nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    cod_fis VARCHAR(16) NOT NULL UNIQUE,
    telefono VARCHAR(50)    
);

-- ALTER TABLE Persona ADD COLUMN email VARCHAR(250);
-- ALTER TABLE Persona ADD COLUMN matricola VARCHAR(10) NOT NULL UNIQUE AFTER cognome;
-- ALTER TABLE Persona DROP COLUMN matricola;
-- ALTER TABLE Persona MODIFY COLUMN telefono VARCHAR(100);
