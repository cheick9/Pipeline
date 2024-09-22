-- 1. Créer la base de données "École"
CREATE DATABASE Ecole;

-- 2. Utiliser la base de données "École"
USE Ecole;

-- 3. Créer la table "élèves" avec les contraintes définies
CREATE TABLE eleves (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    prenom VARCHAR(100) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    numero_salle INT,
    telephone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    annee_obtention YEAR NOT NULL,
    numero_classe INT NOT NULL
);

-- 4. Créer la table "enseignants" avec les contraintes définies
CREATE TABLE enseignants (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    prenom VARCHAR(100) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    numero_salle INT,
    departement VARCHAR(100) NOT NULL,
    annee_obtention YEAR NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telephone VARCHAR(15) NOT NULL UNIQUE,
    numero_classe INT NOT NULL
);

-- 5. Insérer un élève nommé Mark Watney
INSERT INTO eleves (student_id, prenom, nom, numero_salle, telephone, email, annee_obtention, numero_classe)
VALUES (1, 'Mark', 'Watney', 101, '777-555-1234', NULL, 2035, 5);

-- 6. Insérer un enseignant nommé Jonas Salk
INSERT INTO enseignants (teacher_id, prenom, nom, numero_salle, departement, annee_obtention, email, telephone, numero_classe)
VALUES (1, 'Jonas', 'Salk', 202, 'Biologie', 1955, 'jsalk@school.org', '777-555-4321', 5);

select * from enseignants;