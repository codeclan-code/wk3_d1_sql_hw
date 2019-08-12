-- DROP TABEL TO CLEAR

--See ALSO SQLBolt.com

DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);



CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255)NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL, -- must specify a value
  character_id INT8 REFERENCES characters(id) --UNIQUE --singular of table
);

-- CREATE

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper1', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper2', true, 26);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper3', true, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper4', true, 28);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper5', true, 29);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper6', true, 25);

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('Green', 'Steel',2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('Red', 'Iron', 3);
-- INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('Blue', 'Iron', 3);
-- INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('Blue', 'Balsa', 2);

SELECT * FROM lightsabers;
SELECT * FROM characters;

-- SELECT * FROM lightsabers ORDER BY id ASC --SORT
-- UPDATE characters SET age = 26 WHERE id = 3;
-- INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
--
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);

INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

INSERT INTO characters (name, darkside, age) VALUES ('Daft Invader', true, 32);

INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);

--READ FROM TABLES
SELECT * FROM lightsabers WHERE character_id = 2;
-- UPDATE
--UPDATE characters SET darkside = true;--changes ALL

-- UPDATE characters set darkside = true WHERE name = 'Anakin Skywalker';
--UPDATE multiple columns place columns and values in brackets (col1, col2) = (new_val1, new_val2)
-- UPDATE characters set (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
--
-- UPDATE characters set age = 65 WHERE name = 'Obi-Wan Kenobi';
-- -- SELECT * FROM characters;
--
-- -- DELETE
-- DELETE FROM characters WHERE name = 'Darth Maul';
--
-- DELETE FROM characters; --DELETE ALL FROM TABLE
--
-- SELECT * FROM characters;--READ
--
-- SELECT * FROM characters ORDER BY id ASC --SORT

-- SELECT name FROM characters;
--
-- SELECT age FROM characters;
--
-- SELECT COUNT(*) FROM characters;
