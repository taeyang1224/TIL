CREATE DATABASE pokemon;

USE pokemon;

CREATE TABLE mypokemon (
						number INT,
                        name VARCHAR(20),
                        type VARCHAR(10)
);

INSERT INTO mypokemon (number, name, type)
VALUES (10, "caterpie", "bug"),
		(20, "pikachu", "electric"),
        (133, "eevee", "normal");
        
        
select * from mypokemon;


CREATE TABLE mynewpokemon (
							number INT,
                            name VARCHAR(20),
                            type VARCHAR(10)
);

INSERT INTO mynewpokemon (number, name, type)
VALUES (77, "포니타", "불꽃"),
	   (132, "메타몽", "노말"),
       (151, "뮤", "에스퍼");
       
select * from mynewpokemon;

ALTER TABLE mypokemon RENAME myoldpokemon;

ALTER TABLE myoldpokemon CHANGE COLUMN name eng_nm VARCHAR(20);

select * from myoldpokemon;

ALTER TABLE mynewpokemon CHANGE COLUMN name kor_nm VARCHAR(20);

select * from mynewpokemon;

TRUNCATE myoldpokemon;

DROP TABLE mynewpokemon;

DROP DATABASE pokemon;