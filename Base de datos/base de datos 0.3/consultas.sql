select * from usuarios
inner join reportes
on usuarios.id_usuario = reportes.fk_usuarios;

select * from reportes 
inner join seguimiento
on reportes.id_reportes = seguimiento.fk_reportes;

select * from inventario
inner join reportes
on inventario.fk_inventario = reportes.id_reportes;

select usuarios.Nombre,usuarios.Apellido,
reportes.Descripción,reportes.Torre,reportes.Fecha
from usuarios
right join reportes
on usuarios.id_usuario = reportes.fk_usuarios;

select reportes.Descripción,reportes.Torre,reportes.Apartamento,
seguimiento.Fecha,seguimiento.Prioridad,seguimiento.responsable
from reportes
right join seguimiento
on reportes.id_reportes = seguimiento.fk_reportes;


