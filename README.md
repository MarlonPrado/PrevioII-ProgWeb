

# Aplicativo web para la gestion de usuarios

  ##  
  ### 

  ## Tabla de Contenido:
  ###  * [Installation](#installation)
  ###  * [Utilidad](#utilidad)
  ###  * [Entidades](#entidades)
  ###  * [DAO](#dao)
  ###  * [DTO](#dto)
  ###  * [Vistas](#vistas)
  ###  * [License](#license)
  ###  * [Autores](#autores)
  ###  * [Tests](#tests)
  ###  * [Contacto](#contacto)

  ## Instalacion:
  ### Se requiere la instalacion de NodeJS y MySql para la instalacion del proyecto, en la primera carpeta denominada "database" se encuentra el archivo bd.sql, donde se puede importar a Mysql o PhpMyAdmin para la creacion de la B.D como sus entidades, atributos, relaciones,etc. el comando para correr en consola dicho proyecto es "npm run dev"
	```bash
	npm run dev
	```


  ## Utilidad:
  ### Registrar e iniciar sesion un usuario en la plataforma, definirse un rol como tambien desplegar un menu con opciones especificadas para roles definidos
  ## Entidades:
  ###En primera, se crea el modelo de datos, el diseño de la base de datos, sus relaciones, atributos e identidades
  ```mysql
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
```
  ## Autores:
  ### Brayan Jesus Garcia & Marlon Stiven Prado - Programacion Web - Grupo A
  ## Tests:
  ### Para loguearse en la plataforma existe 2 maneras:
  
 ### 1. Cargar los siguientes datos de pruebas en el inicio de sesion
 #### correo electronico: marlonprado@gmail.com
  #### clave: 1234
 ### 2. Registrar un usuario dentro de la plataforma a traves del formulario de registro de usuarios
  ## Contacto:
  ### ¿Preguntas, dudas o inquietudes?, no hay problema, puede contactarnos a traves:
  ### Github: https://github.com/MarlonPrado & https://github.com/BrayanJesusGarcia123
  ### o
  ### correo electronico:  marlonstivenprod@ufps.edu.co
  
 # ¡Que tengas un excelente dia :D !
