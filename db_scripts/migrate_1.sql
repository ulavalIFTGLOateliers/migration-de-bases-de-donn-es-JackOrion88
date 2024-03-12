-- Changer le nom de la table singer et de la colonne
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;

--Rajouter les colonnes role et bandName à la table musician
ALTER TABLE musician ADD COLUMN role VARCHAR(50);
ALTER TABLE musician ADD COLUMN bandName VARCHAR(50);

-- Rajouter les valeurs pour role et bandName dans la table musician
--musicianName: varchar(50)	role: varchar(50)	bandName: varchar(50)
--Alina vocals	Crazy Duo
--Mysterio guitar	Mysterio
--Rainbow	percussion	Crazy Duo
--Luna	piano	Luna

UPDATE musician SET role = 'vocals', bandName = 'Crazy Duo' WHERE musicianName = 'Alina';
UPDATE musician SET role = 'guitar', bandName = 'Mysterio' WHERE musicianName = 'Mysterio';
UPDATE musician SET role = 'percussion', bandName = 'Crazy Duo' WHERE musicianName = 'Rainbow';
UPDATE musician SET role = 'piano', bandName = 'Luna' WHERE musicianName = 'Luna';

-- Créer la table band ( **<ins>bandName</ins>**: varchar(50) | **creation**: YEAR | **genre**: varchar(50) |)
CREATE TABLE band (
    bandName VARCHAR(50) PRIMARY KEY, creation YEAR, genre VARCHAR(50)
    );
--Remplir la table band
--Crazy Duo | 2015 | rock |
--| Luna | 2009 | classical |
--| Mysterio | 2019 | pop |
INSERT INTO band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band (bandName, creation, genre) VALUES ('Luna', 2009, 'classical');
INSERT INTO band (bandName, creation, genre) VALUES ('Mysterio', 2019, 'pop');


