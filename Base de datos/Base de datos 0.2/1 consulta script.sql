
select * from reportes
inner join usuarios
on reportes.id_reportes = usuarios.id_usuario;