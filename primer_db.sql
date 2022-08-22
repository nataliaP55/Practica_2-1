CREATE DATABASE primer_db; /*crea la base de datos*/

SHOW DATABASES; 

USE primer_db; /*usa la base de datos creada*/

SHOW TABLES;

/*Permite crear la tabla según la información*/
CREATE TABLE primer_tabla(
    id_registro INT NOT NULL AUTO_INCREMENT,
    autor VARCHAR(30) NOT NULL,
    año INT NOT NULL,
    cant_pag VARCHAR(30),
    PRIMARY KEY (id_registro)
);

SHOW TABLES;

/*describe la tabla indicada*/
DESCRIBE primer_tabla;

/* muestra TODO (*) el contenido de la tabla indicada */
SELECT * FROM primer_tabla;

/* inserta un registro en la tabla indicada */

INSERT INTO primer_tabla (autor, año, cant_pag) VALUES ("Cortazar", 2009, "cuatrocientaseis");

INSERT INTO primer_tabla (autor, año, cant_pag) VALUES ("Cortazar", 1973, "trecientascincuentiuno");

INSERT INTO primer_tabla (autor, año, cant_pag) VALUES ("Cortazar", 1968, "docientasochenticuatro");

INSERT INTO primer_tabla (autor, año, cant_pag) VALUES ("Cortazar", 1953, "docientostreinticuatro");

INSERT INTO primer_tabla (autor, año, cant_pag) VALUES ("Cortazar", 1951, "cientosesenticinco");

/* seleccionar informacion de una tabla*/

SELECT autor FROM primer_tabla;

SELECT autor, año FROM primer_tabla;

SELECT * FROM primer_tabla WHERE id_registro = 2;

SELECT * FROM primer_tabla LIMIT 3; 

/*actualiza un registro con nueva informacion */

UPDATE primer_tabla SET autor = "Borges", año = 1984 WHERE id_registro = 1;

/* elimina un registro DONDE el id sea el correspondiente */

DELETE FROM primer_tabla WHERE id_registro = 2;


ALTER TABLE primer_tabla
ADD nombre_libro VARCHAR (30) NOT NULL;

ALTER TABLE primer_tabla
MODIFY COLUMN cant_pag INT;


UPDATE primer_tabla SET nombre_libro = "Los conjurados", cant_pag = 406 WHERE id_registro = 1;
UPDATE primer_tabla SET nombre_libro = "Rayuela", cant_pag = 234 WHERE id_registro = 3;
UPDATE primer_tabla SET nombre_libro = "Bestiario", cant_pag = 165 WHERE id_registro = 4;
UPDATE primer_tabla SET nombre_libro = "Papeles inesperados", cant_pag = 406 WHERE id_registro = 5;
UPDATE primer_tabla SET nombre_libro = "Libro de Manuel", cant_pag = 351 WHERE id_registro = 6;
UPDATE primer_tabla SET nombre_libro = "62 Modelo para armar", cant_pag = 284 WHERE id_registro = 7;