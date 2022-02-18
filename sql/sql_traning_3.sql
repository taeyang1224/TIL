USE pokemon;

SELECT *
FROM mypokemon;

# 미션 1
SELECT type FROM mypokemon WHERE name = "eevee";

# 미션 2
SELECT attack, defense FROM mypokemon WHERE name = "caterpie";

# 미션 3
SELECT * FROM mypokemon WHERE weight > 6;

# 미션 4
SELECT name FROM mypokemon WHERE height > 0.5 AND weight >= 6;

# 미션 5
SELECT name AS "weak_pokemon" FROM mypokemon WHERE attack < 50 OR defense < 50;

# 미션 6
SELECT * FROM mypokemon WHERE type != "normal";

# 미션 7
SELECT name, type FROM mypokemon WHERE type IN ("normal", "fire", "water", "grass");

# 미션 8 
SELECT name, attack FROM mypokemon WHERE attack BETWEEN 40 AND 60;

# 미션 9 
SELECT name FROM mypokemon WHERE name like "%e%";

# 미션 10
SELECT * FROM mypokemon WHERE name LIKE "%i%" AND speed <= 50;

# 미션 11
SELECT name, height, weight FROM mypokemon WHERE name LIKE "%chu";

# 미션 12
SELECT name, defense FROM mypokemon WHERE name LIKE "%e" AND defense < 50;

# 미션 13
SELECT name, attack, defense FROM mypokemon WHERE (attack - defense) >= 10 OR (defense - attack) >= 10;

# 미션 14
SELECT name, (attack + defense + speed) AS total FROM mypokemon WHERE (attack + defense + speed) >= 150;

