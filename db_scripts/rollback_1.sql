-- Rechanger le nom de la table et de la colonne
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer RENAME COLUMN musicianName TO singerName;

-- Supprimer les colonnes de singer
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;

-- Supprimer la table band
DROP TABLE band;