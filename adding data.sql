use FitnessCenter

-- Insert data into Adrese
INSERT INTO Adrese (Oras, Strada, Numar_bloc) VALUES 
('Chisinau', 'Calea Iesilor', '15'),
('Chisinau', 'Strada Botanica', '3A'),
('Chisinau', 'Strada Stefan Cel Mare', '29'),
('Chisinau', 'Bucuresti', '2/1'),
('Chisinau', 'Strada Nistrului', '8'),
('Chisinau', 'Calea Victoriei', '12'),
('Chisinau', 'Strada Calea Moldovei', '19'),
('Chisinau', 'Strada Mircea Cel Batran', '7'),
('Chisinau', 'Strada Alecsandri', '5'),
('Chisinau', 'Strada Pacea', '22'),
('Chisinau', 'Strada Tiraspol', '15'),
('Chisinau', 'Strada Banulescu-Bodoni', '10'),
('Chisinau', 'Strada Calea Suruceni', '9'),
('Chisinau', 'Strada Armeneasca', '12'),
('Chisinau', 'Strada Petru Movila', '4'),
('Chisinau', 'Strada Revolutiei', '30'),
('Chisinau', 'Strada Muncii', '18'),
('Chisinau', 'Strada Zimbrului', '14'),
('Chisinau', 'Strada Valea Crucii', '23');

-- Insert data into Clienti
INSERT INTO Clienti (Nume, Prenume, Sexul, Data_nasterii, Email, Nr_telefon, Idnp, ID_adresa) VALUES 
('Popa', 'Victor', 'M', '1988-10-25', 'victor.popa@gmail.com', '0745123456', '1234567890126', '8'),
('Ciobanu', 'Elena', 'F', '1995-03-14', 'elena.ciobanu@gmail.com', '0735123456', '1234567890127', '9'),
('Mihailov', 'Diana', 'F', '1993-07-30', 'diana.mihailov@gmail.com', '0745123457', '1234567890128', '10'),
('Constantin', 'Andrei', 'M', '1990-11-14', 'andrei.constantin@gmail.com', '0745123458', '1234567890129', '8'),
('Sandu', 'Ioana', 'F', '1992-06-22', 'ioana.sandu@gmail.com', '0745123459', '1234567890130', '7'),
('Toma', 'Mihai', 'M', '1994-05-10', 'mihai.toma@gmail.com', '0745123460', '1234567890131', '6'),
('Nistor', 'Gabriela', 'F', '1991-12-13', 'gabriela.nistor@gmail.com', '0745123461', '1234567890132', '5'),
('Zaharia', 'Cosmin', 'M', '1990-02-27', 'cosmin.zaharia@gmail.com', '0745123462', '1234567890133', '4'),
('Istrati', 'Andreea', 'F', '1996-01-01', 'andreea.istrati@gmail.com', '0745123463', '1234567890134', '3'),
('Dumitru', 'Vasile', 'M', '1987-04-17', 'vasile.dumitru@gmail.com', '0745123464', '1234567890135', '2'),
('Pandelescu', 'Lavinia', 'F', '1994-11-25', 'lavinia.pandelescu@gmail.com', '0745123465', '1234567890136', '1'),
('Marin', 'Stefan', 'M', '1990-08-20', 'stefan.marin@gmail.com', '0745123466', '1234567890137', '4'),
('Munteanu', 'Florin', 'M', '1992-02-19', 'florin.munteanu@gmail.com', '0745123467', '1234567890138', '5'),
('Costea', 'Alexandra', 'F', '1993-03-25', 'alexandra.costea@gmail.com', '0745123468', '1234567890139', '6'),
('Rusu', 'Paul', 'M', '1989-09-12', 'paul.rusu@gmail.com', '0745123469', '1234567890140', '7'),
('Iliescu', 'Radu', 'M', '1988-07-09', 'radu.iliescu@gmail.com', '0745123470', '1234567890141', '8'),
('Enache', 'Larisa', 'F', '1991-02-17', 'larisa.enache@gmail.com', '0745123471', '1234567890142', '9'),
('Vasilache', 'Marian', 'M', '1993-05-03', 'marian.vasilache@gmail.com', '0745123472', '1234567890143', '10'),
('Cristea', 'Elena', 'F', '1992-10-11', 'elena.cristea@gmail.com', '0745123473', '1234567890144', '11'),
('Barbu', 'Alina', 'F', '1990-06-28', 'alina.barbu@gmail.com', '0745123474', '1234567890145', '12');

-- Insert data into Abonamente
INSERT INTO Abonamente (Pret, Durata, Tip) VALUES 
('450.00', '31', 'Lunar'),
('1250.00', '93', '3 luni'),
('2400.00', '186', '6 luni'),
('4800.00', '365', 'Anual');

-- Insert data into Client_abonamente
INSERT INTO Client_abonamente (ID_client, ID_abonament, Data_inceput, Data_sfarsit) VALUES 
('1', '2', '2024-02-01', '2024-02-28'),
('2', '3', '2024-02-01', '2024-05-01'),
('3', '4', '2024-02-01', '2025-02-01'),
('4', '4', '2024-02-01', '2025-02-01'),
('5', '1', '2024-02-01', '2024-02-28'),
('6', '2', '2024-02-01', '2024-02-28'),
('7', '1', '2024-02-01', '2024-02-28'),
('8', '3', '2024-02-01', '2024-05-01'),
('9', '4', '2024-02-01', '2025-02-01'),
('10', '2', '2024-02-01', '2024-02-28'),
('11', '1', '2024-02-01', '2024-02-28'),
('12', '3', '2024-02-01', '2024-05-01'),
('13', '4', '2024-02-01', '2025-02-01'),
('14', '2', '2024-02-01', '2024-02-28'),
('15', '4', '2024-02-01', '2025-02-01'),
('16', '1', '2024-02-01', '2024-02-28'),
('17', '3', '2024-02-01', '2024-05-01'),
('18', '2', '2024-02-01', '2024-02-28'),
('19', '4', '2024-02-01', '2025-02-01'),
('20', '1', '2024-02-01', '2024-02-28');

-- Insert data into Plati
INSERT INTO Plati (Data_platii, Suma, Metoda_plata, ID_client) VALUES 
('2024-02-01', '350.00', 'Card', '9'),
('2024-02-01', '1500.00', 'Cash', '10'),
('2024-02-02', '2500.00', 'Card', '11'),
('2024-02-03', '1250.00', 'Card', '12'),
('2024-02-05', '450.00', 'Cash', '13'),
('2024-02-07', '5000.00', 'Card', '14'),
('2024-02-08', '2400.00', 'Cash', '15'),
('2024-02-09', '450.00', 'Card', '16'),
('2024-02-10', '350.00', 'Cash', '17'),
('2024-02-11', '1500.00', 'Card', '18'),
('2024-02-12', '2400.00', 'Cash', '19'),
('2024-02-13', '4800.00', 'Card', '20'),
('2024-02-15', '450.00', 'Card', '9'),
('2024-02-15', '2400.00', 'Cash', '10');

-- Insert data into Activitati
INSERT INTO Activitati (Nume, Nivel_dificultate, Max_participanti, Durata, Descriere) VALUES 
('Antrenament individual', NULL, '1', '01:30:00', 'Antrenament individual pentru orice persoana'),
('Yoga', 'Usor', '25', '01:00:00', 'O clasa de yoga pentru relaxare'),
('Yoga', 'Mediu', '25', '01:00:00', 'O clasa de yoga pentru relaxare'),
('Yoga', 'Avansat', '25', '01:00:00', 'O clasa de yoga pentru relaxare'),
('CrossFit', 'Usor', '10', '01:30:00', 'Antrenament intensiv de for?a'),
('CrossFit', 'Mediu', '10', '01:30:00', 'Antrenament intensiv de for?a'),
('CrossFit', 'Avansat', '10', '01:30:00', 'Antrenament intensiv de for?a'),
('Înot', 'Usor', '30', '01:20:00', 'Antrenament de înot'),
('Înot', 'Mediu', '30', '01:20:00', 'Antrenament de înot'),
('Înot', 'Avansat', '30', '01:20:00', 'Antrenament de înot');

-- Insert data into Antrenori
INSERT INTO Antrenori (Nume, Prenume, Data_nasterii, Email, Nr_telefon, Salariu, Specializare) VALUES 
('Luca', 'Vasilescu', '1985-06-12', 'luca.vasilescu@example.com', '0745123458', '6000.00', 'Pilates'),
('Elena', 'Marinescu', '1990-05-10', 'elena.marinescu@example.com', '0745123459', '6500.00', 'Kickboxing'),
('Ionut', 'Barbu', '1987-12-22', 'ionut.barbu@example.com', '0745123460', '7000.00', 'Fitness'),
('Mihail', 'Petrescu', '1984-11-30', 'mihail.petrescu@example.com', '0745123461', '7500.00', 'CrossFit'),
('Cristian', 'Dumitru', '1992-07-04', 'cristian.dumitru@example.com', '0745123462', '6500.00', 'Yoga');

-- Insert data into Furnizori
INSERT INTO Furnizori (Nume, Nr_telefon, Email, Tip_produse, ID_adresa) VALUES 
('kompass', '0756123456', 'kompass@gmail.com', 'Echipamente Fitness', 7),
('Maximum', '0756123457', 'maximum@gmail.com', 'Echipamente Yoga', 8);

-- Insert data into Echipamente
INSERT INTO Echipamente (Nume, Tip, Stare, Data_achizitie, ID_furnizor) VALUES 
('Banca de forta', 'Forta', 'Functional', '2024-01-01', '1'),
('Greutati', 'Greutati', 'Functional', '2024-01-01', '1'),
('Covoras de yoga', 'Yoga', 'Functional', '2024-01-01', '2'),
('Bicicleta stationare', 'Cardio', 'Nefunctional', '2024-01-01', '1'),
('Banda de alergare', 'Cardio', 'Functional', '2024-01-01', '1'),
('Accesorii Yoga', 'Yoga', 'Functional', '2024-01-01', '2');

-- Insert data into Sesiuni_antrenament
INSERT INTO Sesiuni_antrenament (Tipul, Data, Ora, ID_antrenor, ID_activitate) VALUES 
('Grup', '2024-02-20', '09:00:00.0000000', '1', '1'),
('Grup', '2024-02-20', '10:30:00.0000000', '2', '2'),
('Grup', '2024-02-21', '12:00:00.0000000', '3', '3'),
('Individual', '2024-02-22', '14:00:00.0000000', '4', '4'),
('Grup', '2024-02-23', '11:00:00.0000000', '5', '5');

-- Insert data into Sesiune_Antrenament_echipamente
INSERT INTO Sesiune_Antrenament_echipamente (ID_echipament, ID_sesiune) VALUES 
('2', '1'),
('3', '2'),
('4', '3'),
('5', '4'),
('6', '5');

-- Insert data into Client_sesiuni_antrenament
INSERT INTO Client_sesiuni_antrenament (ID_client, ID_sesiune) VALUES 
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5');