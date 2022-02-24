DROP DATABASE IF EXISTS pokemon
;
CREATE DATABASE pokemon
;
USE pokemon
;
CREATE TABLE mypokemon
(
number INT,
name VARCHAR(20),
type VARCHAR(10)
);
INSERT INTO mypokemon (number, name, type)
VALUES (10, 'caterpie', 'bug'),
(25, 'pikachu', 'electric'),
(26, 'raichu', 'electric'),
(133, 'eevee', 'normal'),
(152, 'chikoirita', 'grass');
CREATE TABLE ability (
number INT,
height FLOAT,
weight FLOAT,
attack INT,
defense INT,
speed int
);
INSERT INTO ability (number, height, weight, attack, defense, speed)
VALUES (10, 0.3, 2.9, 30, 35, 45),
(25, 0.4, 6, 55, 40, 90),
(125, 1.1, 30, 83, 57, 105),
(133, 0.3, 6.5, 55, 50, 55),
(137, 0.8, 36.5, 60, 70, 40),
(152, 0.9, 6.4, 49, 65, 45),
(153, 1.2, 15.8, 62, 80, 60),
(172, 0.3, 2, 40, 15, 60),
(470, 1, 25.5, 110, 130, 95);



SELECT * FROM mypokemon;
SELECT * FROM ability;


# 미션 1
SELECT name, attack, defense
FROM mypokemon
LEFT JOIN ability
ON mypokemon.number = ability.number;

# 미션 2
SELECT ability.number, name
FROM mypokemon
RIGHT JOIN ability
ON mypokemon.number = ability.number
WHERE ability.number > 10;