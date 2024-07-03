CREATE TABLE usuarios (
  id_usuario int NOT NULL PRIMARY KEY,
  Nombre varchar(30) DEFAULT NULL,
  Apellido varchar(30) DEFAULT NULL,
  Correo varchar(255) DEFAULT NULL,
  Telefono double DEFAULT NULL,
  Rol varchar(30) DEFAULT NULL);
  
  CREATE TABLE reportes (
   id_reportes int NOT NULL PRIMARY KEY auto_increment,
   Descripción text,
   Torre double DEFAULT NULL,
   Apartamento double DEFAULT NULL,
   Fecha date DEFAULT NULL,
   id_usuarios int);
   
 CREATE TABLE inventario (
  id_inventario int NOT primary key NULL AUTO_INCREMENT,
  responsable varchar(45) DEFAULT NULL,
  producto varchar(45) DEFAULT NULL,
  descripccion varchar(200) DEFAULT NULL,
  cantidad double DEFAULT NULL,
  tipo varchar(45) DEFAULT NULL,
  reportes_fk int);