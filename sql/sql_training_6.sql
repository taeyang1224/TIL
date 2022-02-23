DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon (
number int,
name varchar(20),
type varchar(10),
attack int,
defense int
);
INSERT INTO mypokemon (number, name, type, attack, defense)
VALUES (10, 'caterpie', 'bug', 30, 35),
(25, 'pikachu', 'electric', 55, 40),
(26, 'raichu', 'electric', 90, 55),
(125, 'electabuzz', 'electric', 83, 57),
(133, 'eevee', 'normal', 55, 50),
(137, 'porygon', 'normal', 60, 70),
(152, 'chikoirita', 'grass', 49, 65),
(153, 'bayleef', 'grass', 62, 80),
(172, 'pichu', 'electric', 40, 15),
(470, 'leafeon', 'grass', 110, 130);

SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //

CREATE FUNCTION isStrong (attack int, defense int)
RETURNS VARCHAR(20)
BEGIN
		DECLARE a INT;
        DECLARE b INT;
        DECLARE isStrong VARCHAR(20);
        SET a = attack;
        SET b = defense;
        SELECT CASE
					WHEN a + b > 120 THEN "very strong"
                    WHEN a +b >90 THEN "strong"
					ELSE "not strong"
                    END INTO isStrong;
		RETURN isStrong;
END

//
DELIMITER ;

SELECT name, isStrong(attack, defense) as isStrong
FROM mypokemon;