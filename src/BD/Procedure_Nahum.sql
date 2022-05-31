
delete from personal;
/*PERSONAL*/
--ELIMINAR PERSONAL
CREATE OR REPLACE FUNCTION fu_del_personal(_DNI CHARACTER) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
	UPDATE PERSONAL
	SET estado= false
	WHERE dni_p= _DNI;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	RETURN filas_afectadas;
END;$$
 LANGUAGE plpgsql;


-- REGISTRAR PERSONAL
create OR REPLACE FUNCTION fu_add_personal(
	_Tdni_p CHARACTER(8),
	_Tnombre text,
	_Tapellido text,
	_Tfecha date,
	_Ttelefono CHARACTER(9),
	_Tdireccion text,
	_Tsexo CHARACTER(1))returns INTEGER AS $$
DECLARE
dni_obtenida INTEGER;
BEGIN
  dni_obtenida := (select COUNT(dni_p)from personal WHERE dni_p = _Tdni_p);
  IF dni_obtenida <> 1 THEN
      INSERT INTO personal(dni_p, nombre, apellido, fecha_nacimiento, telefono, direccion,sexo, estado)
	    VALUES (_Tdni_p, _Tnombre, _Tapellido, _Tfecha, _Ttelefono, _Tdireccion, _Tsexo, true);
  END IF;
  RETURN dni_obtenida;
END;
$$ LANGUAGE plpgsql;

-- MODIFICAR PERSONAL

CREATE OR REPLACE FUNCTION fu_edit_personal(
	in _Tdni_p CHARACTER(9),
	in _Tnombre text,
	in _Tapellido text,
	in _Tfecha date,
	in _Ttelefono CHARACTER(9),
	in _Tdireccion text,
	in _Tsexo CHARACTER(1)) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
    UPDATE PERSONAL
	  SET	nombre = _Tnombre, apellido = _Tapellido,	fecha_nacimiento = _Tfecha, telefono = _Ttelefono, direccion = _Tdireccion, sexo = _Tsexo
	  WHERE dni_p= _Tdni_p;
    GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	  RETURN filas_afectadas;
END;
$$ LANGUAGE plpgsql;


		/*TABLA USUARIO*/
--REGISTRAR  USUARIO
CREATE OR REPLACE FUNCTION fu_add_usuario(
dni character,
usuario character varying,
pass character varying,
idTipo integer) returns void
as $$
BEGIN
	INSERT INTO usuario(id_usuario,dni_p,usuario,contrasenia,id_tipousuario,estado) VALUES(default,dni,usuario,md5(pass),idtipo,true);
 END;
$$ language plpgsql;


-- LISTAR USUARIOS
CREATE OR REPLACE FUNCTION fu_list_usuarios()
returns Table(id_usuario INTEGER, dni_p CHARACTER, nombre Text,usuario CHARACTER VARYING,contrasenia CHARACTER VARYING,id_tipousuario INTEGER,descripcion CHARACTER VARYING, estado boolean)
AS
$$
BEGIN
	FOR id_usuario, dni_p,nombre,usuario, contrasenia, id_tipousuario, descripcion, estado IN
	    SELECT usu.id_usuario, usu.dni_p, per.nombre, usu.usuario, usu.contrasenia, tipo.id_tipousuario, tipo.descripcion,usu.estado
	    FROM usuario as usu
	    INNER JOIN tipo_usuario as tipo ON tipo.id_tipousuario = usu.id_tipousuario
	    INNER JOIN personal as per ON per.dni_p = usu.dni_p
	    WHERE usu.estado = true and tipo.descripcion <> 'Administrador'
	    LOOP
		RETURN NEXT;
	    END LOOP;
	 RETURN;
 END;
$$ language plpgsql;


-- ELIMINAR USUARIOS
CREATE OR REPLACE FUNCTION fu_del_usuarios(idUsuario integer) returns Integer
as
$$
DECLARE 
filas_afectadas Integer;
BEGIN
	DELETE FROM usuario 
	WHERE id_usuario = idUsuario;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	RETURN filas_afectadas;	
 END;
$$ language plpgsql;


-- EDITAR USUARIOS
CREATE OR REPLACE FUNCTION fu_edit_usuarios(
  idUsuario integer,
  dni character,
  usu character varying,
  pass character varying,
  id_tipousu integer) returns INTEGER as
$$
DECLARE
filas_afectadas INTEGER;
pass_bd character varying;
BEGIN
    pass_bd = (select contrasenia from usuario where id_usuario = idUsuario);
    IF pass_bd = pass THEN
       UPDATE usuario
	     SET dni_p = dni, usuario = usu, contrasenia = pass, id_tipousuario = id_tipousu
	     WHERE id_usuario = idUsuario;
	     GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	     RETURN filas_afectadas;
    ELSE
       UPDATE usuario
	     SET dni_p = dni, usuario = usu, contrasenia = md5(pass), id_tipousuario = id_tipousu
	     WHERE id_usuario = idUsuario;
	     GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	     RETURN filas_afectadas;
    END IF;
END;
$$ language plpgsql;



-- BUSCAR POR DNI
CREATE OR REPLACE FUNCTION fu_search_usu_Dni(dni CHARACTER)
returns Table(id_usuario INTEGER, dni_p CHARACTER, nombre Text,usuario CHARACTER VARYING,contrasenia CHARACTER VARYING,id_tipousuario INTEGER,descripcion CHARACTER VARYING, estado boolean)
AS $$
BEGIN
	FOR id_usuario, dni_p,nombre,usuario, contrasenia, id_tipousuario, descripcion, estado IN
	    SELECT usu.id_usuario, usu.dni_p, per.nombre, usu.usuario, usu.contrasenia, tipo.id_tipousuario, tipo.descripcion,usu.estado
	    FROM usuario as usu
	    INNER JOIN tipo_usuario as tipo ON tipo.id_tipousuario = usu.id_tipousuario
	    INNER JOIN personal as per ON per.dni_p = usu.dni_p
	    WHERE usu.dni_p like concat('%',dni,'%') and usu.estado=true LIMIT 10
	    LOOP
		RETURN NEXT;
	    END LOOP;
	 RETURN;
 END;
$$ language plpgsql;

		/*TABLA TIPO DE USUARIO*/
-- REGISTRAR TIPO DE USUARIO
create or replace function fu_add_tipo_usu(descripcion character varying) returns int
AS $$
DECLARE
	filasAfectadas int;
BEGIN
	INSERT INTO tipo_usuario(id_tipousuario,descripcion)VALUES(default,descripcion);
	GET DIAGNOSTICS filasAfectadas = ROW_COUNT;
	RETURN filasAfectadas;       	
END;
$$ language plpgsql;


-- LISTAR TIPOS DE USUARIOS
CREATE OR REPLACE FUNCTION fu_list_tipo_usuario() returns setof tipo_usuario
as
$$
BEGIN
   return QUERY	select * from tipo_usuario WHERE descripcion <> 'Administrador';
 END;
$$ language plpgsql;

-- ELIMINACION DE TIPO DE USUARIO
CREATE OR REPLACE FUNCTION fu_del_tipo_usu(idtipo integer) RETURNS void AS $$
BEGIN
   UPDATE tipo_usuario
   SET estado = false
   WHERE id_tipousuario = idtipo;
END;
$$ LANGUAGE plpgsql;

-- EDITAR TIPO DE USUARIO
CREATE OR REPLACE FUNCTION fu_edit_tipo_usuario(
idtipusu integer,
descrip character varying) returns void as
$$
BEGIN
	UPDATE tipo_usuario
	SET descripcion = descrip
	WHERE id_tipousuario = idtipusu;
END;
$$ language plpgsql;

-- BUSCAR POR NOMBRE DEL PERMISO
CREATE OR REPLACE FUNCTION fu_search_tipo_nombre(nombre CHARACTER VARYING) returns setof tipo_usuario
as
$$
BEGIN
   return QUERY	select * from tipo_usuario WHERE descripcion ilike concat('%',nombre,'%');
 END;
$$ language plpgsql;



		/*TABLA PERMISOS*/
-- LISTAR PERMISOS DE TIPO DE USUARIO
CREATE OR REPLACE FUNCTION fu_list_permisos_tipo_usu(var_tipo_usuario INTEGER)
returns Table(id_tipousuario INTEGER,id_permiso INTEGER,descripcion CHARACTER VARYING,modulo CHARACTER VARYING,estado BOOLEAN)
AS
$$
BEGIN
	FOR id_tipousuario,id_permiso,descripcion,modulo,estado IN
	    select tipo.id_tipousuario,p.id_permiso,tipo.descripcion,p.modulo,ap.estado
	    from tipo_usuario as tipo
            INNER JOIN asignar_permiso as ap ON ap.id_tipousuario = tipo.id_tipousuario
            INNER JOIN permiso as p ON p.id_permiso = ap.id_permiso
            WHERE tipo.id_tipousuario = var_tipo_usuario
	    LOOP
		RETURN NEXT;
	    END LOOP;
	 RETURN;
 END;
$$ language plpgsql;


-- AGREGAR PERMISOS  A UN TIPO DE USUARIO
CREATE OR REPLACE FUNCTION fu_add_permisos_tipo_usu(ids integer[], idtipo integer) RETURNS void AS $$

DECLARE
   number_strings integer := array_length(ids, 1);
   string_index integer := 1;
BEGIN
   WHILE string_index <= number_strings LOOP
      INSERT INTO asignar_permiso(id_permiso,id_tipousuario,estado) VALUES(ids[string_index],idtipo,true);
      string_index = string_index + 1;
   END LOOP;
END;
$$ LANGUAGE plpgsql;


-- QUITAR PERMISOS A UN TIPO DE USUARIO
CREATE OR REPLACE FUNCTION fu_quitar_permisos_tipo_usu(ids_permisos integer[],idtipo integer) RETURNS void AS $$
DECLARE
   --devuelve la longitud de la dimensión de matriz solicitada
   var_cant_ids integer := array_length(ids_permisos, 1);
   var_index integer := 1;
BEGIN
   WHILE var_index <= var_cant_ids LOOP
      DELETE FROM asignar_permiso
      where id_permiso = ids_permisos[var_index] and id_tipousuario = idtipo;
      var_index = var_index + 1;
   END LOOP;
END;
$$ LANGUAGE plpgsql;
/*---------------------------------------------------------------------------------------------------*/


-- AGREGAR PERMISO
CREATE OR REPLACE FUNCTION fu_add_permiso(
var_modulo character varying,
var_desc character varying) returns INTEGER
as
$$
DECLARE
	filas_afectadas INTEGER;

BEGIN
	INSERT INTO permiso(id_permiso,modulo,descripcion,estado) VALUES(default,var_modulo,var_desc,true);
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	return filas_afectadas;
 END;
$$ language plpgsql;


-- ELIMINAR PERMISO
CREATE OR REPLACE FUNCTION fu_del_permiso(codigo integer) RETURNS INTEGER AS $$

DECLARE
	filas_afectadas INTEGER;
BEGIN
   UPDATE permiso
   SET estado = false
   WHERE id_permiso = codigo;
	 GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	 return filas_afectadas;
END;
$$ LANGUAGE plpgsql;


-- EDITAR PERMISO
CREATE OR REPLACE FUNCTION fu_edit_permiso(
var_codigo integer,
var_modulo character varying,
var_desc character varying) returns INTEGER as
$$
DECLARE
	filas_afectadas INTEGER;
BEGIN
	UPDATE permiso
	SET modulo = var_modulo,descripcion = var_desc
	WHERE id_permiso = var_codigo;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
		return filas_afectadas;
END;
$$ language plpgsql;

-- BUSCAR PERMISO
CREATE OR REPLACE FUNCTION fu_search_permiso_modulo(var_modulo CHARACTER VARYING) returns setof permiso
as
$$
BEGIN
   return QUERY	select * from permiso WHERE modulo ilike concat('%',var_modulo,'%');
 END;
$$ language plpgsql;

-- LISTAR PERMISOS
CREATE OR REPLACE FUNCTION fu_list_permisos() returns setof permiso
as
$$
BEGIN
   return QUERY	select * from permiso WHERE estado = true;
 END;
$$ language plpgsql;



		/* TABLA TIPO DE PRODUCTOS */
-- REGISTRAR TIPO DE PRODUCTO
CREATE OR REPLACE FUNCTION fu_add_tipo_prod(
_tipo text,
_descripcion text
)RETURNS INTEGER as $$
DECLARE
filas_afectadas INTEGER;
BEGIN
	INSERT INTO tipo_producto(id_tipoproducto, tipo, descripcion, estado)VALUES(default,_tipo,_descripcion, true);
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT ;
	RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;

-- LISTAR TIPOS DE PRODUCTOS
CREATE OR REPLACE FUNCTION fu_list_tipo_prod()RETURNS SETOF tipo_producto as $$
BEGIN
	RETURN QUERY select * from tipo_producto WHERE estado = TRUE;
END;
$$LANGUAGE plpgsql;



-- ELIMINAR TIPO DE PRODUCTO
CREATE OR REPLACE FUNCTION fu_del_tipo_prod(_codigo INTEGER)RETURNS INTEGER as $$
DECLARE
filas_afectadas INTEGER;
BEGIN
	UPDATE tipo_producto
	SET estado = false
	WHERE id_tipoproducto = _codigo;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;

-- BUSCAR TIPO DE PRODUCTOS POR TIPO
CREATE OR REPLACE FUNCTION fu_search_tipo_prod(_tipo text)RETURNS SETOF tipo_producto as $$
BEGIN
	RETURN QUERY select * from tipo_producto WHERE estado = TRUE and tipo LIKE concat('%',_tipo,'%');
END;
$$LANGUAGE plpgsql;

-- MODIFICAR TIPO DE PRODUCTO
CREATE OR REPLACE FUNCTION fu_edit_tipo_prod(
_codigo_tipo_prod INTEGER,
_tipo text,
_descripcion text
)RETURNS INTEGER as $$
DECLARE
filas_afectadas INTEGER;
BEGIN
	UPDATE tipo_producto
	SET tipo = _tipo, descripcion = _descripcion
	WHERE id_tipoproducto = _codigo_tipo_prod;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT ;
	RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


		/* TABLA PRODUCTO*/
--Registrar producto
CREATE OR REPLACE FUNCTION fu_add_product(
   _nombre character varying,
   _descripcion character varying,
   _precio_compra double precision,
   _precio_venta double precision,
   _stock INTEGER,
   _igv double precision,
   _id_tipoproducto INTEGER,
   _fecha_vencimiento date) returns INTEGER
as $$
DECLARE
filas_afectadas INTEGER;
var_fecha date;
BEGIN
  var_fecha := (select current_date);
	insert into producto(id_producto, nombre, descripcion, precio_compra, precio_venta, stock, igv, id_tipoproducto, fecha_registro, fecha_vencimiento, estado)
	VALUES (default,_nombre,_descripcion,_precio_compra,_precio_venta,_stock,_igv,_id_tipoproducto,var_fecha,_fecha_vencimiento,true);
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


--Editar producto
CREATE OR REPLACE FUNCTION fu_edit_product(
   _codigo_prod integer,
   _nombre character varying,
   _descripcion character varying,
   _precio_compra double precision,
   _precio_venta double precision,
   _stock INTEGER,
   _igv double precision,
   _id_tipoproducto INTEGER,
   _fecha_vencimiento date) returns INTEGER
as $$
DECLARE
filas_afectadas INTEGER;
var_fecha date;
BEGIN
  var_fecha := (select current_date);
	UPDATE producto
	SET nombre = _nombre, descripcion = _descripcion,precio_compra = _precio_compra,precio_venta = _precio_venta, stock = _stock, igv = _igv, id_tipoproducto = _id_tipoproducto, fecha_registro = var_fecha, fecha_vencimiento = _fecha_vencimiento
	WHERE id_producto = _codigo_prod;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;



-- listar producto
CREATE OR REPLACE FUNCTION fu_list_productos()
RETURNS Table(id_producto integer,nombre character varying,descripcion character varying,precio_compra numeric,precio_venta numeric, stock INTEGER, igv numeric, id_tipoproducto integer,tipo Text,fecha_registro date,fecha_vencimiento date,estado boolean) AS $$
BEGIN
	FOR id_producto, nombre,descripcion, precio_compra, precio_venta,stock,igv,id_tipoproducto, tipo, fecha_registro,fecha_vencimiento,estado IN
	SELECT p.id_producto,	p.nombre,	p.descripcion, p.precio_compra, p.precio_venta, p.stock, p.igv, tp.id_tipoproducto, tp.tipo, p.fecha_registro, p.fecha_vencimiento, p.estado
	FROM producto as p
	INNER JOIN tipo_producto as tp ON tp.id_tipoproducto = p.id_tipoproducto
	WHERE p.estado = true
	LOOP
		RETURN NEXT;
	END LOOP;
END;
$$LANGUAGE plpgsql;


--- eliminar
CREATE OR REPLACE FUNCTION fu_del_producto(codigo integer) returns integer AS $$
DECLARE
	filas_afectadas integer;
BEGIN
	UPDATE producto
	SET estado = false
	WHERE id_producto = codigo;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	return filas_afectadas;
END;
$$ language plpgsql;


--- buscar por nombre
CREATE OR REPLACE FUNCTION fu_search_prod_nombre(_nombre character varying )
RETURNS Table(id_producto integer,nombre character varying,descripcion character varying,precio_compra numeric,precio_venta numeric, stock INTEGER, igv numeric, id_tipoproducto integer,tipo Text,fecha_registro date,fecha_vencimiento date,estado boolean) AS $$
BEGIN
	FOR id_producto, nombre,descripcion, precio_compra, precio_venta,stock,igv,id_tipoproducto, tipo, fecha_registro,fecha_vencimiento,estado IN
	SELECT p.id_producto,	p.nombre,	p.descripcion, p.precio_compra, p.precio_venta, p.stock, p.igv, tp.id_tipoproducto, tp.tipo, p.fecha_registro, p.fecha_vencimiento, p.estado
	FROM producto as p
	INNER JOIN tipo_producto as tp ON tp.id_tipoproducto = p.id_tipoproducto
	WHERE p.estado = true and p.nombre ilike concat('%',_nombre,'%') OR tp.tipo ilike concat('%',_nombre,'%')
	LOOP
		RETURN NEXT;
	END LOOP;
END;
$$LANGUAGE plpgsql;


		/* TABLA PROVEEDOR*/
-- REGISTRAR PROVEEDOR
CREATE OR REPLACE FUNCTION fu_add_proveedor(
  _razon_social text,
  _ruc character,
  _telefono character,
  _direccion text,
  _email character varying) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
  INSERT INTO proveedor(id_prov, razon_social, ruc, telefono, direccion, email, estado) VALUES(default,_razon_social, _ruc, _telefono, _direccion, _email, true);
  GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
  RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


--LISTAR PROVEEDORES
CREATE OR REPLACE FUNCTION fu_list_proveedores() RETURNS setof proveedor AS $$
BEGIN
    RETURN QUERY select * from proveedor WHERE estado = true;
END;
$$LANGUAGE plpgsql;


-- ELIMINAR PROVEEDOR
CREATE OR REPLACE FUNCTION fu_del_proveedor(codigo integer) returns integer AS $$
DECLARE
	filas_afectadas integer;
BEGIN
	UPDATE proveedor
	SET estado = false
	WHERE id_prov = codigo;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	return filas_afectadas;
END;
$$ language plpgsql;


-- EDITAR PROVEEDOR
CREATE OR REPLACE FUNCTION fu_edit_proveedor(
  _codigo INTEGER,
  _razon_social text,
  _ruc character,
  _telefono character,
  _direccion text,
  _email character varying) returns INTEGER
as $$
DECLARE
filas_afectadas INTEGER;
BEGIN
	UPDATE proveedor
	SET razon_social = _razon_social , ruc = _ruc, telefono = _telefono, direccion = _direccion, email = _email
	WHERE id_prov = _codigo;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;

-- BUSCAR PROVEDDOR POR RAZON SOCIAL
CREATE OR REPLACE FUNCTION fu_search_proveedores(rs text) RETURNS setof proveedor AS $$
BEGIN
    RETURN QUERY select * from proveedor WHERE razon_social like concat('%',rs,'%') and estado = true;
END;
$$LANGUAGE plpgsql;



		/*TABLA MASCOTA*/
-- REGISTRO DE MASCOTA
CREATE OR REPLACE FUNCTION fu_add_mascota(
  _nombre_m character varying,
  _dni character,
  _genero character,
  _color character varying,
  _raza character varying,
  _fecha_nacimiento date,
  _tipo_mascota INTEGER)
returns integer AS $$
DECLARE
	filas_afectadas integer;
BEGIN
	INSERT INTO mascota(id_mascota, nombre_m, dni, genero, color, raza, fecha_nacimiento, estado, tipo_mascota)VALUES(default,_nombre_m,_dni,_genero,_color,_raza,_fecha_nacimiento,true,_tipo_mascota);
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	return filas_afectadas;
END;
$$ language plpgsql;


-- LISTAR MASCOTAS
CREATE OR REPLACE FUNCTION fu_list_mascotas()
returns Table(
  id_mascota integer,
  nombre_m character varying,
  dni character,
  nombre text,
  apellidos text,
  genero character,
  color character varying,
  raza character varying,
  fecha_nacimiento date,
  id_tipomascota integer,
  descripcion text,
  estado BOOLEAN) AS $$
BEGIN
	FOR id_mascota, nombre_m, dni, nombre, apellidos, genero, color, raza, fecha_nacimiento, id_tipomascota, descripcion, estado IN
	    SELECT masc.id_mascota, masc.nombre_m, cli.dni, cli.nombre,cli.apellidos, masc.genero, masc.color, masc.raza, masc.fecha_nacimiento, tmasc.id_tipomascota, tmasc.descripcion, masc.estado
	    FROM mascota as masc
	    INNER JOIN tipo_mascota as tmasc ON tmasc.id_tipomascota = masc.tipo_mascota
	    INNER JOIN cliente as cli ON cli.dni = masc.dni
	    WHERE masc.estado = true
	    LOOP
		RETURN NEXT;
	    END LOOP;
	 RETURN;
 END;
$$ language plpgsql;

-- editar
CREATE OR REPLACE FUNCTION fu_edit_mascota(
  _codigo_mascota INTEGER,
  _nombre_m character varying,
  _dni character,
  _genero character,
  _color character varying,
  _raza character varying,
  _fecha_nacimiento date,
  _tipo_mascota INTEGER)
returns integer AS $$
DECLARE
	filas_afectadas integer;
BEGIN
	UPDATE mascota
	SET nombre_m = _nombre_m, dni = _dni, genero = _genero, color = _color, raza = _raza, fecha_nacimiento = _fecha_nacimiento, tipo_mascota = _tipo_mascota
	WHERE id_mascota = _codigo_mascota;
	GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
	return filas_afectadas;
END;
$$ language plpgsql;

--eliminar
CREATE OR REPLACE FUNCTION fu_del_mascota(cod INTEGER) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
    UPDATE mascota
    SET estado = false
    WHERE id_mascota = cod;
    GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
    RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


-- buscar por nombre de mascota
CREATE OR REPLACE FUNCTION fu_search_mascotas(nombre_mas character varying)
returns Table(
  id_mascota integer,
  nombre_m character varying,
  dni character,
  nombre text,
  apellidos text,
  genero character,
  color character varying,
  raza character varying,
  fecha_nacimiento date,
  id_tipomascota integer,
  descripcion text,
  estado BOOLEAN) AS $$
BEGIN
	FOR id_mascota, nombre_m, dni, nombre, apellidos, genero, color, raza, fecha_nacimiento, id_tipomascota, descripcion, estado IN
	    SELECT masc.id_mascota, masc.nombre_m, cli.dni, cli.nombre, cli.apellidos, masc.genero, masc.color, masc.raza, masc.fecha_nacimiento, tmasc.id_tipomascota, tmasc.descripcion, masc.estado
	    FROM mascota as masc
	    INNER JOIN tipo_mascota as tmasc ON tmasc.id_tipomascota = masc.tipo_mascota
	    INNER JOIN cliente as cli ON cli.dni = masc.dni
	    WHERE masc.estado = true and masc.nombre_m LIKE concat('%',nombre_mas,'%')
	    LOOP
		    RETURN NEXT;
	    END LOOP;
	 RETURN;
 END;
$$ language plpgsql;



		/*TIPO DE MASCOTA */
--registrar mascota
CREATE OR REPLACE FUNCTION fu_add_tipo_mascota(_descripcion text) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
    INSERT INTO tipo_mascota(id_tipomascota, descripcion)VALUES(default,_descripcion);
    GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
    RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


--listar mascotas
CREATE OR REPLACE FUNCTION fu_list_tipo_mascota() RETURNS setof tipo_mascota AS $$
BEGIN
    RETURN QUERY select * from tipo_mascota;
END;
$$LANGUAGE plpgsql;

--eliminar
CREATE OR REPLACE FUNCTION fu_del_tipo_mascota(cod INTEGER) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
   DELETE FROM tipo_mascota
   WHERE id_tipomascota = cod;
   GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
   RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;

--editar
CREATE OR REPLACE FUNCTION fu_edit_tipo_mascota(_codigo INTEGER, _descripcion text) RETURNS INTEGER AS $$
DECLARE
  filas_afectadas INTEGER;
BEGIN
   UPDATE tipo_mascota
   SET descripcion = _descripcion
   WHERE id_tipomascota = _codigo;
   GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
   RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;

--buscar
CREATE OR REPLACE FUNCTION fu_search_tipo_mascota(descrip text) RETURNS SETOF tipo_mascota AS $$
BEGIN
    RETURN QUERY select * from tipo_mascota WHERE descripcion LIKE concat('%',descrip,'%');
END;
$$LANGUAGE plpgsql;


/*COMPRA*/
--REGISTRAR COMPRA
CREATE OR REPLACE FUNCTION fu_add_compra(
  _cod_prov integer,
  _cod_usuario integer,
  _fecha_entr date,
  _total double precision,
  _tipo_doc character varying,
   lista_prod integer[],
   lista_cantidades integer[],
   lista_precios double precision[]) RETURNS INTEGER AS $$

DECLARE
   tamano integer := array_length(lista_prod, 1);
   index integer := 1;
   cod_compra INTEGER;
BEGIN
    insert into compra(id_comp, id_prov, id_usuario, fecha_entr, total, tipo_doc, estado)
    VALUES(default,_cod_prov,_cod_usuario,_fecha_entr,_total,_tipo_doc,true);
    cod_compra := (select MAX(id_comp) from compra);

   WHILE index <= tamano LOOP
      INSERT INTO detalle_pedido(id_depedi,id_compr,id_producto,cantidad,precio_compra) VALUES(default,cod_compra,lista_prod[index],lista_cantidades[index], lista_precios[index]);
      UPDATE producto
      SET stock = (stock + lista_cantidades[index])
      WHERE id_producto = lista_prod[index];
      index = index + 1;
   END LOOP;
   RETURN cod_compra;
END;
$$ LANGUAGE plpgsql;
select fu_add_compra(2,2,'2018-09-12',300,'5656565656','{6}','{15}','{100}');


--LISTA DE PRODUCTOS CON MENOR STOCK
CREATE OR REPLACE FUNCTION fu_list_productos_stock()
RETURNS Table(id_producto integer,nombre character varying,descripcion character varying,precio_compra numeric,precio_venta numeric, stock INTEGER, igv numeric, id_tipoproducto integer,tipo Text,fecha_registro date,fecha_vencimiento date,estado boolean) AS $$
BEGIN
	FOR id_producto, nombre,descripcion, precio_compra, precio_venta,stock,igv,id_tipoproducto, tipo, fecha_registro,fecha_vencimiento,estado IN
	SELECT p.id_producto,	p.nombre,	p.descripcion, p.precio_compra, p.precio_venta, p.stock, p.igv, tp.id_tipoproducto, tp.tipo, p.fecha_registro, p.fecha_vencimiento, p.estado
	FROM producto as p
	INNER JOIN tipo_producto as tp ON tp.id_tipoproducto = p.id_tipoproducto
	WHERE p.estado = true and p.stock < 18
	LOOP
		RETURN NEXT;
	END LOOP;
END;
$$LANGUAGE plpgsql;


--LISTAR COMPRAS
CREATE OR REPLACE FUNCTION fu_list_compras()
RETURNS Table(id_comp integer,
              usuario character varying,
              nombre text,
              apellido text,
              total NUMERIC,
              razon_social text,
              ruc character,
              fecha_entr date,
              estado BOOLEAN) AS $$
BEGIN
	FOR id_comp, usuario,nombre,apellido, total,razon_social,ruc,fecha_entr,estado IN
	SELECT
  cp.id_comp,
  u.usuario,
  p3.nombre,
  p3.apellido,
  cp.total,
  p2.razon_social,
  p2.ruc,
  cp.fecha_entr,
  cp.estado
  from compra as cp
  INNER  join proveedor p2 ON cp.id_prov = p2.id_prov
  inner JOIN usuario u ON cp.id_usuario = u.id_usuario
  inner join personal p3 ON u.dni_p = p3.dni_p
  WHERE cp.estado = TRUE
	LOOP
		RETURN NEXT;
	END LOOP;
END;
$$LANGUAGE plpgsql;


-- LISTAR LAS COMPRAS POR USUARIO (REPORTE)
CREATE OR REPLACE FUNCTION fu_list_compras_codigo(cod INTEGER)
RETURNS Table(id_comp integer,
              usuario character varying,
              nombre text,
              apellido text,
              id_producto INTEGER,
              producto character varying,
              precio_compra numeric,
              igv numeric,
              cantidad INTEGER,
              total NUMERIC,
              razon_social text,
              ruc character,
              fecha_entr date) AS $$
BEGIN
	FOR id_comp, usuario,nombre,apellido, id_producto, producto,precio_compra, igv,cantidad, total,razon_social,ruc,fecha_entr IN
	SELECT
  cp.id_comp,
  u.usuario,
  p3.nombre,
  p3.apellido,
  dp.id_producto,
  p.nombre as producto,
  dp.precio_compra,
  p.igv,
  dp.cantidad,
  cp.total,
  p2.razon_social,
  p2.ruc,
  cp.fecha_entr
  from compra as cp
  inner join detalle_pedido dp ON cp.id_comp = dp.id_compr
  inner join producto p ON dp.id_producto = p.id_producto
  INNER  join proveedor p2 ON cp.id_prov = p2.id_prov
  inner JOIN usuario u ON cp.id_usuario = u.id_usuario
  inner join personal p3 ON u.dni_p = p3.dni_p
  WHERE cp.estado = TRUE and cp.id_comp = cod
	LOOP
		RETURN NEXT;
	END LOOP;
END;
$$LANGUAGE plpgsql;


--BUSCAR por razon social, apellidos y usuario
CREATE OR REPLACE FUNCTION fu_search_compras(cadena text)
RETURNS Table(id_comp integer,
              usuario character varying,
              nombre text,
              apellido text,
              total NUMERIC,
              razon_social text,
              ruc character,
              fecha_entr date,
              estado BOOLEAN) AS $$
BEGIN
	FOR id_comp, usuario,nombre,apellido, total,razon_social,ruc,fecha_entr,estado IN
	SELECT
  cp.id_comp,
  u.usuario,
  p3.nombre,
  p3.apellido,
  cp.total,
  p2.razon_social,
  p2.ruc,
  cp.fecha_entr,
  cp.estado
  from compra as cp
  INNER  join proveedor p2 ON cp.id_prov = p2.id_prov
  inner JOIN usuario u ON cp.id_usuario = u.id_usuario
  inner join personal p3 ON u.dni_p = p3.dni_p
  WHERE cp.estado = TRUE and u.usuario LIKE CONCAT('%',cadena,'%') OR p3.apellido LIKE CONCAT('%',cadena,'%') OR p2.razon_social LIKE CONCAT('%',cadena,'%')
	LOOP
		RETURN NEXT;
	END LOOP;
END;
$$LANGUAGE plpgsql;
select * from fu_search_compras('negocios juan');

-- cancelar compras
create or replace function fu_del_compras(cod_compra integer) returns integer as $$
DECLARE
 cod_prod integer[]:=(SELECT ARRAY(select id_producto from detalle_pedido where id_compr = cod_compra));
 cant_prod integer[]:=(SELECT ARRAY(select cantidad from detalle_pedido where id_compr = cod_compra));
 tamano integer := array_length(cod_prod, 1);
 index integer := 1;
 filas_afectadas integer;
BEGIN
    WHILE index <= tamano LOOP
      UPDATE producto
      SET stock = (stock - cant_prod[index])
      WHERE id_producto = cod_prod[index];
      index = index + 1;
   END LOOP;
   UPDATE compra
   SET estado = false
   WHERE id_comp = cod_compra;
   GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
   RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


select * from detalle_pedido;

/*CONSULTAS*/
--REGISTRAR
CREATE OR REPLACE FUNCTION fu_add_consulta(
  _id_mascota integer,
  _motivo text,
  _sintomas text,
  _usuario character varying) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
var_fecha date;
var_hora TIME;
BEGIN
  var_fecha := (select current_date);
  var_hora := (select current_time AT TIME ZONE 'PET');
  INSERT INTO consulta(id_consulta, id_mascota, motivo, sintomas, hora, fecha, usuario, estado)
  VALUES(default,_id_mascota,_motivo,_sintomas,var_hora,var_fecha,_usuario,true);
  GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
  RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


--listar consultas
CREATE OR REPLACE FUNCTION fu_list_consultas()
returns TABLE (id_consulta integer, id_mascota integer,nombre_m character varying,motivo text,sintomas text,hora time,fecha date ,usuario character varying)
as $$
BEGIN
   FOR id_consulta,id_mascota,nombre_m,motivo,sintomas,hora,fecha,usuario IN
   select
    c2.id_consulta,
    m.id_mascota,
    m.nombre_m,
    c2.motivo,
    c2.sintomas,
    c2.hora,
    c2.fecha,
    c2.usuario
   from consulta as c2
   INNER JOIN mascota m ON c2.id_mascota = m.id_mascota
   WHERE c2.estado = true
   LOOP
		RETURN NEXT;
	 END LOOP;
END;
$$ language plpgsql;


---ELIMINAR
CREATE OR REPLACE FUNCTION fu_del_consulta(cod INTEGER) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
BEGIN
   UPDATE consulta
   SET estado = false
   WHERE id_consulta = cod;
   GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
   RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;


-- MODIFICAR
CREATE OR REPLACE FUNCTION fu_edit_consulta(
  _id_consulta integer,
  _id_mascota integer,
  _motivo text,
  _sintomas text,
  _usuario character varying) RETURNS INTEGER AS $$
DECLARE
filas_afectadas INTEGER;
var_fecha date;
var_hora TIME;
BEGIN
  var_fecha := (select current_date);
  var_hora := (select current_time AT TIME ZONE 'PET');
  UPDATE consulta
  SET id_mascota = _id_mascota, motivo = _motivo, sintomas = _sintomas, hora = var_hora, fecha = var_fecha, usuario = _usuario
  WHERE id_consulta = _id_consulta;
  GET DIAGNOSTICS filas_afectadas = ROW_COUNT;
  RETURN filas_afectadas;
END;
$$LANGUAGE plpgsql;

-- buscar especialista
CREATE OR REPLACE FUNCTION fu_search_especialista(cod_usu INTEGER)
RETURNS Table(nombre text,
              apellido text) AS $$
BEGIN
  FOR nombre, apellido IN
    select p.nombre, p.apellido from usuario as usu
    INNER join personal p ON usu.dni_p = p.dni_p
    WHERE usu.id_usuario = cod_usu
  LOOP
		RETURN NEXT;
	END LOOP;
END;
$$ LANGUAGE plpgsql;


-- buscar por nombre de la mascota
CREATE OR REPLACE FUNCTION fu_search_consultas(cadena text)
returns TABLE (id_consulta integer, id_mascota integer,nombre_m character varying,motivo text,sintomas text,hora time,fecha date ,usuario character varying)
as $$
BEGIN
   FOR id_consulta,id_mascota,nombre_m,motivo,sintomas,hora,fecha,usuario IN
   select
    c2.id_consulta,
    m.id_mascota,
    m.nombre_m,
    c2.motivo,
    c2.sintomas,
    c2.hora,
    c2.fecha,
    c2.usuario
   from consulta as c2
   INNER JOIN mascota m ON c2.id_mascota = m.id_mascota
   WHERE c2.estado = true and m.nombre_m ilike concat('%',cadena,'%')
   LOOP
		RETURN NEXT;
	 END LOOP;
END;
$$ language plpgsql;