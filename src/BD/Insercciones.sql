----------------------- INSERT INTOS ---------------------------------------------
insert into permiso(modulo,descripcion,estado)values('gestionar usuarios','a',true);
insert into permiso(modulo,descripcion,estado)values('gestionar permisos','bs',true);
insert into permiso(modulo,descripcion,estado)values('registrar permisos','c',true);
insert into permiso(modulo,descripcion,estado)values('listar personal','d',true);
insert into permiso(modulo,descripcion,estado)values('Registrar personal','e',true);

insert into tipo_usuario(descripcion)values('Administrador');
insert into tipo_usuario(descripcion)values('secretaria');
insert into tipo_usuario(descripcion)values('Medico');

insert into asignar_permiso(id_permiso,id_tipousuario,estado)values(4,2,true);
insert into asignar_permiso(id_permiso,id_tipousuario,estado)values(5,2,true);
insert into asignar_permiso(id_permiso,id_tipousuario,estado)values(6,2,true);
insert into asignar_permiso(id_permiso,id_tipousuario,estado)values(7,2,true);
insert into asignar_permiso(id_permiso,id_tipousuario,estado)values(8,2,true);

insert into usuario(dni_p, usuario, contrasenia, id_tipousuario, estado) values('46226948','masipa',md5('123'),41,true);
insert into usuario(dni_p, usuario, contrasenia, id_tipousuario, estado) values('67895645','ctorresnaun',md5('1234'),41,true);

insert into personal(dni_p, nombre, apellido, fecha_nacimiento, telefono, direccion, sexo, estado) values('46226948','naun','correa torres','1980-04-12','454545','piura #123','M',true);
insert into personal(dni_p, nombre, apellido, fecha_nacimiento, telefono, direccion, sexo, estado) values('67895645','max','silva parraguez','1997-10-10','478990','perdidos #567','M',true);
-------------------------------------------------------------------------------------

insert into (id_permiso,id_tipousuario,estado)values(4,2,true);
insert into asignar_permiso(id_permiso,id_tipousuario,estado)values(4,2,true);

select * from tipo_producto;
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Alimento Complementario','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Arena','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Arnés','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bandeja','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bañera','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bebedero','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Blusa','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bolso','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bozal','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Cama','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Camisa','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Camiseta','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Chaleco','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Champú','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Colchoneta','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Colgante','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Collar','');

select * from tipo_producto;
select * from producto;
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'IRC Vet Gel Insuficiencia Renal Crónica', '', 15.8, 2, '2017-08-13' '2018-08-13',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'IRC Vet Insuficiencia Renal Crónica', '', 20, 2, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Vet-Regul Gel', '', 20, 2, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Absorbente Clean Cat Kitten', '', 20, 3, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Arcilla', '', 20, 3, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Baño de Chinchillas', '', 20, 3, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Aviator', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Nylon Antialérgico', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Nylon Antialérgico Pixel', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Nylon Antialérgico VD', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Terapéutico Posterior', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Vaquero para Hurones', '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Higiénica Angular', '', 20, 5, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Higiénica Deluxe', '', 20, 5, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Higiénica Esquinera', '', 20, 5, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Loro Splash,' '', 20, 6, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Pequeña', 'bañera pequeña', 20, 6, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Fuente Drinkwell', '', 20, 7, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Roedores Friskies', '', 20, 7, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Roedores Savic', '', 20, 7, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Fuente, Bomba de Repuesto', '', 20, 7, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Fuente, Kit de Juntas', '', 20, 7, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Tolva Le Bistro', '', 20, 7, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Blusa Britney, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Blusa Play Dog, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bolso de Transporte Lima, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bolso de Transporte Rojo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bolso Vaquero, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bolso-Mantita con Almohada, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Acolchado Safe, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal de Ataque, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Mikki Razas Grandes, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon Antialérgico, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon Antialérgico Pixel, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon Antialérgico VD, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Cama Anti-ácaros, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Cama Filou, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Cama Redonda Pink Fashion, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camisa Hawaiana, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camisa Vaquera, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta "09", '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog Blue, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog con Capucha, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog Huella, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog Orange, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog Pink, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog Red, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Adidog Yellow, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Anais, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Baghira, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Basic Magenta, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Basic Púrpura, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Basic Verde, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Beach Dog, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Bora-Bora, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta con Corazón, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta de Baloncesto SuperBone Azul, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Deportiva Blanca y Roja, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Deportiva Blankiazul, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Deportiva Blankiroja, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Biker Boy, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Blue Jean, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco California Beach, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco de Seguridad Reflectante, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Deportivo Azul, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Deportivo Rosa, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Refrescante Body Cooler, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Salvavidas, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Snow, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Chaleco Snow Big, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Anticaspa con Limón, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Antipicores con Árbol del Té, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Black Out, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Burnished Bronze, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Cat Black Out, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Cat Bright White, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Cat Burnished Bronze, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Dermavet, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Desodorante Hurones, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Dry-Foam, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Dry-Foam, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Eliminador de Olores con Canela, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú en Espuma con Aloe Vera, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú en Polvo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Espuma Seca Repelente para Roedores, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Ferret, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Ferret, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Natural con Biotina, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Natural Repelente con Extracto de Neem, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Nutritivo con Aceite de Oliva, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú para Bañera, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Pelo Blanco, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Pelo Negro, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Protección Solar, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Protein-5, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Refrescante con Menta, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Reparador con Proteínas, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Tea-Tree, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Tearless Puppy, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Texture Plus, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champú Texture Plus, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colchoneta Pet Cargo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colchoneta Ruff Hauz, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colchoneta Vari Kennel, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Flor, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Happy Flower, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Hueso, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Raspa, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Todo Corazón, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Adicional del Cerco para Gatos PetSafe, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Adiestrador Master Plus Pro, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Adiestramiento tipo Halti, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Aboistop, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Bark Control, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Bark Control Deluxe, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Inteligente, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos No Bark Pequeño, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Ultrasónico, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Cromado Eslabón Largo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar de Castigo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar de Corazón, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Dinky Corazón, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Educativo con Telemando, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Educativo Doble Cadena, '', 20, 4, '2017-08-13' '2018-07-12',true);


