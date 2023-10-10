CREATE DATABASE lez_its_09_sql_inj;
USE lez_its_09_sql_inj;

CREATE TABLE Utente(
	utenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    user_pas VARCHAR(50) NOT NULL
);

INSERT INTO Utente (username, user_pas) VALUES
("ciccio", "pasticcio");

SELECT username, user_pas FROM Utente WHERE username = "ciccio" AND user_pas = "gergregerge";

SELECT username, user_pas FROM Utente WHERE username = "" OR 1=1;

 