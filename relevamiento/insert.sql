insert into area (AreaID,Nombre) values ('100','IT')
insert into area (AreaID,Nombre) values ('200','Comercial')
insert into area (AreaID,Nombre) values ('300','Tecnico')

insert into destino (DestinoID,Nombre) values ('1001','La Paz')
insert into destino (DestinoID,Nombre) values ('1002','Cochabamba')
insert into destino (DestinoID,Nombre) values ('1003','Santa Cruz')
insert into destino (DestinoID,Nombre) values ('1004','Tarija')
insert into destino (DestinoID,Nombre) values ('1005','Sucre')
insert into destino (DestinoID,Nombre) values ('2001','Sao Paulo')
insert into destino (DestinoID,Nombre) values ('2002','Curitiba')
insert into destino (DestinoID,Nombre) values ('3001','Buenos Aires')
insert into destino (DestinoID,Nombre) values ('4001','Lima')

insert into estado (estadoID,valor) values (1,'Aprobado')
insert into estado (estadoID,valor) values (2,'Espera Aprobacion')
insert into estado (estadoID,valor) values (3,'Anulado')

insert into estatus_vuelo (estatusID,valor) values (10,'Lista de Espera')
insert into estatus_vuelo (estatusID,valor) values (20,'Confirmado')
insert into estatus_vuelo (estatusID,valor) values (30,'Cancelado')

insert into linea (LineaID,nombre) values ('50','Lloyd Aereo Boliviano')
insert into linea (LineaID,nombre) values ('51','Transporte Aereo Militar')
insert into linea (LineaID,nombre) values ('52','Aerosur')
insert into linea (LineaID,nombre) values ('53','Iberia')

insert into usuario (usuarioID,AreaID,nombre,cuenta,[password],autorizador,perfil) values ('500','100','Omar Mendoza Castro','omar','prueba',1,'Adm')
insert into usuario (usuarioID,AreaID,nombre,cuenta,[password],autorizador,perfil) values ('501','100','Juana Rengel Torrez','jrengel','juana',0,'Restr')
insert into usuario (usuarioID,AreaID,nombre,cuenta,[password],autorizador,perfil) values ('502','200','Miguel Jimenez Doria','miguel','perro',0,'ConsArea')
insert into usuario (usuarioID,AreaID,nombre,cuenta,[password],autorizador,perfil) values ('503','200','Fernando Lima Perez','lima','lima',1,'Adm')
insert into usuario (usuarioID,AreaID,nombre,cuenta,[password],autorizador,perfil) values ('504','300','Juan Lopez Suarez','juan','tecno',0,'ConsArea')

INSERT INTO Vuelo(DestinoID,LineaID,EstadoID,EstatusID,Costo,Viatico,Autorizador,Ext_Int,Observacion,Motivo,Solicitante,Ofi_Pers,Fecha_Creacion,Login_Creacion,Fecha_Viaje_Para,Historico_Si_No)
VALUES ('1004','51',2,10,'150.00','50.00','500',0,'','Vacaciones','504',0,'08/08/2006','504','15/08/2006',0)
GO