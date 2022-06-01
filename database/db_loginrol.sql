CREATE DATABASE db_loginurl2;
USE  db_loginurl2;

-- Tabla Usuarios
CREATE TABLE rol(
id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre  VARCHAR(30) NOT NULL,
    descripcion  VARCHAR(60) NOT NULL
);
CREATE TABLE user(
id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
tipodoc  VARCHAR(20) NOT NULL,
numcc VARCHAR(20) NOT NULL,
nombre  VARCHAR(30) NOT NULL,
apellido  VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
telefono VARCHAR(20) NOT NULL,
clave VARCHAR(100) NOT NULL,
rol VARCHAR(50) NOT NULL,
idrol INT(11) ,
CONSTRAINT fk_rol FOREIGN KEY (idrol) REFERENCES rol (id)

);

ALTER TABLE user

    ADD 
    ADD id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ADD CONSTRAINT fk_rol FOREIGN KEY (IdAsignatura) REFERENCES Asignatura (Id),


CREATE TABLE menu (
id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
link VARCHAR(50) NOT NULL,
icono VARCHAR(20) NOT NULL
);



DESCRIBE user;
DESCRIBE rol;
DESCRIBE menu;