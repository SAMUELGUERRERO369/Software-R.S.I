#usuarios

insert into usuarios (id_usuario,Nombre,Apellido,Correo,Telefono,Rol) values (1,"Ernesto","Perez","perezfinal2@gmail.com",38172839183,"Auxiliar de mantenimiento");
insert into usuarios (id_usuario,Nombre,Apellido,Correo,Telefono,Rol) values (2,"Miguel","Yaguara","angeldark@gmail.com",33819384715,"Auxiliar de mantenimiento");
insert into usuarios (id_usuario,Nombre,Apellido,Correo,Telefono,Rol) values (3,"Danna","Mosquera","dannis08@gmail.com",33718391937,"Auxiliar de mantenimiento");
insert into usuarios (id_usuario,Nombre,Apellido,Correo,Telefono,Rol) values (4,"David","Estupiñan","david_free12!@gmail.com",3371928371,"Auxiliar de mantenimiento");

#reportes

insert into reportes (id_reportes,Descripción,Torre,Apartamento,Fecha,fk_usuarios) values (100,"se necesita reparacion de una tuberia",12,500,'24-1-23',1);
insert into reportes (id_reportes,Descripción,Torre,Apartamento,Fecha,fk_usuarios) values (101,"se necesita pintar una pared cerca de un apartamento",2,200,'24-2-25',2);
insert into reportes (id_reportes,Descripción,Torre,Apartamento,Fecha,fk_usuarios) values (102,"se necesita hacer mantenimiento a los baños de los residentes",4,250,'24-12-20',3);
insert into reportes (id_reportes,Descripción,Torre,Apartamento,Fecha,fk_usuarios) values (103,"se necesita realizar limpieza al píso",3,600,'24-12-21',4);
insert into reportes (id_reportes,Descripción,Torre,Apartamento,Fecha,fk_usuarios) values (104,"se necesita haer reparación a los elevadores",6,300,'24-3-11',5);

#seguimiento

insert into seguimiento(id_seguimiento,fecha,Prioridad,Responsable,Estado,fk_reportes) values (120,'24-2-12',"Alta","Maria","En espera",100);
insert into seguimiento(fecha,Prioridad,Responsable,Estado,fk_reportes) values ('24-12-31',"Baja","Ernesto","En proceso",101);
insert into seguimiento(fecha,Prioridad,Responsable,Estado,fk_reportes) values ('24-3-12',"Media","Miguel","Aprobado",102);
insert into seguimiento(fecha,Prioridad,Responsable,Estado,fk_reportes) values ('24-10-27',"Alta","Danna","Pendiente de asignación",103);
insert into seguimiento(fecha,Prioridad,Responsable,Estado,fk_reportes) values ('24-12-23',"Alta","David","Cancelado",104);

#inventario 

insert into inventario(id_inventario,responsable,producto,descripccion,cantidad,fk_inventario) values (1,"Maria","Caja de herramientas","Posee todo lo necesario para que pueda realizar la reparación",1,100);
insert into inventario(responsable,producto,descripccion,cantidad,fk_inventario) values ("Ernesto","bote de pintura","puede escojer el color que desea pintar al igual utilizarla para dar color a un determinado sitio",2,101);
insert into inventario(responsable,producto,descripccion,cantidad,fk_inventario) values ("Miguel","Caja de herramientas","Posee todo lo necesario para que pueda realizar la reparación",1,102);
insert into inventario(responsable,producto,descripccion,cantidad,fk_inventario) values ("Danna","trapero","util para limpiar pisos para dejarlos limpios",1,103);
insert into inventario(responsable,producto,descripccion,cantidad,fk_inventario) values ("David","Caja de herramientas","Posee todo lo necesario para que pueda realizar la reparación",1,104);