select usuarios.nombre,usuarios.apellido,usuarios.rol,
reportes.descripcion,reportes.fecha
from usuarios
right join reportes
on usuarios.id_usuario = reportes.id_reportes

