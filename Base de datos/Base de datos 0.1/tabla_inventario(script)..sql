CREATE TABLE inventario(
   id_inventario INT NOT NULL AUTO_INCREMENT primary key,
   responsable VARCHAR(45) NULL,
   producto VARCHAR(45) NULL,
   descripccion varchar(200) NULL,
   cantidad double NULL,
   tipo varchar (45) null
   );
   