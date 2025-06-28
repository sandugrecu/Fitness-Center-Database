USE master;
GO

ALTER DATABASE FitnessCenter SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE IF EXISTS FitnessCenter;
GO

CREATE DATABASE FitnessCenter
GO

USE FitnessCenter
GO 

CREATE TABLE Adrese (
    ID_adresa INT IDENTITY(1,1) PRIMARY KEY,
    Oras VARCHAR(50) NOT NULL,
    Strada VARCHAR(100) NOT NULL,
    Numar_bloc VARCHAR(10) NOT NULL
);
GO 

CREATE TABLE Clienti (
    ID_client INT IDENTITY(1,1) PRIMARY KEY,
    Nume VARCHAR(50) NOT NULL,
    Prenume VARCHAR(50) NOT NULL,
    Sexul CHAR(1),
    Data_nasterii DATE NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Nr_telefon VARCHAR(20) NOT NULL,
    Idnp VARCHAR(50) UNIQUE,
    ID_adresa INT,
    FOREIGN KEY (ID_adresa) REFERENCES Adrese(ID_adresa)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
GO 

CREATE TABLE Abonamente (
    ID_abonament INT IDENTITY(1,1) PRIMARY KEY,
    Pret DECIMAL(10, 2) NOT NULL,
    Durata INT NOT NULL,
    Tip VARCHAR(20) NOT NULL
);
GO 

CREATE TABLE Client_abonamente (
    ID_client_abonament INT IDENTITY(1,1) PRIMARY KEY,
    ID_client INT,
    ID_abonament INT,
    Data_inceput DATE NOT NULL,
    Data_sfarsit DATE NOT NULL,
    FOREIGN KEY (ID_client) REFERENCES Clienti(ID_client)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (ID_abonament) REFERENCES Abonamente(ID_abonament)
        ON UPDATE CASCADE
        ON DELETE NO ACTION	
);
GO 

CREATE TABLE Plati (
    ID_plata INT IDENTITY(1,1) PRIMARY KEY,
    Data_platii DATE NOT NULL,
    Suma DECIMAL(10, 2) NOT NULL,
    Metoda_plata VARCHAR(20) NOT NULL,
    ID_client INT,
    FOREIGN KEY (ID_client) REFERENCES Clienti(ID_client)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);
GO 

CREATE TABLE Activitati (
    ID_activitate INT IDENTITY(1,1) PRIMARY KEY,
    Nume VARCHAR(50) NOT NULL,
    Nivel_dificultate VARCHAR(20),
    Max_participanti INT NOT NULL,
    Durata TIME NOT NULL,
    Descriere TEXT
);
GO 

CREATE TABLE Antrenori (
    ID_antrenor INT IDENTITY(1,1) PRIMARY KEY,
    Nume VARCHAR(50) NOT NULL,
    Prenume VARCHAR(50) NOT NULL,
    Data_nasterii DATE NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Nr_telefon VARCHAR(20) NOT NULL,
    Salariu DECIMAL(10, 2) NOT NULL,
    Specializare VARCHAR(50) NOT NULL
);
GO 

CREATE TABLE Furnizori (
    ID_furnizor INT IDENTITY(1,1) PRIMARY KEY,
    Nume VARCHAR(50) NOT NULL,
    Nr_telefon VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Tip_produse VARCHAR(50) NOT NULL,
    ID_adresa INT,
    FOREIGN KEY (ID_adresa) REFERENCES Adrese(ID_adresa)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
GO 

CREATE TABLE Echipamente (
    ID_echipament INT IDENTITY(1,1) PRIMARY KEY,
    Nume VARCHAR(50) NOT NULL,
    Tip VARCHAR(50),
    Stare VARCHAR(20) NOT NULL,
    Data_achizitie DATE NOT NULL,
    ID_furnizor INT,
    FOREIGN KEY (ID_furnizor) REFERENCES Furnizori(ID_furnizor)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);
GO 

CREATE TABLE Sesiuni_antrenament (
    ID_sesiune INT IDENTITY(1,1) PRIMARY KEY,
    Tipul VARCHAR(20),
    Data DATE NOT NULL,
    Ora TIME NOT NULL,
    ID_antrenor INT,
    ID_activitate INT,
    FOREIGN KEY (ID_antrenor) REFERENCES Antrenori(ID_antrenor)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    FOREIGN KEY (ID_activitate) REFERENCES Activitati(ID_activitate)
        ON UPDATE CASCADE
        ON DELETE NO ACTION 
);
GO 

CREATE TABLE Sesiune_Antrenament_echipamente (
    ID_sesiune_antrenament_echipamente INT IDENTITY(1,1) PRIMARY KEY,
    ID_echipament INT,
    ID_sesiune INT,
    FOREIGN KEY (ID_echipament) REFERENCES Echipamente(ID_echipament)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    FOREIGN KEY (ID_sesiune) REFERENCES Sesiuni_antrenament(ID_sesiune)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
GO 

CREATE TABLE Client_sesiuni_antrenament (
    ID_client_sesiune_antrenament INT IDENTITY(1,1) PRIMARY KEY,
    ID_client INT,
    ID_sesiune INT,
    FOREIGN KEY (ID_client) REFERENCES Clienti(ID_client)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (ID_sesiune) REFERENCES Sesiuni_antrenament(ID_sesiune)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
GO 
