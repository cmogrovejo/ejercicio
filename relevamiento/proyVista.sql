select v.vueloid,
v.fecha_viaje_para,
v.fecha_creacion,
v.area,
v.historico_si_no,
v.ofi_pers,
v.ext_int,
u.Nombre,
(select y.nombre from vuelo x,usuario y where y.autorizador=1 and x.autorizador=y.usuarioID) as Autorizador,
d.Nombre, 
l.nombre,
e.valor,
s.valor from vuelo v,
destino d,
linea l,
estado e,
estatus_vuelo s,
usuario u where l.lineaID=v.lineaID and
d.destinoID=v.destinoID and
s.estatusID=v.estatusID and
e.estadoID=v.estadoID and
u.UsuarioID=v.solicitante and
u.UsuarioID=v.autorizador 