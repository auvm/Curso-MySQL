
DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf CHARACTER SET "UTF8";

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autores( 
autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
seudonimo VARCHAR(50) UNIQUE, 
genero ENUM("M", "F") NOT NULL, -- M o F
fecha_nacimiento DATE NOT NULL, -- Mes-Año-Dia
pais_origen VARCHAR(40) NOT NULL,
fecha_de_creacion DATETIME DEFAULT NOW() 
);

CREATE TABLE IF NOT EXISTS libros(
    libro_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    autor_id INT UNSIGNED NOT NULL,
    titulo VARCHAR (50) NOT NULL,
    descripcion VARCHAR(250),
    paginas INT UNSIGNED,
    fecha_de_publicacion DATE NOT NULL,
    fecha_de_creacion DATETIME DEFAULT current_timestamp(),
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

INSERT INTO autores (nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES ("Test autor", "Test autor", "M", "2000-06-13", "México"),
("Test autor", "Test autor", "M", "2000-06-13", "México"),
("Test tercero", "Test tercero", "M", "2018-2-10", "México"),
("Test cuarto", "Test cuarto", "F", "2017-09-19", "Japón"),
("Test quinto", "Test quinto", "M", "2005-04-20", "México"),
("Test sexto", "Test sexto", "F", "2005-07-18", "Alemania"),
("Test séptimo", "Test séptimo", "F", "2010-12-24", "Rusia");


INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen) 
VALUES  (8, "Test ocho", "Test ocho", "F", "2000-06-13", "México"),
        (9, "Test nueve", "Test nueve", "M", "2018-2-06", "México"),
        (10, "Test diez", "Test diez", "F", "2014-9-12", "México"),
        (11, "Test once", "Test once", "M", "2003-2-23", "México");


-- muestra con la creación de una llave foranea
INSERT INTO libros (libro_id, autor_id, titulo, descripcion, paginas, fecha_de_publicacion)
VALUES (1, 1, "Génesis", "Sobre la creación del mundo", 250, "1940-12-31");

SELECT * FROM autores;
SELECT * FROM libros;