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
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Arn??s','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bandeja','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Ba??era','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bebedero','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Blusa','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bolso','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Bozal','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Cama','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Camisa','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Camiseta','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Chaleco','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Champ??','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Colchoneta','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Colgante','');
insert into tipo_producto(id_tipoproducto, tipo, descripcion) values(default,'Collar','');

select * from tipo_producto;
select * from producto;
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'IRC Vet Gel Insuficiencia Renal Cr??nica', '', 15.8, 2, '2017-08-13' '2018-08-13',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'IRC Vet Insuficiencia Renal Cr??nica', '', 20, 2, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Vet-Regul Gel', '', 20, 2, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Absorbente Clean Cat Kitten', '', 20, 3, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Arcilla', '', 20, 3, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Ba??o de Chinchillas', '', 20, 3, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Aviator', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Nylon Antial??rgico', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Nylon Antial??rgico Pixel', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Nylon Antial??rgico VD', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Terap??utico Posterior', '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(default,'Vaquero para Hurones', '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Higi??nica Angular', '', 20, 5, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Higi??nica Deluxe', '', 20, 5, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Higi??nica Esquinera', '', 20, 5, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Loro Splash,' '', 20, 6, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values('Peque??a', 'ba??era peque??a', 20, 6, '2017-08-13' '2018-07-12',true);

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
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon Antial??rgico, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon Antial??rgico Pixel, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Bozal Nylon Antial??rgico VD, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Cama Anti-??caros, '', 20, 4, '2017-08-13' '2018-07-12',true);
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
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Basic P??rpura, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Basic Verde, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Beach Dog, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta Bora-Bora, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Camiseta con Coraz??n, '', 20, 4, '2017-08-13' '2018-07-12',true);
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

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Anticaspa con Lim??n, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Antipicores con ??rbol del T??, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Black Out, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Burnished Bronze, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Cat Black Out, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Cat Bright White, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Cat Burnished Bronze, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Dermavet, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Desodorante Hurones, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Dry-Foam, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Dry-Foam, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Eliminador de Olores con Canela, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? en Espuma con Aloe Vera, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? en Polvo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Espuma Seca Repelente para Roedores, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Ferret, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Ferret, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Natural con Biotina, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Natural Repelente con Extracto de Neem, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Nutritivo con Aceite de Oliva, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? para Ba??era, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Pelo Blanco, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Pelo Negro, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Protecci??n Solar, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Protein-5, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Refrescante con Menta, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Reparador con Prote??nas, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Tea-Tree, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Tearless Puppy, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Texture Plus, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Champ?? Texture Plus, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colchoneta Pet Cargo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colchoneta Ruff Hauz, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colchoneta Vari Kennel, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Flor, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Happy Flower, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Hueso, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Raspa, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Colgante Todo Coraz??n, '', 20, 4, '2017-08-13' '2018-07-12',true);

insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Adicional del Cerco para Gatos PetSafe, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Adiestrador Master Plus Pro, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Adiestramiento tipo Halti, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Aboistop, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Bark Control, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Bark Control Deluxe, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Inteligente, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos No Bark Peque??o, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Antiladridos Ultras??nico, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Cromado Eslab??n Largo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar de Castigo, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar de Coraz??n, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Dinky Coraz??n, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Educativo con Telemando, '', 20, 4, '2017-08-13' '2018-07-12',true);
insert into producto(id_producto, nombre, descripcion, precio_venta, id_tipoproducto, fecha_registro, fecha_vencimiento, estado) values(Collar Educativo Doble Cadena, '', 20, 4, '2017-08-13' '2018-07-12',true);


