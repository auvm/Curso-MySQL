
DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autores( 
autor_id INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
seudonimo VARCHAR(50) UNIQUE, 
genero CHAR(1) NOT NULL, -- M o F
fecha_nacimiento DATE NOT NULL, -- Mes-Año-Dia
pais_origen VARCHAR(40) NOT NULL
);

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (1, "Test autor", "Test autor", "M", "2000-06-13", "México");

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (2, "Test autor", "Test autor", "M", "2000-06-13", "México");

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (3, "Test tercero", "Test tercero", "M", "2018-2-10", "México");

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (4, "Test cuarto", "Test cuarto", "F", "2017-09-19", "Japón");

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (5, "Test quinto", "Test quinto", "M", "2005-04-20", "México");

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (6, "Test sexto", "Test sexto", "F", "2005-07-18", "Alemania");

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES (7, "Test séptimo", "Test séptimo", "F", "2010-12-24", "Rusia");


INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES  (8, "Test ocho", "Test ocho", "F", "2000-06-13", "México"),
        (9, "Test nueve", "Test nueve", "M", "2018-2-06", "México"),
        (10, "Test diez", "Test diez", "F", "2014-9-12", "México"),
        (11, "Test once", "Test once", "M", "2003-2-23", "México");

SELECT * FROM autores;