insert into Provincia (Nombre) values ('Buenos Aires');
insert into Provincia (Nombre) values ('CABA');
insert into Provincia (Nombre) values ('Catamarca');
insert into Provincia (Nombre) values ('Chaco');
insert into Provincia (Nombre) values ('Chubut');
insert into Provincia (Nombre) values ('Córdoba');
insert into Provincia (Nombre) values ('Corrientes');
insert into Provincia (Nombre) values ('Entre Ríos');
insert into Provincia (Nombre) values ('Formosa');
insert into Provincia (Nombre) values ('Jujuy');
insert into Provincia (Nombre) values ('La Pampa');
insert into Provincia (Nombre) values ('La Rioja');
insert into Provincia (Nombre) values ('Mendoza');
insert into Provincia (Nombre) values ('Misiones');
insert into Provincia (Nombre) values ('Neuquén');
insert into Provincia (Nombre) values ('Río Negro');
insert into Provincia (Nombre) values ('Salta');
insert into Provincia (Nombre) values ('San Juan');
insert into Provincia (Nombre) values ('San Luis');
insert into Provincia (Nombre) values ('Santa Cruz');
insert into Provincia (Nombre) values ('Santa Fe');
insert into Provincia (Nombre) values ('Santiago del Estero');
insert into Provincia (Nombre) values ('Tierra del Fuego');
insert into Provincia (Nombre) values ('Tucumán');

select * from Provincia;

insert into Tamanio (Nombre) values ('Chico');
insert into Tamanio (Nombre) values ('Mediano');
insert into Tamanio (Nombre) values ('Grande');

select * from Tamanio;

insert into Tipo (Nombre) values ('Perro');
insert into Tipo (Nombre) values ('Gato');
insert into Tipo (Nombre) values ('Ave');
insert into Tipo (Nombre) values ('Conejo');
insert into Tipo (Nombre) values ('Hamster');
insert into Tipo (Nombre) values ('Ratón');
insert into Tipo (Nombre) values ('Tortuga');
insert into Tipo (Nombre) values ('Iguana');
insert into Tipo (Nombre) values ('Cerdo');
insert into Tipo (Nombre) values ('Otro');

select * from Tipo;

insert into Mascota (IdCliente,Nombre,IdTipo,Raza,Edad,IdTamanio,Sexo)
values (1,'Pichichus',1,'Mestizo',10,2,1);

insert into Mascota (IdCliente,Nombre,IdTipo,Raza,Edad,IdTamanio,Sexo)
values (2,'Michufín',2,'Amarillo',5,2,1);

insert into Mascota (IdCliente,Nombre,IdTipo,Raza,Edad,IdTamanio,Sexo)
values (3,'Shuli',4,'MiniRex',3,3,2);

insert into Mascota (IdCliente,Nombre,IdTipo,Raza,Edad,IdTamanio,Sexo)
values (4,'Lola',3,'Loro',5,2,2);

select * from Mascota;

insert into Cliente (Nombre,Apellido,DNI,Domicilio,IdProvincia,Telefono,Email,Estado,FechaCarga,FechaModificacion)
values ('Fabián Norberto','Escobar',39210915,'Riglos 6542',1,1151173500,'fabiannorbertoescobar@outlook.com',1,'20170401','20170401');

insert into Cliente (Nombre,Apellido,DNI,Domicilio,IdProvincia,Telefono,Email,Estado,FechaCarga,FechaModificacion)
values ('Carla','Marrota',36231548,'Monseñor Marcon 1263',2,1568493214,'carlitamarrota@gmail.com',1,'20170401','20170401');

insert into Cliente (Nombre,Apellido,DNI,Domicilio,IdProvincia,Telefono,Email,Estado,FechaCarga,FechaModificacion)
values ('Mateo','Romero',36589478,'Asia',9,1659847142,'romeroromeromateo@outlook.com',2,'20170402','20170402');

insert into Cliente (Nombre,Apellido,DNI,Domicilio,IdProvincia,Telefono,Email,Estado,FechaCarga,FechaModificacion)
values ('Tamara','Giménez',356214895,'Gibraltar 4869',19,1515247836,'latami2365@gmail.com',2,'20170401','20170401');

select * from Cliente;

sp_helpdb VeterinariaPatitas