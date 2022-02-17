DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon(
						number INT,
                        name VARCHAR(20),
                        type VARCHAR(20),
                        height FLOAT,
                        weight FLOAT,
                        attack FLOAT,
                        defense FLOAT,
                        speed FLOAT
);

INSERT INTO mypokemon (number, name, type, height, weight, attack, defense, speed)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9, 30, 35, 45),
(25, 'pikachu', 'electric', 0.4, 6, 55, 40, 90),
(26, 'raichu', 'electric', 0.8, 30, 90, 55, 110),
(133, 'eevee', 'normal', 0.3, 6.5, 55, 50, 55),
(152, 'chikoirita', 'grass', 0.9, 6.4, 49, 65, 45);

USE pokemon;

# 미션 1
SELECT 123 * 456;

# 미션 2
SELECT 2310 / 30;

# 미션 3
SELECT "피카츄" AS "포켓몬";

# 미션 4
SELECT * FROM mypokemon;

# 미션 5
SELECT name FROM mypokemon;

# 미션 6
SELECT name, height, weight FROM mypokemon;

# 미션 7
SELECT DISTINCT height FROM mypokemon;

# 미션 8
SELECT name, attack * 2 AS attack2 FROM mypokemon;

# 미션 9
SELECT name AS "이름" FROM mypokemon;

# 미션 10
SELECT attack AS "공격력", defense AS "방어력" FROM mypokemon;

# 미션 11
SELECT height * 100 AS "height(cm)" FROM mypokemon;

# 미션 12
SELECT * FROM mypokemon LIMIT 1;

# 미션 13
SELECT name AS "영문명", height AS "키(m)", weight AS "몸무게(kg)" FROM mypokemon LIMIT 2;

# 미션 14
SELECT name, attack + defense + speed AS total FROM mypokemon;

# 미션 15
SELECT name, weight / height^2 AS "BMI" FROM mypokemon;